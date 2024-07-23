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
@Table(name = "songs")
@Getter
@Setter
@NoArgsConstructor
public class Song extends BaseModel {
    
    @NotNull
    @NotEmpty
    @Size(min = 3)
    private String genre;

    @NotNull
    @NotEmpty
    @Size(min = 2)
    private String name;

    @NotNull
    @NotEmpty
    @Size(min = 1)
    private String artist;

    @NotNull
    @NotEmpty
    private String url;
}