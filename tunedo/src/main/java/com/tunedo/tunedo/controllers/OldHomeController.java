package com.tunedo.tunedo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tunedo.tunedo.models.enums.Type;
import com.tunedo.tunedo.services.TaskService;



@Controller
public class OldHomeController {

    private final TaskService taskService;
    
    public OldHomeController(TaskService taskService) {
        this.taskService = taskService;
    }

    @GetMapping("/oldhome")
    public String home(
        Model model
    ) {
        //Type n = Type.UI;
        //taskService.findAllByUser(User user);
        //System.out.println(Type.valueOf(n.toString()));
        model.addAttribute("types", Type.values());
        //model.addAttribute("tasks", tasks)
        return "home.jsp";
    }

    @PostMapping("/oldhome")
    public String postMethodName(
        @RequestParam("tipos") Type tipos
    ) {
        //TODO: process POST request
        System.out.println(tipos);
        return "redirect:/home.jsp";
    }
    
    
}
