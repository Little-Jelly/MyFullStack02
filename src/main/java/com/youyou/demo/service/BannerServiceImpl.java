package com.youyou.demo.service;

import com.youyou.demo.model.Banner;
import com.youyou.demo.repository.BannerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BannerServiceImpl implements BannerService{
    @Autowired
    private BannerRepository bannerRepository;

    @Override
    public Banner getName(String name) {
        Banner banner = bannerRepository.findOneByName(name);
        return banner;
    }
}
