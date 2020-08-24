package com.youyou.demo.sample.hero;

import com.youyou.demo.sample.ISkill;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

//@Component
public class Diana implements ISkill {
    private String name = "";
    public Diana(){
        System.out.println("Hello "+name);
    }
    public Diana(String name ){
        this.name = name; System.out.println("Hello"+name);
    }
    public void r(){
        System.out.println("Diana R");
    }
}
