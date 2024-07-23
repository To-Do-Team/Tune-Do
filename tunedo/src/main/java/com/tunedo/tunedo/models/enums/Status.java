package com.tunedo.tunedo.models.enums;

import lombok.Getter;

@Getter
public enum Status {
    ToDo("Por hacer"),
    Doing("Haciendo"),
    Done("Hechos");
    
    private String description;

    Status(String description){
        this.description=description;
    }
}
