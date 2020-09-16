package com.youyou.demo.repository;

import com.youyou.demo.model.Spu;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SpuRepository extends JpaRepository<Spu, Long> {
    Spu findOneById(Long id);
}
