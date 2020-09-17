package com.youyou.demo.service;

import com.youyou.demo.model.Spu;
import com.youyou.demo.repository.SpuRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SpuService {
    @Autowired
    SpuRepository spuRepository;

    public Spu getSpu(Long id){
        return this.spuRepository.findOneById(id);
    }

    public List<Spu> getLaestPagingSpu(){
        return this.spuRepository.findAll();
    }
}
