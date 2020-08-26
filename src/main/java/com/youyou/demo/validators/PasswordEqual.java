package com.youyou.demo.validators;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
@Constraint(validatedBy = PasswordValidator.class)
public @interface PasswordEqual {
    int min() default  2;
    int max() default  10;

    String message() default "两次输入的密码不同";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};

}
