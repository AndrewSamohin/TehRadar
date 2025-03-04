package com.example.tehradar.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Table(name = "categories")
@Entity
//Категории технологий
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long catId;
    private String catName;

    @OneToMany(mappedBy = "category")
    private List<Technology> technologies;
}
