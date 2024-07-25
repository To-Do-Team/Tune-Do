package com.tunedo.tunedo.repositories;

import java.time.Instant;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.Category;

@Repository
public interface TaskRepository extends BaseRepository<Task, Long> {
    List<Task> findByStatus(Status status);
    Task findByCategories(Category category);
    List<Task> findByDeadlineLessAndStatusNotDone(Instant date);
}