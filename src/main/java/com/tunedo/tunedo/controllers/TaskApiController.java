package com.tunedo.tunedo.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
    public ResponseEntity<TaskUpdateDTO> updateTask(
        @PathVariable("id") Long id,
        @RequestBody TaskUpdateDTO updateDTO
    ) {
        Task existingTask = taskService.findById(id);
        if (existingTask == null) {
            return ResponseEntity.notFound().build();
        }
        existingTask = taskService.updateTaskfromDTO(existingTask,updateDTO);
        Task updatedTask = taskService.save(existingTask);
        TaskUpdateDTO updatedDTO = new TaskUpdateDTO(id, updatedTask.getStatus(),updatedTask.getType());
        return ResponseEntity.ok(updatedDTO);
    }

    @GetMapping("/{id}/delete")
	public ResponseEntity<String> destroy(
        @PathVariable("id")Long id
        ) {
        if (taskService.findById(id)!=null) {
		    taskService.deleteById(id);
            return ResponseEntity.ok().build();
        }
		return ResponseEntity.notFound().build();
	}
}
