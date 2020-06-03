package com.buiminhduc.repository;

import com.buiminhduc.common.annotation.Repository;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.paging.Pageable;

import java.util.List;

public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {
    List<ProductEntity> findAll();
    ProductEntity findById(Integer id);
    List<ProductEntity> findAllLimit3();
    void deleteByIds(int[] ids);
}
