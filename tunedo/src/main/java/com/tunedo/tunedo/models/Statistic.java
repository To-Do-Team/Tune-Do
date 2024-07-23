package com.tunedo.tunedo.models;

import java.time.Instant;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Table(name="statistics")
@Entity
@NoArgsConstructor
@Getter
@Setter
public class Statistic extends BaseModel{
    
    private String comentarios;

    private Instant endPeriod;

    
}   
