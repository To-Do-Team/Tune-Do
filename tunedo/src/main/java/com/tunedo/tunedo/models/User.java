package com.tunedo.tunedo.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Table(name = "users")
@Entity
@NoArgsConstructor
@Getter
@Setter
public class User extends BaseModel{
    
    @NotNull
    @NotEmpty
    @Size(min = 3)
    private String name;

    @NotNull
    @NotEmpty
    @Email
    @Column(unique = true)
    private String email;

    @NotNull
    @NotBlank
    @NotEmpty
    @Size(min = 8, max = 100)
    private String password;
    
    @Transient
    private String passwordConfirmation;
}
