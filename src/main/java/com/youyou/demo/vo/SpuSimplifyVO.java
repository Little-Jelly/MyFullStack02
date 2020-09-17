package com.youyou.demo.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class SpuSimplifyVO {
    private Long id;
    private String title;
    private String subtitle;
    private String img;
    private String forThemeImg;
    private String price;
    private String discountPrice;
    private String description;
    private Integer sketchSpecId;
}
