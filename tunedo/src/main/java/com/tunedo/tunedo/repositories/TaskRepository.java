package com.tunedo.tunedo.repositories;

import java.time.Instant;
import java.util.List;

import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.Category;

public interface TaskRepository extends BaseRepository<Task> {
    List<Task> findByStatus(Status status);
    Task findByCategories(Category category);
    List<Task> findByDeadlineLessAndStatusNotDone(Instant date);
}