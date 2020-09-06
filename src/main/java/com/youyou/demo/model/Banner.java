package com.youyou.demo.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@Entity
@Getter
@Setter
public class Banner {
    @Id
    private Long id;
    private String name;
    private String description;
    private Date createTime;
    private Date updateTime;
    private Date deleteTime;
    private String title;
    private String img;

    @OneToMany(fetch = FetchType.LAZY)
    @JoinColumn(name = "bannerId")
    protected List<BannerItem> bannerItems;
}
