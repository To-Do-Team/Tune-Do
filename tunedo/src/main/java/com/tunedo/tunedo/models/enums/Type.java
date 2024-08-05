package com.tunedo.tunedo.models.enums;

import lombok.Getter;

@Getter
public enum Type {
    UI("Hazlo"),
    UN("Planifica"),
    NI("Delega"),
    NN("Elimínala o aplázala"),
    Done("Hechas");

    private String description;

    Type(String description){
        this.description=description;
    }
}
