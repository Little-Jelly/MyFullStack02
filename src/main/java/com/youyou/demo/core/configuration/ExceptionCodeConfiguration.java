package com.youyou.demo.core.configuration;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@PropertySource(value = "classpath:config/exception-codes.properties")
@ConfigurationProperties(prefix = "lin")
@Component
public class ExceptionCodeConfiguration {
    private Map<Integer, String> codes = new HashMap<>();
    public String getMessage(int code){
        String message = codes.get(code);
        return message;
    }

    public void setCodes(Map<Integer, String> codes) {
        this.codes = codes;
    }

    public Map<Integer, String> getCodes() {
        return codes;
    }
}
