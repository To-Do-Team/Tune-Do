package com.tunedo.tunedo.services;

import java.time.Instant;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.models.dto.TaskUpdateDTO;
import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.enums.Type;
import com.tunedo.tunedo.repositories.TaskRepository;

@Service
public class TaskService extends BaseService<Task> {

  private final TaskRepository taskRepository;

  private final DateTimeFormatter formatter;

  public TaskService(TaskRepository taskrepository) {
    super(taskrepository);
    this.taskRepository = taskrepository;
    this.formatter=DateTimeFormatter.ofPattern("d 'de' MMMM 'de' yyyy 'a las' h:mm a")
    .withLocale(Locale.forLanguageTag("es-Es"))
    .withZone(ZoneId.systemDefault());
  }

  public List<Task> status(Status status) {
    return taskRepository.findByStatus(status);
  }

  public void reminded(Task task) {
    task.setReminded(true);
    save(task);
  }

  public List<Task> findTasksWithRemindersNow(Instant checkTime, Instant now) {
    return taskRepository
        .findByDeadlineBeforeAndDeadlineAfterAndDueReminderIsNotNullAndDueReminderIsGreaterThanEqualAndRemindedFalse(
            checkTime, now, 0);
  }

  public List<Task> findTaskBefore(Instant instant, Status status) {
    return taskRepository.findByDeadlineLessThanAndStatusNot(instant, status);
  }

  public List<Task> findByUser(User user) {
    return taskRepository.findByUser(user);
  }

  public Task findByUserAndId(User user, Long id) {
    return taskRepository.findByUserAndId(user, id);
  }

  public List<Task> findByUserOrdered(User user) {
    return taskRepository.findByUserOrderByPositionAsc(user);
  }

  public List<Task> findByUserAndType(User user, Type type) {
    return taskRepository.findByUserAndTypeOrderByPositionAsc(user, type);
  }

  public List<Map<Type, List<Task>>> rearrangeTasks(List<Task> tasks) {
    Map<Type, List<Task>> tasksByType = new EnumMap<>(Type.class);
    Map<Type, List<Task>> onlyDones = new EnumMap<>(Type.class);
    List<Map<Type, List<Task>>> returned = new ArrayList<>();
    for (Type type : Type.values()) {
      if(type.name()=="Done"){
        onlyDones.put(type,new ArrayList<>());
      } else{
      tasksByType.put(type, new ArrayList<>());}
      /* tasksByType.put(type, new ArrayList<>()); */
    }
    for (Task task : tasks) {
      if(task.getDeadline()!=null){
        task.setDeadlineFormatted(formatter.format(task.getDeadline()));
      }
      for (Type type : Type.values()) {
        if (task.getType() == type) {
          if(type.name()=="Done"){
            onlyDones.get(type).add(task);
          } else{
            tasksByType.get(type).add(task);
          }
        }
      }
    }
    returned.add(tasksByType);
    returned.add(onlyDones);
    return returned;
  }

  public List<Map<Status, List<Task>>> rearrangeTasksStatus(List<Task> tasks) {
    Map<Status, List<Task>> tasksByStatus = new EnumMap<>(Status.class);
    for (Status status : Status.values()) {
        tasksByStatus.put(status, new ArrayList<>());
    }
    for (Task task : tasks) {
        if (task.getDeadline() != null) {
            task.setDeadlineFormatted(formatter.format(task.getDeadline()));
        }
        Status status = task.getStatus();
        tasksByStatus.get(status).add(task);
    }
    List<Map<Status, List<Task>>> returned = new ArrayList<>();
    returned.add(tasksByStatus);
    return returned;
}

  public Task updateTaskfromDTO(Task task, TaskUpdateDTO updateDTO) {
    if (updateDTO.getType() != null) {
      task.setType(updateDTO.getType());
    }
    if (updateDTO.getTitle() != null) {
      task.setTitle(updateDTO.getTitle());
    }
    if (updateDTO.getStatus() != null) {
      task.setStatus(updateDTO.getStatus());
    }
    if (updateDTO.getPosition() != null) {
      task.setPosition(updateDTO.getPosition());
    }
    if (updateDTO.getNotes() != null) {
      task.setNotes(updateDTO.getNotes());
    }
    if (updateDTO.getDescription() != null) {
      task.setDescription(updateDTO.getDescription());
    }
    return task;
  }

  public Task update(Task task, Task updateDTO) {
    if (updateDTO.getType() != null) {
      task.setType(updateDTO.getType());
    }
    if (updateDTO.getTitle() != null) {
      task.setTitle(updateDTO.getTitle());
    }
    if (updateDTO.getStatus() != null) {
      task.setStatus(updateDTO.getStatus());
    }
    if (updateDTO.getPosition() != null) {
      task.setPosition(updateDTO.getPosition());
    }
    if (updateDTO.getNotes() != null) {
      task.setNotes(updateDTO.getNotes());
    }
    if (updateDTO.getDueReminder() != null) {
      task.setDueReminder(updateDTO.getDueReminder());
    }
    if (updateDTO.getDescription() != null) {
      task.setDescription(updateDTO.getDescription());
    }
    if (updateDTO.getDeadline() != null) {
      task.setDeadline(updateDTO.getDeadline());
    }
    if (updateDTO.getCategories() != null) {
      task.setCategories(updateDTO.getCategories());
    }
    return task;
  }

  public List<Task> getTasksDone(User user){
    List<Task> tasks = taskRepository.findByUserAndStatus(user, Status.Done);
    return tasks;
  }

  public List<Task> findByUserAndCreatedAtBefore(User user, Instant statisticCreationTime) {
    return taskRepository.findByUserAndCreatedAtBefore( user,  statisticCreationTime);
  }
}