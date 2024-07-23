package com.tunedo.tunedo.models;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "categories")
@Getter
@Setter
@NoArgsConstructor
public class Category extends BaseModel {

    @NotNull
    @NotEmpty
    @Size(min = 3)
    private String name;
       
    @NotNull
    @NotEmpty
    @Size(min = 10)
    private String description;

}