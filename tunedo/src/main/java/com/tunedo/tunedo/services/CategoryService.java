package com.tunedo.tunedo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tunedo.tunedo.models.Category;
import com.tunedo.tunedo.models.Task;
import com.tunedo.tunedo.models.enums.DefaultCategories;
import com.tunedo.tunedo.repositories.BaseRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;

@Service
public class CategoryService extends BaseService<Category> {

    public CategoryService(BaseRepository<Category> repository) {
        super(repository);
    }

    @PersistenceContext
    private EntityManager entityManager;


    @Transactional
    public void populateInitialCategories() {
        long count = entityManager.createQuery("SELECT COUNT(c) FROM Category c", Long.class).getSingleResult();
        if (count == 0) {
            for (DefaultCategories defaultCategory : DefaultCategories.values()) {
                Category category = new Category();
                        category.setName(defaultCategory.getName());
                        category.setDescription(defaultCategory.getDescription());
                        entityManager.persist(category);
            }
        }
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