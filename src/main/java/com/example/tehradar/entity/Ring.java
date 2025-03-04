package com.example.tehradar.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Table(name = "rings")
@Entity
//Кольцо техрадара
public class Ring {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long ringId;
    private String ringName;

    @ManyToOne
    @JoinColumn(name = "sec_id")
    private Section section;

    @OneToMany(mappedBy = "ring")
    private List<Poll> polls;

}
