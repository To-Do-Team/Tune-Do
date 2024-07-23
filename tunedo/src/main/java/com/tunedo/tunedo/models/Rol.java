package com.tunedo.tunedo.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "rols")
@Getter
@Setter
@NoArgsConstructor
public class Rol extends BaseModel {
        
    @NotNull
    @NotEmpty
    @Size(min = 3)
    private String name;
}
