package com.buiminhduc.service;

import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.request.ProductRequest;
import com.buiminhduc.model.request.UserRequest;
import com.buiminhduc.model.response.ProductResponse;
import com.buiminhduc.model.response.UserResponse;
import com.buiminhduc.paging.Pageable;

import java.sql.SQLException;
import java.util.List;

public interface ProductService {
    void insert(ProductRequest request);

    void update(ProductRequest request);

    void delete (int id);

    List<ProductResponse> findAll();

    List<ProductResponse> findAllById(String name, String idUser,String orderName, String ordeBy);

    List<ProductResponse> findAll(Pageable pageable);

    List<ProductResponse> findAll(Pageable pageable, String sortName, String sortBy,String nameProduct);

    long count();
    long countById(String name, String conditions);

    ProductEntity findById(Integer id);

    void deleteByIds(int[] ids);
}
