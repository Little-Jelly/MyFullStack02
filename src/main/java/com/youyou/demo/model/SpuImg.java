package com.youyou.demo.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Table(name = "spu_img", schema = "sleeve", catalog = "")
@Entity
@Setter
@Getter
public class SpuImg extends BaseEntity{
    @Id
    private int id;
    private String img;
    private Integer spuId;
    private Timestamp deleteTime;
    private Timestamp updateTime;
    private Timestamp createTime;

}
