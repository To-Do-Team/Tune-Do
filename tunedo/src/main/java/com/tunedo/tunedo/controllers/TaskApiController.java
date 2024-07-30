package com.tunedo.tunedo.controllers;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.dto.TaskUpdateDTO;
import com.tunedo.tunedo.services.TaskService;

@RestController
@RequestMapping("/tasks")
public class TaskApiController {

    private final TaskService taskService;

    public TaskApiController(TaskService taskService) {
        this.taskService = taskService;
    }

    @PostMapping("/{id}/edit")
    public ResponseEntity<Task> updateTask(
        @PathVariable("id") Long id,
        @RequestBody TaskUpdateDTO updateDTO
    ) {
        Task existingTask = taskService.findById(id);
        if (existingTask == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Person not found with id: " + id);
        }
        existingTask = taskService.updateTaskfromDTO(existingTask,updateDTO);

        Task updatedTask = taskService.save(existingTask);
        return ResponseEntity.ok(updatedTask);
    }
}
