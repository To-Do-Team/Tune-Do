package com.tunedo.tunedo.models.enums;

import lombok.Getter;

@Getter
public enum DueReminderOptions {
    None("Ninguno",-1),
    AtTheTime("A la hora",0),
    FiveMin("5 minutos antes",5),
    TenMin("10 minutos antes",10),
    FifteenMin("15 minutos antes",15),
    OneHour("1 hora antes",60),
    OneDay("1 día antes",1440);
    
    private String description;
    private int minutes;

    DueReminderOptions(String description, int minutes){
        this.description=description;
        this.minutes=minutes;
    }
}
