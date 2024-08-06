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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.tunedo.tunedo.models.Statistic;
import com.tunedo.tunedo.models.StatisticTask;
import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.models.dto.TaskUpdateDTO;
import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.enums.Type;
import com.tunedo.tunedo.services.StatisticsService;
import com.tunedo.tunedo.services.TaskService;
import com.tunedo.tunedo.services.UserService;


@Controller
@RequestMapping("/home")
public class HomeController {
    private final UserService userService;
    private final TaskService taskService;
    private final StatisticsService statisticsService;
    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private ObjectMapper objectMapper;

    public HomeController(TaskService taskService,UserService userService,StatisticsService statisticsService) {
        this.userService = userService;
        this.taskService = taskService;
        this.statisticsService=statisticsService;
    }

    @GetMapping("")
    public String home(
        Principal principal,
        Model model
    ) {
        User user =userService.findByEmail(principal.getName());
        List<Task> tasks = taskService.findByUserOrdered(user);
        List<Map<Type, List<Task>>> separated =taskService.rearrangeTasks(tasks);
        Map<Type, List<Task>> tasksByType =separated.get(0);
        Map<Type, List<Task>> merged = new HashMap<>() ;
        Map<String, List<TaskUpdateDTO>> simplifiedTasksByType = new HashMap<>();
        model.addAttribute("user", user);
        model.addAttribute("types", Type.values());
        model.addAttribute("statuses", Status.values());
        model.addAttribute("tasksByType", tasksByType);
        model.addAttribute("donesOnly", separated.get(1));
        merged.putAll(tasksByType);
        merged.putAll(separated.get(1));
        serializeTasksToJson(model,simplifiedTasksByType, merged);
        return "home.jsp";
    }
    
    private void serializeTasksToJson(Model model,Map<String, List<TaskUpdateDTO>> simplifiedTasksByType,Map<Type, List<Task>> tasksByType){
        for (Map.Entry<Type, List<Task>> entry : tasksByType.entrySet()) {
            List<TaskUpdateDTO> simplifiedTasks = entry.getValue().stream()
                .map(task -> new TaskUpdateDTO(task.getId(),task.getTitle(), task.getPosition(),task.getStatus()))
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

    @GetMapping("/pricing")
    public String pricingView() {
        return "pricing.jsp";
    }

    @PostMapping("/generate-statistics")
    public String generateStatistics(Principal principal) {
        User user = userService.findByEmail(principal.getName());
        statisticsService.generateStatistics(user);
        return "redirect:/home";
    }

    /* @GetMapping("/statistics")
    public String allaaaStatistics(Model model, Principal principal) {
        User user = userService.findByEmail(principal.getName());
        statisticsService.generateStatistics(user);
        Statistic latestStatistic = statisticsService.getLatestStatisticForUser(user);
        if (latestStatistic != null) {
            Map<String, List<Task>> tasksByStatus = statisticsService.getTasksForStatistics(user, latestStatistic.getCreatedAt());
            
            model.addAttribute("doneTasks", tasksByStatus.get("DONE"));
            model.addAttribute("doingTasks", tasksByStatus.get("DOING"));
            model.addAttribute("todoTasks", tasksByStatus.get("TODO"));
        }
        
        return "statistics.jsp";
    } */
    @GetMapping("/statistics")
    public String allStatistics(Model model, Principal principal) {
        User user = userService.findByEmail(principal.getName());
        List<Statistic> userStatistics = statisticsService.allStatistics(user);
        if (userStatistics.size()>0) {
            model.addAttribute("statistics", userStatistics);
        }
        return "statistics.jsp";
    }
    @GetMapping("/statistics/{id}")
    public String viewStatistics(
        Model model,
        Principal principal,
        @PathVariable("id")Long id
        ) {
        User user = userService.findByEmail(principal.getName());
        //statisticsService.generateStatistics(user);
        //Statistic latestStatistic = statisticsService.getLatestStatisticForUser(user);
        Statistic statistic = statisticsService.findByIdAndUser(id,user);
        if (statistic != null) {
            Map<String, List<StatisticTask>> tasksByStatus = statisticsService.getTasksForStatistics(statistic, statistic.getCreatedAt());
            
            model.addAttribute("doneTasks", tasksByStatus.get("DONE"));
            model.addAttribute("doingTasks", tasksByStatus.get("DOING"));
            model.addAttribute("todoTasks", tasksByStatus.get("TODO"));
        }
        
        return "viewStatistics.jsp";
    }
    
}
