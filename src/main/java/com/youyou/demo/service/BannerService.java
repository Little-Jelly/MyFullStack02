package com.youyou.demo.service;

import com.youyou.demo.model.Banner;
import org.springframework.stereotype.Service;

@Service
public interface BannerService {
    Banner getName(String name);
}
