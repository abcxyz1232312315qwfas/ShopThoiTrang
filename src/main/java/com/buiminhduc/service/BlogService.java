package com.buiminhduc.service;

import com.buiminhduc.model.entity.BlogEntity;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.request.BlogRequest;
import com.buiminhduc.model.response.BlogResponse;

import java.util.List;

public interface BlogService {
    void insert(BlogRequest request);

    void update(BlogRequest request);

    void delete (int id);

    List<BlogResponse> findAll();

    BlogEntity findById(Integer id);
}
