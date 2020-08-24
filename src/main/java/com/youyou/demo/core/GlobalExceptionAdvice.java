package com.youyou.demo.core;

import com.youyou.demo.core.configuration.ExceptionCodeConfiguration;
import com.youyou.demo.exception.http.HttpException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@ControllerAdvice
public class GlobalExceptionAdvice {

    @Autowired
    private ExceptionCodeConfiguration exceptionCodeConfiguration;

    @ExceptionHandler(value = Exception.class)
    @ResponseBody
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR)
    public UnifyResponse  handlerException(HttpServletRequest req, Exception e){
        String requestUrl = req.getRequestURI();
        String requestMethod = req.getMethod();
        UnifyResponse message = new UnifyResponse(9999, "服务器内部错误", requestMethod + " " + requestUrl);
        return message;
    }

    @ExceptionHandler(value = HttpException.class)
    public ResponseEntity<UnifyResponse> handlerHttpException(HttpServletRequest req, HttpException e){



        String requetUrl = req.getRequestURI();
        String requestMethod = req.getMethod();
        UnifyResponse unifyResponse = new UnifyResponse(e.getCode(), exceptionCodeConfiguration.getMessage(e.getCode()), requestMethod + " " + requetUrl);

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        HttpStatus httpStatus = HttpStatus.resolve(e.getHttpStatusCode());
        ResponseEntity<UnifyResponse> responseEntity = new ResponseEntity<>(unifyResponse, httpStatus);
        return responseEntity;

    }
}
