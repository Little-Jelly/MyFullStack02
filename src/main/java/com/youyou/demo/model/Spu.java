package com.youyou.demo.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Spu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String name;

    @ManyToMany(mappedBy = "spuList")
    private List<Theme> themeList;

}
