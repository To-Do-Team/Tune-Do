package com.tunedo.tunedo.models;

import java.time.Instant;

import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.enums.Type;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "statistic_tasks")
@Getter
@Setter
@NoArgsConstructor
public class StatisticTask extends BaseModel {

    private String title;
    private String description;
    private Status status;
    private String notes;
    private Type type;
    private Instant deadline;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "statistic_id")
    private Statistic statistic;

    // Constructor para crear una StatisticTask a partir de una Task
    public StatisticTask(Task task) {
        this.title = task.getTitle();
        this.description = task.getDescription();
        this.status = task.getStatus();
        this.type = task.getType();
        this.deadline = task.getDeadline();
    }
}