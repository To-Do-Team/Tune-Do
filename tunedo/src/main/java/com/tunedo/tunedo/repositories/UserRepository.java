package com.tunedo.tunedo.repositories;

import org.springframework.stereotype.Repository;

import com.tunedo.tunedo.models.User;

@Repository
public interface UserRepository extends BaseRepository<User, Long> {
    User findByEmail(String email);
    User existsByEmail();
}