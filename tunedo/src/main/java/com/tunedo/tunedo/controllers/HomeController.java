package com.tunedo.tunedo.controllers;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.services.TaskService;
import com.tunedo.tunedo.services.UserService;

@Controller
@RequestMapping("/home")
public class HomeController {
    //private final TaskService taskService;
    private final UserService userService;

    /* public HomeController(TaskService taskService, UserService userService) {
        this.taskService = taskService;
        this.userService = userService;
    } */
    public HomeController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("")
    public String home(
        Principal principal,
        Model model
    ) {
        User user =userService.findByEmail(principal.getName());
        model.addAttribute("user", user);
        //model.addAttribute("tasks", taskService.findByUser(user));
        return "home.jsp";
    }
    
}
