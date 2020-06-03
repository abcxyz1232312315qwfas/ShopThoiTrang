package com.buiminhduc.repository.impl;

import com.buiminhduc.common.annotation.Repository;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.paging.Pageable;
import com.buiminhduc.repository.ProductRepository;
import com.buiminhduc.util.AnnotationUtil;
import com.buiminhduc.util.ObjectUtil;
import com.buiminhduc.util.pool.ConnectionPoolImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@Repository
public class ProductRepositoryImpl extends BasicQuery<ProductEntity, Integer> implements ProductRepository {
    @Override
    public List<ProductEntity> findAll()  {
        return super.findAll();
    }

    @Override
    public ProductEntity findById(Integer id) {
        return super.findById(id);
    }

    @Override
    public List<ProductEntity> findAllLimit3() {
        Connection connection = ((ConnectionPoolImpl)(connectionPool)).takeOut();
        StringBuilder sql = new StringBuilder(Query.SELECT).append(AnnotationUtil.getTableName(tClass));
        sql.append(" limit 3");
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sql.toString());
            ResultSet resultSet = ps.executeQuery();
            List<ProductEntity> list = new ArrayList<>();
            while (resultSet.next()){
                ProductEntity t = (ProductEntity) ObjectUtil.map(tClass, resultSet);
                list.add(t);

            }
            return (List<ProductEntity>) list;
        } catch (SQLException | IllegalAccessException | InstantiationException |NoSuchFieldException e) {
            return null;
        }finally {
            ((ConnectionPoolImpl)connectionPool).takeIn(connection);
        }
    }

    @Override
    public void deleteByIds(int[] ids) {
        for (int id: ids) {
            new ProductRepositoryImpl().delete(id);
        }
    }

    @Override
    public <S extends ProductEntity> List<S> findAllById(String name,String idUser, String orderName, String orderBy) {
        return super.findAllById(name, idUser,orderName,orderBy);
    }

    @Override
    public <S extends ProductEntity> List<S> findAll(Pageable pageable) {
        return super.findAll(pageable);
    }

    @Override
    public <S extends ProductEntity> List<S> findAll(Pageable pageable, String sortName, String sortBy,String nameProduct) {
        return super.findAll(pageable, sortName, sortBy,nameProduct);
    }

    @Override
    public long count() {
        return super.count();
    }

    @Override
    public long countById(String name, String conditions) {
        return super.countById(name, conditions);
    }
}
