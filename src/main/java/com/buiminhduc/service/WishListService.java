package com.buiminhduc.service;

import com.buiminhduc.model.entity.BlogEntity;
import com.buiminhduc.model.entity.SyntheticEntity;
import com.buiminhduc.model.entity.WishListEntity;
import com.buiminhduc.model.request.BlogRequest;
import com.buiminhduc.model.request.WishListRequest;
import com.buiminhduc.model.response.BlogResponse;
import com.buiminhduc.model.response.CardResponse;
import com.buiminhduc.model.response.WishListResponse;
import com.buiminhduc.paging.Pageable;

import java.util.List;

public interface WishListService {
    void insert(WishListRequest request);

    void update(WishListRequest request);

    void delete (int id);

    List<WishListResponse> findAll();

    WishListEntity findById(Integer id);

    List<WishListResponse> findAllById(String name , String idUser, String orderName, String orderBy);

    List<SyntheticEntity> findAllByIdUser(Pageable pageable, String name , String idUser);

    boolean kiemTraSanPhamCoTrongCard(int maSanPham);
    long count();
    void deleteByIds(int[] ids);
}
