package com.tunedo.tunedo.models.enums;

import lombok.Getter;

@Getter
public enum Type {
    UI("Hazlo","Urgente e importante"),
    UN("Planifica","No Urgente pero Importante"),
    NI("Delega","Urgente pero no Importante"),
    NN("Aplaza o Elimina","Ni Urgente ni Importante"),
    Done("Hechas","Hechas");

    private String description;
    private String tooltip;

    Type(String description, String tooltip){
        this.description=description;
        this.tooltip=tooltip;
    }
}
