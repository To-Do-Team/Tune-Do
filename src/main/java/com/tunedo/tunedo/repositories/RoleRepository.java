package com.tunedo.tunedo.repositories;

import java.util.Optional;

import com.tunedo.tunedo.models.Role;

public interface RoleRepository extends BaseRepository<Role> {

    Optional<Role> findByName(String roleName);
    
}
