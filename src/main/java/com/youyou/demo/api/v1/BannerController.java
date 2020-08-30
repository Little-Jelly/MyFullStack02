package com.youyou.demo.api.v1;

import com.youyou.demo.dto.PersonDTO;
import com.youyou.demo.exception.http.ForbiddenException;
import com.youyou.demo.exception.http.HttpException;
import com.youyou.demo.exception.http.NotFoundException;
import com.youyou.demo.sample.IConnect;
import com.youyou.demo.sample.ISkill;
import com.youyou.demo.sample.hero.Diana;
import com.youyou.demo.service.BannerService;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

@RestController
@RequestMapping("/banner")
@Validated
public class BannerController {
    @Autowired
    private ISkill iSkill;

    @Autowired
    private IConnect iConnect;

    @Autowired
    private BannerService bannerService;

//    @RequestMapping(value = "/test/{id}", method = {RequestMethod.GET, RequestMethod.POST})
//    public PersonDTO test(@PathVariable @Range(min = 0, max = 10, message = "值必须要在0-10之间") Integer id,
//                       @RequestParam @Length(min = 15) String name,
//                       @RequestBody @Validated PersonDTO person) {
//        PersonDTO personDTO = PersonDTO.builder()
//                .name("壮壮")
//                .age(77)
//                .build();
////          PersonDTO personDTO = new PersonDTO();
////          personDTO.setAge(11);
////          personDTO.setName("悠悠");
////        throw new NotFoundException(383838);
////        throw new ForbiddenException(10001);
//          return  personDTO;
//    }

    @RequestMapping(value = "/getByName/{name}", method = {RequestMethod.GET})
    public void getByName(@PathVariable String name){
        System.out.println("您发出了一个GET请求");
    }
}
