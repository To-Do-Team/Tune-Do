package com.tunedo.tunedo.models;

import java.time.Instant;
import java.util.List;

import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.enums.Type;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Table(name = "tasks")
@Entity
@NoArgsConstructor
@Getter
@Setter
public class Task extends BaseModel{
    
    @NotNull
    @NotEmpty
    @Size(min = 3)
    private String title;

    @NotNull
    @NotEmpty
    @Size(min = 3)
    private String description;

    @NotNull
    @NotEmpty
    @Size(min = 3)
    private String notes;

    private Instant deadline;
    
    private Status status;

    private Type Type;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "categories_tasks",
        joinColumns = @JoinColumn(name = "task_id"),
        inverseJoinColumns = @JoinColumn(name = "category_id")
    )
    private List<Category> categories; 
}