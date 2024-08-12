package com.tunedo.tunedo.repositories;

import java.util.List;
import java.util.Set;

import com.tunedo.tunedo.models.Category;
public interface CategoryRepository extends BaseRepository<Category>{
    Set<Category> findByName(String name);
}
