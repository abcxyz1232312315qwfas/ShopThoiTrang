package com.buiminhduc.service.impl;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.common.annotation.Service;
import com.buiminhduc.converter.extend.ProductConverter;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.request.ProductRequest;
import com.buiminhduc.model.response.ProductResponse;
import com.buiminhduc.paging.Pageable;
import com.buiminhduc.repository.ProductRepository;
import com.buiminhduc.repository.impl.ProductRepositoryImpl;
import com.buiminhduc.service.ProductService;

import java.sql.SQLException;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    private ProductRepository productRepository;
    private ProductConverter productConverter;
    public ProductServiceImpl() {
        productRepository = (ProductRepository) BeanFactory.getBeans().get("productRepository");
        productConverter = new ProductConverter();
    }
    @Override
    public void insert(ProductRequest request) {
        ProductEntity productEntity = new ProductEntity();
        ProductEntity entity = productConverter.converToEntity(productEntity,request);
        try {
            new ProductRepositoryImpl().insert(entity);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(ProductRequest request) {
        ProductEntity productEntity = new ProductEntity();
        ProductEntity entity = productConverter.converToEntity(productEntity,request);
        new ProductRepositoryImpl().update(entity);
    }

    @Override
    public void delete(int id) {
        try {
            productRepository.delete(id);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }


    @Override
    public List<ProductResponse> findAll() {
        List<ProductEntity> userEntities= new ProductRepositoryImpl().findAll();
        return productConverter.convertToListResponse(userEntities);
    }

    @Override
    public List<ProductResponse> findAllById(String name, String idUser,String orderName, String ordeBy) {
        List<ProductEntity> productEntities= new ProductRepositoryImpl().findAllById(name,idUser,orderName,ordeBy);
        return productConverter.convertToListResponse(productEntities);
    }

    @Override
    public List<ProductResponse> findAll(Pageable pageable) {
        List<ProductEntity> productEntities= new ProductRepositoryImpl().findAll(pageable);
        return productConverter.convertToListResponse(productEntities);
    }

    @Override
    public List<ProductResponse> findAll(Pageable pageable, String sortName, String sortBy,String nameProduct) {
        List<ProductEntity> productEntities= new ProductRepositoryImpl().findAll(pageable,sortName,sortBy,nameProduct);
        return productConverter.convertToListResponse(productEntities);
    }

    @Override
    public long count() {
        return new ProductRepositoryImpl().count();
    }

    @Override
    public long countById(String name, String conditions) {
        return new ProductRepositoryImpl().countById(name,conditions);
    }

    @Override
    public ProductEntity findById(Integer id) {
        return new ProductRepositoryImpl().findById(id);
    }

    @Override
    public void deleteByIds(int[] ids) {
        new ProductRepositoryImpl().deleteByIds(ids);
    }


}
