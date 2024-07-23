package com.tunedo.tunedo.models.enums;

import lombok.Getter;

@Getter
public enum DefaultCategories {
    Fitness("Fitness"),
    Programming("Programación"),
    Chores("Hogar"),
    Hobbies("Hobbies");

    private String description;

    DefaultCategories(String description){
        this.description=description;
    }
}   
