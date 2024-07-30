package com.tunedo.tunedo.models.enums;

import lombok.Getter;

@Getter
public enum DefaultCategories {
    Fitness("Generalmente incluye deporte o ejercicio","Fitness"),
    Programming("Practicar programación mejora tu habilidad lógica","Programación"),
    Chores("Hacer las cosas del hogar mantiene una vida más ordenada","Hogar"),
    Hobbies("Mientras te guste, está bien","Hobbies");

    private String description;
    private String name;

    DefaultCategories(String description, String name){
        this.description=description;
        this.name=name;
    }
}   
