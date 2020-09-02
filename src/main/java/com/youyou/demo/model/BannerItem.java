package com.youyou.demo.model;

import javax.persistence.*;

@Entity
public class BannerItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String img;
    private String keyword;
    private Short type;
    private String name;

    private long BannerId;

    @ManyToOne
    @JoinColumn(insertable = false, updatable = false,name = "BannerId")
    private Banner banner;

}
