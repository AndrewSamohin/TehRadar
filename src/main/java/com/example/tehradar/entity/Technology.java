package com.example.tehradar.entity;

import ch.qos.logback.core.status.Status;
import jakarta.persistence.*;
import lombok.Data;
import java.util.List;

@Data
@Entity
@Table(name = "technologies")
//Технологии
public class Technology {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long techId;
    private String name;

    @ManyToOne
    @JoinColumn(name = "cat_id")
    private Category category;

    @Column(columnDefinition = "jsonb")
    private String characteristics;//для хранения характеристик

    @OneToMany(mappedBy = "technology")
    private List<Status> statuses;

    @OneToMany(mappedBy = "technology")
    private List<Poll> polls;

}
