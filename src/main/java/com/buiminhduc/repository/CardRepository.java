package com.buiminhduc.repository;

import com.buiminhduc.model.entity.CardEntity;
import com.buiminhduc.model.entity.SyntheticEntity;
import com.buiminhduc.model.entity.WishListEntity;
import com.buiminhduc.model.response.WishListResponse;

import java.sql.SQLException;
import java.util.List;

public interface CardRepository extends JpaRepository<CardEntity, Integer> {
    boolean kiemTraSanPhamCoTrongCard(int maSanPham);
    List<SyntheticEntity> findAllByIdUser(String name , String idUser);
    int tongTien(int id_User);

    void updateCard(String soLuong,String id, String maSp) throws SQLException;
}
