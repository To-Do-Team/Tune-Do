package com.tunedo.tunedo.services;

import java.time.Instant;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.models.dto.TaskUpdateDTO;
import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.enums.Type;
import com.tunedo.tunedo.repositories.BaseRepository;
import com.tunedo.tunedo.repositories.TaskRepository;

@Service
public class TaskService extends BaseService<Task> {

    private final TaskRepository taskRepository;
    
    public TaskService(BaseRepository<Task> repository, TaskRepository taskrepository) {
        super(repository);
        this.taskRepository = taskrepository;
    }
  
    public List<Task> status(Status status) {
		return taskRepository.findByStatus(status);
	}

    public List<Task> findTaskBefore(Instant instant, Status status) {
		return taskRepository.findByDeadlineLessThanAndStatusNot(instant, status);
	}

  public List<Task> findByUser(User user){
    return taskRepository.findByUser(user);
  }
  
  public List<Task> findByUserOrdered(User user){
    return taskRepository.findByUserOrderByPositionAsc(user);
  }

  public List<Task> findByUserAndType(User user, Type type){
    return taskRepository.findByUserAndTypeOrderByPositionAsc(user, type);
  }

  public Map<Type, List<Task>> rearrangeTasks(List<Task> tasks){
    Map<Type, List<Task>> tasksByType = new EnumMap<>(Type.class);
    for (Type type : Type.values()) {
      tasksByType.put(type, new ArrayList<>());
    }
    for (Task task : tasks) {
      for (Type type : Type.values()) {
        if(task.getType()==type){
          tasksByType.get(type).add(task);
        }
      }
    }
    return tasksByType;
  }

  public Task updateTaskfromDTO(Task task, TaskUpdateDTO updateDTO){
    if(updateDTO.getType() !=null){
      task.setType(updateDTO.getType());
    }
    if(updateDTO.getTitle() !=null){
      task.setTitle(updateDTO.getTitle());
    }
    if(updateDTO.getStatus() !=null){
      task.setStatus(updateDTO.getStatus());
    }
    if(updateDTO.getPosition() !=null){
      task.setPosition(updateDTO.getPosition());
    }
    if(updateDTO.getNotes() !=null){
      task.setNotes(updateDTO.getNotes());
    }
    if(updateDTO.getDescription() !=null){
      task.setDescription(updateDTO.getDescription());
    }
    if(updateDTO.getDeadline() !=null){
      task.setDeadline(updateDTO.getDeadline());
    }
    return task;
  }
}