package com.tunedo.tunedo.repositories;

import com.tunedo.tunedo.models.User;

public interface UserRepository extends BaseRepository<User> {
    User findByEmail(String email);
    User existsByEmail(String email);
}