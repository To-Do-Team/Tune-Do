package com.tunedo.tunedo.repositories;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.tunedo.tunedo.models.Category;

@Repository
public interface CategoryRepository extends BaseRepository<Category, Long>{
    List<Category> findByName(String name);
}
