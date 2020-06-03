package com.buiminhduc.service;

import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.entity.SyntheticEntity;
import com.buiminhduc.model.request.CheckOutRequest;
import com.buiminhduc.model.response.CardResponse;
import com.buiminhduc.model.response.CheckOutResponse;
import com.buiminhduc.model.response.ProductResponse;
import com.buiminhduc.paging.Pageable;

import java.util.List;

public interface CheckOutService {
    void insert(CheckOutRequest request);
    List<CheckOutResponse> findAll();

    List<SyntheticEntity> listNameProduct(int idUser);

    int tongTien();

    long count();

    List<CheckOutResponse> findAll(Pageable pageable);

    List<CheckOutResponse> findAll(Pageable pageable, String sortName, String sortBy,String nameProduct);

    CheckOutResponse findById(Integer id);
}
