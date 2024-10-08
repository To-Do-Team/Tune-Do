package com.tunedo.tunedo.services;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.Role;
import com.tunedo.tunedo.repositories.RoleRepository;

@Service
public class RoleService {

    private final RoleRepository repository;
    
    private static final Logger logger = LoggerFactory.getLogger(RoleService.class);

    public RoleService(RoleRepository repository) {
        this.repository = repository;

        try {
            if(repository.count()==0){
                Role role = new Role();
                role.setName("ROLE_USER");
                repository.save(role);
    
                role = new Role();
                role.setName("ROLE_PREMIUM");
                repository.save(role);
            }
        } catch (Exception e) {
            logger.error("initial roles already created", e);
        }
    }

    public Role findByName(String roleName) {
        Optional<Role> role = repository.findByName(roleName);
        return role.isPresent() ? role.get() : null;
    }

}
