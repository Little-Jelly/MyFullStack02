package com.youyou.demo.repository;

import com.youyou.demo.model.Spu;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SpuRepository extends JpaRepository<Spu, Long> {
    Spu findOneById(Long id);

    Page<Spu> findByCategoryIdOrderByCategoryId(Long cid, Pageable pageable);
    Page<Spu> findByRootCategoryIdOrderByRootCategoryId(Long cid, Pageable pageable);
}
