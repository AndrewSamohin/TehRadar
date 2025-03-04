package com.example.tehradar.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Table(name = "statuses")
@Entity
//Статус технологий
public class Status {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long statId;
    private String statName;

    @ManyToOne
    @JoinColumn(name = "tech_id")
    private Technology technology;

    private LocalDateTime updateTime;

}
