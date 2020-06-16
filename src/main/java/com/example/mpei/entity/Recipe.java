package com.example.mpei.entity;

import lombok.*;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "recipe")
@ToString
@EqualsAndHashCode(of = "id")
public class Recipe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String ingredients;
    private String recipe;
    private String type;
    private String cuisine;

    private Integer minutes;

}
