package com.tunedo.tunedo.controllers;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.models.dto.TaskUpdateDTO;
import com.tunedo.tunedo.models.enums.Type;
import com.tunedo.tunedo.services.TaskService;
import com.tunedo.tunedo.services.UserService;

@Controller
@RequestMapping("/home")
public class HomeController {
    private final UserService userService;
    private final TaskService taskService;
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private ObjectMapper objectMapper;

    public HomeController(TaskService taskService,UserService userService) {
        this.userService = userService;
        this.taskService = taskService;
    }

    @GetMapping("")
    public String home(
        Principal principal,
        Model model
    ) {
        User user =userService.findByEmail(principal.getName());
        List<Task> tasks = taskService.findByUserOrdered(user);
        Map<Type, List<Task>> tasksByType =taskService.rearrangeTasks(tasks);
        Map<String, List<TaskUpdateDTO>> simplifiedTasksByType = new HashMap<>();
        model.addAttribute("user", user);
        model.addAttribute("types", Type.values());
        model.addAttribute("tasksByType", tasksByType);
        serializeTasksToJson(model,simplifiedTasksByType, tasksByType);
        return "home.jsp";
    }
    
    private void serializeTasksToJson(Model model,Map<String, List<TaskUpdateDTO>> simplifiedTasksByType,Map<Type, List<Task>> tasksByType){
        for (Map.Entry<Type, List<Task>> entry : tasksByType.entrySet()) {
            List<TaskUpdateDTO> simplifiedTasks = entry.getValue().stream()
                .map(task -> new TaskUpdateDTO(task.getId(), task.getPosition()))
                .collect(Collectors.toList());
            simplifiedTasksByType.put(entry.getKey().name(), simplifiedTasks);
        }
        try {
            String tasksJson = objectMapper.writeValueAsString(simplifiedTasksByType);
            model.addAttribute("tasksJson", tasksJson);
        } catch (JsonProcessingException e) {
            logger.error("Error serializing simplifiedTasksByType to JSON", e);
        }
    }
}
