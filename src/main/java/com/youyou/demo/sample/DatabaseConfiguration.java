package com.youyou.demo.sample;

import com.youyou.demo.sample.Database.MySQL;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DatabaseConfiguration {

    @Value("${mysql.ip}")
    private String ip;

    @Value("${mysql.port}")
    private Integer port;

    @Bean
    public IConnect mySQL(){
        return new MySQL(ip, port);
    }
}
