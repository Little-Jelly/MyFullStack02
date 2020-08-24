package com.youyou.demo.sample.hero;

import com.youyou.demo.sample.ISkill;
import org.springframework.stereotype.Component;

//@Component
public class Irellia implements ISkill {
    private String name = "";
    public Irellia(){
        System.out.println("Hello"+name);
    }
    public Irellia(String name ){
        this.name = name; System.out.println("Hello"+name);
    }
    public void r(){
        System.out.println("Irellia R");
    }
}
