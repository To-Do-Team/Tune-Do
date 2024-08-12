package com.tunedo.tunedo.controllers;

import java.security.Principal;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.services.StatisticsService;
import com.tunedo.tunedo.services.UserService;

@RestController
@RequestMapping("/statistics")
public class StatisticController {

    private final UserService userService;
    private final StatisticsService statisticsService;

    public StatisticController(UserService userService, StatisticsService statisticsService) {
        this.userService = userService;
        this.statisticsService = statisticsService;
    }

    @PostMapping("/generate-statistics")
    public ResponseEntity<String> generateStatistics(
        Principal principal
        ) {
        User user = userService.findByEmail(principal.getName());
        statisticsService.generateStatistics(user);
        return ResponseEntity.ok().build();
    }
}
