package com.tunedo.tunedo.models.dto;

import java.time.Instant;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.tunedo.tunedo.models.enums.Status;
import com.tunedo.tunedo.models.enums.Type;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
public class TaskUpdateDTO {
    private Long id;
    private String title;
    private String description;
    private String notes;
    private Instant deadline;
    
    private Status status;
    private String statusDescription;

    private Double position;

    private Type type;
    private String typeDescription;

    public TaskUpdateDTO(Long id,String title,Double position, Status status) {
        this.position = position;
        this.title=title;
        this.id=id;
        this.status = status;
        this.statusDescription=status.getDescription();
    }
    public TaskUpdateDTO(Long id,Status status, Type type) {
        this.status = status;
        this.id=id;
        this.statusDescription=status.getDescription();
        this.type=type;
        this.typeDescription = type.getDescription();
    }
    
}
