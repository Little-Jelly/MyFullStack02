package com.youyou.demo.exception.http;

public class NotFoundException extends HttpException{
    public NotFoundException(Integer code){
        this.httpStatusCode = 404;
        this.code = code;
    }
}
