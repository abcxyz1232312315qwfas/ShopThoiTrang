package com.buiminhduc.converter.extend;

import com.buiminhduc.converter.impl.ConverterImpl;
import com.buiminhduc.model.entity.BlogEntity;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.request.BlogRequest;
import com.buiminhduc.model.request.ProductRequest;
import com.buiminhduc.model.response.BlogResponse;
import com.buiminhduc.model.response.ProductResponse;

import java.util.ArrayList;
import java.util.List;

public class BlogConverter extends ConverterImpl<BlogRequest, BlogResponse, BlogEntity> {
    @Override
    public BlogEntity converToEntity(BlogEntity blogEntity, BlogRequest blogRequest) {
        return super.converToEntity(blogEntity, blogRequest);
    }

    @Override
    public BlogResponse converToResponse(BlogResponse blogResponse, BlogEntity blogEntity) {
        return super.converToResponse(blogResponse, blogEntity);
    }

    @Override
    public List<BlogResponse> convertToListResponse(List<BlogEntity> blogEntities) {
        List<BlogResponse> vs = new ArrayList<>();
        for (BlogEntity blogEntity: blogEntities) {
            BlogResponse blogResponse = new BlogResponse();
            blogResponse= converToResponse(blogResponse,blogEntity);
            vs.add(blogResponse);
        }
        return vs;
    }
}
