package com.youyou.demo.api.v1;

import com.youyou.demo.model.Banner;
import com.youyou.demo.sample.IConnect;
import com.youyou.demo.sample.ISkill;
import com.youyou.demo.service.BannerService;
import com.youyou.demo.service.BannerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/banner")
@Validated
public class BannerController {
    @Autowired
    private ISkill iSkill;

    @Autowired
    private IConnect iConnect;

    @Autowired
    private BannerServiceImpl bannerServiceImpl;

    @Autowired
    private BannerService bannerService;

    @RequestMapping(value = "/getByName/{name}", method = {RequestMethod.GET})
    public Banner getByName(@PathVariable String name){
        System.out.println("您发出了一个GET请求");
        Banner banner = bannerService.getName(name);
        return banner;
    }
}
