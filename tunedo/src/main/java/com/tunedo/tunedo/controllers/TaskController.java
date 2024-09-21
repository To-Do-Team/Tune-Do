package com.tunedo.tunedo.controllers;

import java.security.Principal;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.models.enums.DueReminderOptions;
import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.enums.Type;
import com.tunedo.tunedo.services.CategoryService;
import com.tunedo.tunedo.services.TaskService;
import com.tunedo.tunedo.services.UserService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/tasks")
public class TaskController {
    private final UserService userService;
    private final TaskService taskService;
    private final CategoryService categoryService;

    public TaskController(CategoryService categoryService, TaskService taskService, UserService userService) {
        this.categoryService= categoryService;
        this.userService = userService;
        this.taskService = taskService;
    }

    @GetMapping("/new")
    public String newTaskString(
        @ModelAttribute("task") Task task,
        Model model
    ) {
        model.addAttribute("types", Type.values());
        model.addAttribute("statuses", Status.values());
        model.addAttribute("categories", categoryService.findAll());
        model.addAttribute("reminderOptions", DueReminderOptions.values());
        return "newTask.jsp";
    }
    
    @PostMapping("/new")
    public String saveTaskString(
        @Valid @ModelAttribute("task") Task task,
        BindingResult result,
        Principal principal,
        Model model,
        @RequestParam(value="dueDateString", required=false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDateTime dueDateLocal,
        @RequestParam(value="timeLocal", required=false) @DateTimeFormat(pattern = "HH:mm") LocalTime timeLocal,
        @RequestParam("categoryIds") List<Long> categoryIds
    ) {
        if(result.hasErrors()){
            model.addAttribute("types", Type.values());
            model.addAttribute("statuses", Status.values());
            model.addAttribute("categories", categoryService.findAll());
            model.addAttribute("reminderOptions", DueReminderOptions.values());
            return "newTask.jsp";
        }
        if(categoryIds != null && !categoryIds.isEmpty()){
            task.setCategories(categoryService.addAnotherCategory(categoryIds, task));
        }
        if(dueDateLocal!=null && timeLocal != null){
            LocalDateTime combinedDateTime = dueDateLocal.with(timeLocal);
            task.setDeadline(combinedDateTime.atZone(ZoneId.systemDefault()).toInstant());
        }
        User user = userService.findByEmail(principal.getName());
        List<Task> lastTask = taskService.findByUserAndType(user, task.getType());
        task.setUser(user);
        if(lastTask.size()==0){
            task.setPosition(65536.0);
        }else{
            task.setPosition(lastTask.getLast().getPosition()+65536.0);
        }
        task.setReminded(false);
        taskService.save(task);        
        return "redirect:/home";
    }

    @GetMapping("/{id}/editing")
    public String editTask(
        Principal principal,
        Model model,
        @PathVariable("id") Long id,
        @ModelAttribute("task") Task task
        ) {
            model.addAttribute("types", Type.values());
            model.addAttribute("statuses", Status.values());
            model.addAttribute("categories", categoryService.findAll());
            model.addAttribute("reminderOptions", DueReminderOptions.values());
            User user = userService.findByEmail(principal.getName());
            task = taskService.findByUserAndId(user, id);
            if(task==null){
                return "return:/home";
            }
            model.addAttribute("task", task);
            return "editTask.jsp";
    }
    
    @PostMapping("/{id}/editing")
    public String saveEdit(
        @PathVariable("id") Long id,
        @Valid @ModelAttribute("task") Task task,
        Model model,
        BindingResult result,
        @RequestParam(value="dueDateString", required=false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) LocalDateTime dueDateLocal,
        @RequestParam(value="timeLocal", required=false) @DateTimeFormat(pattern = "HH:mm") LocalTime timeLocal,
        @RequestParam(value="categoryIds",required=false) List<Long> categoryIds
        ) {
        if(result.hasErrors()){
            model.addAttribute("types", Type.values());
            model.addAttribute("statuses", Status.values());
            model.addAttribute("categories", categoryService.findAll());
            model.addAttribute("reminderOptions", DueReminderOptions.values());
            return "editTask.jsp";
        }
        if(categoryIds != null && !categoryIds.isEmpty()){
            task.setCategories(categoryService.addAnotherCategory(categoryIds, task));
        }
        if(dueDateLocal!=null && timeLocal != null){
            LocalDateTime combinedDateTime = dueDateLocal.with(timeLocal);
            task.setDeadline(combinedDateTime.atZone(ZoneId.systemDefault()).toInstant());
        }
        Task oldTask = taskService.findById(id);
        taskService.update(oldTask,task);
        taskService.save(oldTask);
        return "redirect:/home";
    }
}