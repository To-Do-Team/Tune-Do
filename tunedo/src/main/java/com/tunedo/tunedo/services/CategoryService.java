package com.tunedo.tunedo.services;

import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.Category;
import com.tunedo.tunedo.repositories.BaseRepository;

@Service
public class CategoryService extends BaseService<Category> {

    public CategoryService(BaseRepository<Category> repository) {
        super(repository);
    }
}