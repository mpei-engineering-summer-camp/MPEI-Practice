package com.example.mpei.controller;

import com.example.mpei.entity.Cuisine;
import com.example.mpei.entity.Recipe;
import com.example.mpei.repository.CuisineRepository;
import com.example.mpei.repository.RecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
public class MainController {

    @Autowired
    private RecipeRepository recipeRepository;

    @Autowired
    private CuisineRepository cuisineRepository;

    @GetMapping("/")
    public String main(@RequestParam(required = false) String search, @PageableDefault(sort = {"id"},
            direction = Sort.Direction.ASC, size = 30) Pageable pageable, Model model,
                       @RequestParam(name = "idCheck", required = false) List<String> checkboxes,
                       @RequestParam(name = "allCuisines") String allCuisines) {
        Page<Recipe> page = null;
        if(search != null && !search.isEmpty())
            page = recipeRepository.findByNameContains(search, pageable);
        else page = recipeRepository.findAll(pageable);

        Iterable<Cuisine> cuisines = cuisineRepository.findAll();
        if(checkboxes != null) {
            if(allCuisines != null) page = recipeRepository.findAll(pageable);
            else {
                for (String checkbox : checkboxes) {

                }
            }
        }

        model.addAttribute("page", page);
        model.addAttribute("search", search);
        model.addAttribute("cuisines", cuisines);
        return "main";
    }

    @GetMapping("/test")
    public String test() {
        List<Recipe> list = recipeRepository.findAll();
        Set<String> set = new HashSet<>();
        list.forEach(recipe -> {
            set.add(recipe.getCuisine());
            System.out.println("hello");
        });
        set.forEach(s -> cuisineRepository.save(new Cuisine(s)));

        return "main";
    }

}
