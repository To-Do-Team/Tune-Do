package com.tunedo.tunedo.repositories;

import java.util.List;

import com.tunedo.tunedo.models.Category;
public interface CategoryRepository extends BaseRepository<Category>{
    List<Category> findByName(String name);
}
