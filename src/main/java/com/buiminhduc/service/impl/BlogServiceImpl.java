package com.buiminhduc.service.impl;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.common.annotation.Service;
import com.buiminhduc.converter.extend.BlogConverter;
import com.buiminhduc.model.entity.BlogEntity;
import com.buiminhduc.model.request.BlogRequest;
import com.buiminhduc.model.response.BlogResponse;
import com.buiminhduc.repository.BlogRepository;
import com.buiminhduc.repository.impl.BlogRepositoryImpl;
import com.buiminhduc.service.BlogService;

import java.sql.SQLException;
import java.util.List;
@Service
public class BlogServiceImpl implements BlogService {
    private BlogRepository blogRepository;
    private BlogConverter blogConverter;
    public BlogServiceImpl() {
        blogRepository = (BlogRepository) BeanFactory.getBeans().get("blogRepository");
        blogConverter = new BlogConverter();
    }
    @Override
    public void insert(BlogRequest request) {
        BlogEntity blogEntity = new BlogEntity();
        BlogEntity entity = blogConverter.converToEntity(blogEntity,request);
        try {
            new BlogRepositoryImpl().insert(entity);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(BlogRequest request) {
        BlogEntity blogEntity = new BlogEntity();
        BlogEntity entity = blogConverter.converToEntity(blogEntity,request);
        new BlogRepositoryImpl().update(entity);
    }

    @Override
    public void delete(int id) {
        try {
            blogRepository.delete(id);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<BlogResponse> findAll() {
        List<BlogEntity> blogEntities= new BlogRepositoryImpl().findAll();
        return blogConverter.convertToListResponse(blogEntities);
    }

    @Override
    public BlogEntity findById(Integer id) {
        return new BlogRepositoryImpl().findById(id);
    }
}
