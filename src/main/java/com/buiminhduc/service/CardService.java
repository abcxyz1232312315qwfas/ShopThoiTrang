package com.buiminhduc.service;

import com.buiminhduc.model.entity.CardEntity;
import com.buiminhduc.model.entity.SyntheticEntity;
import com.buiminhduc.model.request.CardRequest;
import com.buiminhduc.model.response.CardResponse;

import java.util.List;

public interface CardService {
    void insert(CardRequest request);

    void update(CardRequest request);

    void delete (int id);

    List<CardResponse> findAll();

    CardEntity findById(Integer id);

    List<CardResponse> findAllById(String name ,String idUser, String orderName, String orderBy);

    List<SyntheticEntity> findAllByIdUser(String name , String idUser);

    int tongTien(int id_User);

    boolean kiemTraSanPhamCoTrongCard(int maSanPham);

    long countById(String name, String conditions);

    void updateCard(String soLuong,String id, String maSp);

}
