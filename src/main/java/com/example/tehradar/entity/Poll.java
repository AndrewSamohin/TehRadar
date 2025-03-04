package com.example.tehradar.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "polls")
//Опросы
public class Poll {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long pollId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "tech_id")
    private Technology technology;

    @ManyToOne
    @JoinColumn(name = "ring_id")
    private Ring ring;

    private LocalDateTime time;

}
