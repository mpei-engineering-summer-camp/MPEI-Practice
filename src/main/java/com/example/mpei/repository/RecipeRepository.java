package com.example.mpei.repository;

import com.example.mpei.entity.Cuisine;
import com.example.mpei.entity.Recipe;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RecipeRepository extends CrudRepository<Recipe, Long> {
    Page<Recipe> findAllByType(String type, Pageable pageable);
    Page<Recipe> findAll(Pageable pageable);
    List<Recipe> findAll();
    Page<Recipe> findByNameContains(String name, Pageable pageable);
    Page<Recipe> findByCuisine(List<Cuisine> cuisines);
}
