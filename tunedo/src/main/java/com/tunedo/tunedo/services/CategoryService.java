package com.tunedo.tunedo.services;

import org.springframework.stereotype.Repository;

import com.tunedo.tunedo.models.Category;
import com.tunedo.tunedo.repositories.BaseRepository;

@Repository
public class CategoryService extends BaseService<Category> {

    public CategoryService(BaseRepository<Category> repository) {
        super(repository);
    }
}