package com.youyou.demo.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Builder
@Getter
public class PersonDTO {
    private String name;
    private Integer age;

//    public String getName() {
//        return name;
//    }
//
//    public Integer getAge() {
//        return age;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public void setAge(Integer age) {
//        this.age = age;
//    }
}
