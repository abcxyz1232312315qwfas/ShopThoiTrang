package com.buiminhduc.repository;


import com.buiminhduc.model.entity.CheckOutEntity;

public interface CheckOutRepository extends JpaRepository<CheckOutEntity, Integer> {
    int tongTien();
}
