package com.tunedo.tunedo.services;

import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.repositories.UserRepository;

@Service
public class UserService extends BaseService<User>{

    private final UserRepository repository;

    public UserService(UserRepository repository){
        super(repository);
        this.repository=repository;
    }

    public User findByEmail(String email){
        return repository.findByEmail(email);
    }

    public User existsByEmail(String email){
        return repository.existsByEmail(email);
    }
}
