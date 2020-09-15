package com.youyou.demo.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.MappedSuperclass;
import java.util.Date;

@Getter
@Setter
@MappedSuperclass
public abstract class BaseEntity {
    private Date createTime;
    private Date updateTime;
    private Date deleteTime;
}
