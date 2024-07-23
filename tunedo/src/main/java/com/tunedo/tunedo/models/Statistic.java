package com.tunedo.tunedo.models;

import java.time.Instant;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;
}   
