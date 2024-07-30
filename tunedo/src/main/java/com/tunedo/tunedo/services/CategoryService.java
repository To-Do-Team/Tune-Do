package com.tunedo.tunedo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.Category;
import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.repositories.BaseRepository;

@Service
public class CategoryService extends BaseService<Category> {

    public CategoryService(BaseRepository<Category> repository) {
        super(repository);
    }

    public List<Category> addAnotherCategory(Long id, Task task){
        Category category= findById(id);
        List<Category> categories = new ArrayList<>();
        if(task.getCategories()!=null){
            categories.addAll(task.getCategories());
        }
        categories.add(category);
        return categories;
    }
}