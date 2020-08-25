package com.youyou.demo.api.v1;

import com.youyou.demo.dto.PersonDTO;
import com.youyou.demo.exception.http.ForbiddenException;
import com.youyou.demo.exception.http.HttpException;
import com.youyou.demo.exception.http.NotFoundException;
import com.youyou.demo.sample.IConnect;
import com.youyou.demo.sample.ISkill;
import com.youyou.demo.sample.hero.Diana;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@ResponseBody
@RequestMapping("/banner")
public class BannerController {
    @Autowired
    private ISkill iSkill;

    @Autowired
    private IConnect iConnect;
    @RequestMapping(value = "/test/{id}", method = {RequestMethod.GET, RequestMethod.POST})
    public String test(@PathVariable Integer id,
                       @RequestParam String name,
                       @RequestBody PersonDTO person) {
//        throw new NotFoundException(383838);
//        throw new ForbiddenException(10001);
        iSkill.r();
        iConnect.connect();
        return  "Hello, 七月";
    }
}
