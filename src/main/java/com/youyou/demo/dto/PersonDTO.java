package com.youyou.demo.dto;

import com.youyou.demo.validators.PasswordEqual;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.Length;

import javax.validation.Valid;



@Builder
@Getter
@Setter
@PasswordEqual(min = 1, max = 11)
//@PasswordEqual
public class PersonDTO {

    @Length(min = 2, max = 10, message = "xxxxxxxxx")
    private String name;
    private Integer age;

    private String password1;
    private String password2;

//    @Valid
//    private SchoolDTO schoolDTO;
}
