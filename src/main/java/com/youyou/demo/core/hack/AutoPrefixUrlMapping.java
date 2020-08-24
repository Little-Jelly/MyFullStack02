package com.youyou.demo.core.hack;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import java.lang.reflect.Method;

public class AutoPrefixUrlMapping extends RequestMappingHandlerMapping {

    @Value("${demo.api-package}")
    private String apiPackagePath;

    @Override
    protected RequestMappingInfo getMappingForMethod(Method method, Class<?> handlerType) {
//        return super.getMappingForMethod(method, handlerType);
        RequestMappingInfo requestMappingInfo = super.getMappingForMethod(method, handlerType);
        if(requestMappingInfo != null){
            String prefix = getPrefix(handlerType);
            RequestMappingInfo newRequestMappingInfo = RequestMappingInfo.paths(prefix).build().combine(requestMappingInfo);
            return newRequestMappingInfo;
        }
        return requestMappingInfo;
    }

    private String getPrefix(Class<?> handlerType){
        String packageName = handlerType.getPackageName(); // com.youyou.demo.api.v1
        String dotPath = packageName.replaceAll(this.apiPackagePath, "");
        String dotPath2 = dotPath.replace(".", "/");
        return dotPath2;
    }
}
