package com.tunedo.tunedo.models.dto;

import java.time.Instant;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.enums.Type;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class TaskUpdateDTO {
    private Long id;
    private String title;
    private String description;
    private String notes;
    private Instant deadline;
    
    private Status status;

    private Double position;

    private Type type;

    public TaskUpdateDTO(Long id,Double position) {
        this.position = position;
        this.id=id;
    }
    
}
