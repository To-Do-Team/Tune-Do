package com.tunedo.tunedo.services;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.tunedo.tunedo.models.Category;
import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.enums.DefaultCategories;
import com.tunedo.tunedo.repositories.BaseRepository;

@Service
public class CategoryService extends BaseService<Category> {

    private static final Logger logger = LoggerFactory.getLogger(CategoryService.class);

    public CategoryService(BaseRepository<Category> repository) {
        super(repository);

        try {
            if(repository.count()==0){
                for (DefaultCategories defaultCategory : DefaultCategories.values()) {
                    Category category = new Category();
                            category.setName(defaultCategory.getName());
                            category.setDescription(defaultCategory.getDescription());
                            repository.save(category);
                }
            }
        } catch (Exception e) {
            logger.info("initial categories already created", e);
        }
    }

    public Set<Category> addAnotherCategory(List<Long> categoryIds, Task task){
        Set<Category> categories = new HashSet<>();
        for (Long categoryId : categoryIds) {
            Category category = findById(categoryId);
            categories.add(category);
        }
        return categories;
    }
}