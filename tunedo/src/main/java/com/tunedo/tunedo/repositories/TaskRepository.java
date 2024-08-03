package com.tunedo.tunedo.repositories;

import java.time.Instant;
import java.util.List;

import com.tunedo.tunedo.models.Category;
import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.enums.Type;

public interface TaskRepository extends BaseRepository<Task> {
    List<Task> findByStatus(Status status);
    List<Task> findByDeadlineBeforeAndDeadlineAfterAndDueReminderIsNotNullAndDueReminderIsGreaterThanEqualAndRemindedFalse(Instant checkTime,Instant now,Integer zero);
    Task findByCategories(Category category);
    List<Task> findByDeadlineLessThanAndStatusNot(Instant instant,Status status);
    List<Task> findByUser(User user);
    List<Task> findByUserOrderByPosition(User user);
    List<Task> findByUserAndTypeOrderByPositionAsc(User user, Type type);
    List<Task> findByUserOrderByPositionAsc(User user);
    Task findByUserAndId(User user, Long id);
}