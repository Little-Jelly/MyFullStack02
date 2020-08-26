package com.youyou.demo.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.Length;

import javax.validation.Valid;


@Builder
@Getter
@Setter
public class PersonDTO {

    @Length(min = 2, max = 10, message = "xxxxxxxxx")
    private String name;
    private Integer age;

    @Valid
    private SchoolDTO schoolDTO;
}
