package com.tunedo.tunedo.models;

import java.time.Instant;

import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.enums.Type;

import jakarta.persistence.Entity;
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
}
