package com.youyou.demo.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Table(name = "spu_detail_img", schema = "sleeve", catalog = "")
@Entity
@Setter
@Getter
public class SpuDetailImg extends BaseEntity{
    @Id
    private int id;
    private String img;
    private Integer spuId;
    private int index;
    private Timestamp createTime;
    private Timestamp updateTime;
    private Timestamp deleteTime;

}
