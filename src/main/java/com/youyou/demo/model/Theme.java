package com.youyou.demo.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Theme {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String name;

    @ManyToMany
    @JoinTable(name = "theme_spu", joinColumns = @JoinColumn(name = "theme"), inverseJoinColumns = @JoinColumn(name = "spu"))
    private List<Spu> spuList;

}
