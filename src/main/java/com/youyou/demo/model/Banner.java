package com.youyou.demo.model;


import org.hibernate.validator.constraints.Length;

import javax.persistence.*;

@Entity
@Table(name = "banner1")
public class Banner {
    @Id
    private long id;
    @Column(length = 16)
    private String name;

    @Transient
    private String description;
    private String img;
    private String title;
}
