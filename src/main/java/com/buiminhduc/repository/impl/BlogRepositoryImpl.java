package com.buiminhduc.repository.impl;

import com.buiminhduc.common.annotation.Repository;
import com.buiminhduc.model.entity.BlogEntity;
import com.buiminhduc.repository.BlogRepository;

import java.sql.SQLException;
import java.util.List;
@Repository
public class BlogRepositoryImpl extends BasicQuery<BlogEntity, Integer> implements BlogRepository {
    @Override
    public <S extends BlogEntity> S insert(BlogEntity entity) throws SQLException {
        return super.insert(entity);
    }

    @Override
    public void update(BlogEntity entity) {
        super.update(entity);
    }

    @Override
    public <S extends BlogEntity> S findById(Integer integer) {
        return super.findById(integer);
    }

    @Override
    public void delete(Integer integer) {
        super.delete(integer);
    }

    @Override
    public <S extends BlogEntity> List<S> findAll() {
        return super.findAll();
    }

    @Override
    public <S extends BlogEntity> List<S> findAllById(String name, String idUser, String orderName, String orderBy) {
        return super.findAllById(name, idUser, orderName, orderBy);
    }

    public static void main(String[] args) {
        BlogRepository blogRepository= new BlogRepositoryImpl();
        blogRepository.findAll().stream().forEach(System.out::println);
    }
}
