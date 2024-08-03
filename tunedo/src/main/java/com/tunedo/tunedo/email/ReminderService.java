package com.tunedo.tunedo.email;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.List;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.services.TaskService;

@Service
public class ReminderService {
    private final TaskService taskService;
    private final EmailManager emailManager;
    public ReminderService(TaskService taskService, EmailManager emailManager) {
        this.taskService = taskService;
        this.emailManager = emailManager;
    }

    @Transactional
    @Scheduled(fixedRate = 60000)//cada minuto
    public void checkReminders(){
        Instant now = Instant.now();
        Instant checkTime = now.plus(5,ChronoUnit.MINUTES);//if task's deadline is in X minutes
        List<Task> tasks = taskService.findTasksWithRemindersNow(checkTime,now); //checks if tasks ends in X minutes or less and was not reminded before
        for (Task task : tasks) {
            sendReminder(task);
        }
    }

    private void sendReminder(Task task){
        String to = task.getUser().getEmail();
        String subject= "Recordatorio de tarea: "+ task.getTitle();
        String body = "Tu tarea \n\t'"+task.getTitle()+"': \n\t\t'"+task.getDescription()+"'' \nVence pronto.\n\t Tune-Do";
        taskService.reminded(task);
        emailManager.sendEmail(to, subject, body);
    }
}
