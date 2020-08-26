package com.youyou.demo.dto;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.Length;

import javax.validation.constraints.Min;

@Setter
@Getter
public class SchoolDTO {
    @Length(min = 2)
    private String schoolName;
}
