package com.tunedo.tunedo.services;

import java.time.Instant;
import java.util.List;

import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.enums.Status;
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

}