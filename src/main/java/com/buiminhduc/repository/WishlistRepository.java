package com.buiminhduc.repository;

import com.buiminhduc.model.entity.SyntheticEntity;
import com.buiminhduc.model.entity.WishListEntity;
import com.buiminhduc.paging.Pageable;

import java.util.List;

public interface WishlistRepository extends JpaRepository<WishListEntity, Integer> {
    boolean kiemTraSanPhamCoTrongGioHangChua(int maSanPham);
    List<SyntheticEntity> findAllByIdUser(Pageable pageable,String name , String idUser);
    void deleteByIds(int[] ids);
}
