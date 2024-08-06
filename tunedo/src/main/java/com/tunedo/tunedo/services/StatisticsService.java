package com.tunedo.tunedo.services;

import java.time.Instant;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.Statistic;
import com.tunedo.tunedo.models.StatisticTask;
import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.repositories.StatisticsRepository;

@Service
public class StatisticsService extends BaseService<Statistic>{
    private final StatisticsRepository repository;
    private final TaskService taskService;
    private final DateTimeFormatter formatter;

    public StatisticsService(StatisticsRepository repository,TaskService taskService) {
        super(repository);
        this.repository = repository;
        this.taskService=taskService;
        this.formatter=DateTimeFormatter.ofPattern("d 'de' MMMM 'de' yyyy 'a las' h:mm a")
        .withLocale(Locale.forLanguageTag("es-Es"))
        .withZone(ZoneId.systemDefault());
    }

    public List<Statistic> allStatistics(User user){
        return repository.findByUser(user);
    }

    public Map<String, List<Task>> getTasksForStatistics(User user, Instant statisticCreationTime) {
        List<Task> allTasks = taskService.findByUserAndCreatedAtBefore(user, statisticCreationTime);
        
        Map<String, List<Task>> tasksByStatus = new HashMap<>();
        tasksByStatus.put("DONE", allTasks.stream().filter(t -> t.getStatus() == Status.Done).collect(Collectors.toList()));
        tasksByStatus.put("DOING", allTasks.stream().filter(t -> t.getStatus() == Status.Doing).collect(Collectors.toList()));
        tasksByStatus.put("TODO", allTasks.stream().filter(t -> t.getStatus() == Status.ToDo).collect(Collectors.toList()));
        
        return tasksByStatus;
    }

    public Statistic generateStatistics(User user) {
        Statistic statistic = new Statistic();
            statistic.setUser(user);        
            List<Task> userTasks = taskService.findByUser(user);
            for (Task task : userTasks) {
                statistic.getTasks().add(new StatisticTask(task));
            }
            repository.save(statistic);
            String formattedDate =formatter.format(statistic.getCreatedAt());
            statistic.setComentarios("Resumen día "+formattedDate);
            return repository.save(statistic);
    }
    
    public Statistic getLatestStatisticForUser(User user) {
        return repository.findFirstByUserOrderByCreatedAtDesc(user);
    }

    public Statistic findByIdAndUser(Long id, User user) {
        return repository.findByIdAndUser(id,user);
    }

}
