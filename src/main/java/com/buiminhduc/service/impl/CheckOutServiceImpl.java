package com.buiminhduc.service.impl;

import com.buiminhduc.autowire.BeanFactory;
import com.buiminhduc.common.annotation.Service;
import com.buiminhduc.converter.extend.CheckOutConverter;
import com.buiminhduc.model.entity.CheckOutEntity;
import com.buiminhduc.model.entity.ProductEntity;
import com.buiminhduc.model.entity.SyntheticEntity;
import com.buiminhduc.model.entity.UserEntity;
import com.buiminhduc.model.request.CheckOutRequest;
import com.buiminhduc.model.response.CheckOutResponse;
import com.buiminhduc.model.response.ProductResponse;
import com.buiminhduc.model.response.UserResponse;
import com.buiminhduc.paging.Pageable;
import com.buiminhduc.repository.CheckOutRepository;
import com.buiminhduc.repository.impl.CheckOutRepositoryImpl;
import com.buiminhduc.repository.impl.ProductRepositoryImpl;
import com.buiminhduc.service.CheckOutService;
import com.buiminhduc.util.MySqlConnectionUtil;
import com.buiminhduc.util.pool.ConnectionPoolImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Service
public class CheckOutServiceImpl implements CheckOutService {
    private CheckOutRepository checkOutRepository;
    private CheckOutConverter checkOutConverter;
    public CheckOutServiceImpl() {
        checkOutRepository = (CheckOutRepository) BeanFactory.getBeans().get("checkOutRepository");
        checkOutConverter = new CheckOutConverter();
    }
    @Override
    public void insert(CheckOutRequest request) {
        CheckOutEntity checkOutEntity = new CheckOutEntity();
        CheckOutEntity entity = checkOutConverter.converToEntity(checkOutEntity,request);
        try {
            new CheckOutRepositoryImpl().insert(entity);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<CheckOutResponse> findAll() {
        List<CheckOutEntity> checkOutEntities= new CheckOutRepositoryImpl().findAll();
        return checkOutConverter.convertToListResponse(checkOutEntities);
    }

    @Override
    public List<SyntheticEntity> listNameProduct(int idUser) {
        List<SyntheticEntity> list= new ArrayList<>();
        ResultSet resultSet = null;
        try {
            resultSet = new MySqlConnectionUtil().chonDuLieuTuDTB("select  Ten, soLuongMua ,(soLuongMua*GiaBan),HinhAnh,giaBan from GIOHANG,sanpham where GIOHANG.maSp=SANPHAM.MaSp and GIOHANG.id_user= "+idUser);
            while (resultSet.next()){
                SyntheticEntity listRequest= new SyntheticEntity();
                listRequest.setTen(resultSet.getString(1));
                listRequest.setSoLuongMua(resultSet.getInt(2));
                listRequest.setTongTien(resultSet.getInt(3));
                listRequest.setHinhAnh(resultSet.getString(4));
                listRequest.setGiaBan(resultSet.getInt(5));
                list.add(listRequest);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int tongTien() {
        return new CheckOutRepositoryImpl().tongTien();
    }

    @Override
    public long count() {
        return new CheckOutRepositoryImpl().count();
    }

    @Override
    public List<CheckOutResponse> findAll(Pageable pageable) {
        List<CheckOutEntity> checkOutEntities= new CheckOutRepositoryImpl().findAll(pageable);
        return checkOutConverter.convertToListResponse(checkOutEntities);
    }

    @Override
    public List<CheckOutResponse> findAll(Pageable pageable, String sortName, String sortBy, String nameProduct) {
        List<CheckOutEntity> checkOutEntities= new CheckOutRepositoryImpl().findAll(pageable,sortName,sortBy,nameProduct);
        return checkOutConverter.convertToListResponse(checkOutEntities);
    }

    @Override
    public CheckOutResponse findById(Integer id) {
        CheckOutResponse checkOutResponse = new CheckOutResponse();
        CheckOutEntity checkOutEntity = new CheckOutRepositoryImpl().findById(id);
        CheckOutResponse checkOutResponse1 = checkOutConverter.converToResponse(checkOutResponse,checkOutEntity);
        return checkOutResponse1;
    }


}
