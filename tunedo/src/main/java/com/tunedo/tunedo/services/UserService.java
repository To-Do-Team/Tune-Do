package com.tunedo.tunedo.services;

import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.User;
import com.tunedo.tunedo.repositories.UserRepository;
import com.tunedo.tunedo.security.PasswordEncoder;

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

    public boolean existsByEmail(String email){
        return repository.existsByEmail(email);
    }

    public User save(User user) {
        encryptUserPassword(user);
        user = repository.save(user);
        return user;
    }

    private void encryptUserPassword(User user) {
        String hashedPassword = PasswordEncoder
            .bCryptPasswordEncoder()
            .encode(user.getPassword());
        user.setPassword(hashedPassword);
    }
}
