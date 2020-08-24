package com.youyou.demo.sample;

import com.youyou.demo.sample.HeroCondition.DianaCondition;
import com.youyou.demo.sample.HeroCondition.IrelliaCondition;
import com.youyou.demo.sample.hero.Diana;
import com.youyou.demo.sample.hero.Irellia;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Conditional;
import org.springframework.context.annotation.Configuration;

@Configuration
public class HeroConfiguration {

//    @Bean
//    @Conditional(DianaCondition.class)
    @ConditionalOnProperty(value="hero.condition", havingValue="diana", matchIfMissing = true)
    public ISkill Diana(){
        return new Diana("Diana");
    }

    @Bean
//    @Conditional(IrelliaCondition.class)
//    @ConditionalOnProperty(value="hero.condition", havingValue="irellia")
    public ISkill Irellia(){
        return new Irellia("Irellia");
    }
}
