package com.tunedo.tunedo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.services.UserService;
import com.tunedo.tunedo.validators.UserValidator;

import jakarta.validation.Valid;

@Controller
@RequestMapping("")
public class UserController {
    private final UserService userService;
    private final UserValidator userValidator;

    public UserController(UserService userService, UserValidator userValidator) {
        this.userService = userService;
        this.userValidator = userValidator;
    }

    @InitBinder
    private void initBinder(WebDataBinder webDataBinder) {
    webDataBinder.addValidators(userValidator);
    }
    
    @GetMapping("")
    public String login(
        @ModelAttribute("user") User user,
        @RequestParam(value="error", required=false) String error,
        @RequestParam(value="logout", required=false) String logout,
        Model model
    ) {
        if(error != null) {
            model.addAttribute("errorMessage", "Usuario o contraseña incorrectos.");
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Terminaste la sesión");
        }
        return "login.jsp";
    }

    @PostMapping("/new")
    public String save(
        @Valid @ModelAttribute("user") User user,
        BindingResult result
    ) {
        if (result.hasErrors()) {
            return "login.jsp";
        }
        userService.save(user);
        return "redirect:/home";
    }
}
