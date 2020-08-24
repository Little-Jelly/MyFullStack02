package com.youyou.demo.exception.http;

public class ForbiddenException extends HttpException{
    public ForbiddenException(Integer code){
        this.httpStatusCode = 403;
        this.code = code;
    }
}
