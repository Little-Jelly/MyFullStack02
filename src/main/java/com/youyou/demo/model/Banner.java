package com.youyou.demo.model;


import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "banner")
public class Banner {
    @Id
    private long id;
    @Column(length = 16)
    private String name;

    @Transient
    private String description;
    private String img;
    private String title;

    @OneToMany
    protected List<BannerItem> bannerItems;
}
