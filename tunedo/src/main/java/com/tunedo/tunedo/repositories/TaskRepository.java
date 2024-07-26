package com.tunedo.tunedo.repositories;

import java.time.Instant;
import java.util.List;

import com.tunedo.tunedo.models.Category;
import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.enums.Status;

public interface TaskRepository extends BaseRepository<Task> {
    List<Task> findByStatus(Status status);
    Task findByCategories(Category category);
    List<Task> findByDeadlineLessThanAndStatusNot(Instant instant,Status status);
}