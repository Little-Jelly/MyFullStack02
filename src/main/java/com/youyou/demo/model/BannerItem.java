package com.youyou.demo.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "banner_item", schema = "sleeve", catalog = "")
@Getter
@Setter
public class BannerItem {
    @Id
    private int id;
    private String img;
    private String keyword;
    private short type;
    private Timestamp createTime;
    private Timestamp updateTime;
    private Timestamp deleteTime;
    private int bannerId;
    private String name;

}
