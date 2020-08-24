package com.youyou.demo.sample.Database;

import com.youyou.demo.sample.IConnect;

public class MySQL implements IConnect {

    private String ip = "localhost";

    public MySQL() {
    }

    public MySQL(String ip, Integer port) {
        this.ip = ip;
        this.port = port;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public void setPort(Integer port) {
        this.port = port;
    }

    private Integer port = 3306;



    @Override
    public void connect() {
        System.out.println(this.ip+":"+this.port);
    }
}
