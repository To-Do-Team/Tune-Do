package com.tunedo.tunedo.controllers;

import java.security.Principal;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.User;
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
        return "newTask.jsp";
    }
    
    @PostMapping("/new")
    public String saveTaskString(
        @Valid @ModelAttribute("task") Task task,
        BindingResult result,
        Principal principal,
        Model model,
        @RequestParam("dueDateString") @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm") LocalDateTime dueDateLocal,
        @RequestParam("category") Long categoryId
    ) {
        if(result.hasErrors()){
            model.addAttribute("types", Type.values());
            model.addAttribute("statuses", Status.values());
            model.addAttribute("categories", categoryService.findAll());
            return "newTask.jsp";
        }
        if(categoryId!=null){
            task.setCategories(categoryService.addAnotherCategory(categoryId, task));
        }
        if(dueDateLocal!=null){
            task.setDeadline(dueDateLocal.atZone(ZoneId.systemDefault()).toInstant());
        }
        User user = userService.findByEmail(principal.getName());
        List<Task> lastTask = taskService.findByUserAndType(user, task.getType());
        task.setUser(user);
        if(lastTask.size()==0){
            task.setPosition(65536.0);
        }else{
            task.setPosition(lastTask.getLast().getPosition()+65536.0);
        }
        taskService.save(task);        
        return "redirect:/home";
    }
    
    
}
