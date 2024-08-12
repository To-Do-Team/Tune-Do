package com.tunedo.tunedo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/")
public class LandingController {
    @GetMapping("")
    public String landing() {
        return "landing.jsp";
    }
    @GetMapping("about")
    public String about() {
        return "about.jsp";
    }
}
