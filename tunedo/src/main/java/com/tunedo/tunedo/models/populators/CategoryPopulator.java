package com.tunedo.tunedo.models.populators;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import com.tunedo.tunedo.services.CategoryService;

@Component
public class CategoryPopulator implements ApplicationRunner
{

    private final CategoryService categoryService;

    public CategoryPopulator(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        categoryService.populateInitialCategories();
    }
}