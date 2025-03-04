package com.example.tehradar.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.data.annotation.Id;

import java.util.List;

@Data
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userId;

    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    private String login;
    private String password;
    private String refreshToken; //Обновление токена

    @OneToMany(mappedBy = "user")
    private List<Poll> polls;
}
