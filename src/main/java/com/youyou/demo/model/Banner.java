package com.youyou.demo.model;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Banner {
    @Id
    private long id;
    private String name;
    private String description;
    private String img;
    private String title;
}
