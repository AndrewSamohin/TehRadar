package com.example.tehradar.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Table(name = "sections")
@Entity
//Секции технологий
public class Section {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long secId;
    private String secName;

    @OneToMany(mappedBy = "section")
    private List<Ring> rings;

}
