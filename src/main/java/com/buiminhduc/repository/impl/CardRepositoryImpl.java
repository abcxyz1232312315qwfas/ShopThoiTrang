package com.buiminhduc.repository.impl;

import com.buiminhduc.common.annotation.Repository;
import com.buiminhduc.model.entity.CardEntity;
import com.buiminhduc.model.entity.SyntheticEntity;
import com.buiminhduc.model.entity.WishListEntity;
import com.buiminhduc.repository.CardRepository;
import com.buiminhduc.util.AnnotationUtil;
import com.buiminhduc.util.MySqlConnectionUtil;
import com.buiminhduc.util.ObjectUtil;
import com.buiminhduc.util.pool.ConnectionPoolImpl;
import org.apache.commons.lang.StringUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
@Repository
public class CardRepositoryImpl extends BasicQuery<CardEntity, Integer> implements CardRepository {

    @Override
    public boolean kiemTraSanPhamCoTrongCard(int maSanPham) {
        CardRepository cardRepository = new CardRepositoryImpl();
        List<CardEntity> entities = cardRepository.findAll();
        for (CardEntity cardEntity : entities) {
            if (cardEntity.getMaSp() == maSanPham){
                return true;
            }
        }
        return false;
    }

    @Override
    public List<SyntheticEntity> findAllByIdUser(String name, String idUser) {
        Connection connection = ((ConnectionPoolImpl)(connectionPool)).takeOut();
        StringBuilder sql = new StringBuilder("select SanPham.hinhAnh, SanPham.ten,SanPham.giaBan, soLuongMua , (soLuongMua*giaBan), SanPham.maSp, id_mycart from GIOHANG, sanpham").append(" where GIOHANG.maSp = SanPham.maSp")
                .append(Query.AND).append(name).append(" = ").append(idUser);
        PreparedStatement ps;
        try {
            ps = connection.prepareStatement(sql.toString());
            ResultSet resultSet = ps.executeQuery();
            List<SyntheticEntity> list = new ArrayList<>();
            while (resultSet.next()){
                SyntheticEntity syntheticEntity= new SyntheticEntity();
                syntheticEntity.setHinhAnh(resultSet.getString(1));
                syntheticEntity.setTen(resultSet.getString(2));
                syntheticEntity.setGiaBan(resultSet.getInt(3));
                syntheticEntity.setSoLuongMua(resultSet.getInt(4));
                syntheticEntity.setTongTien(resultSet.getInt(5));
                syntheticEntity.setMaSp(resultSet.getString(6));
                syntheticEntity.setId_myCard(resultSet.getInt(7));
                list.add(syntheticEntity);
            }
            return list;
        } catch (SQLException e) {
            return null;
        }finally {
            ((ConnectionPoolImpl)connectionPool).takeIn(connection);
        }
    }

    @Override
    public int tongTien(int id_User) {
        Connection connection = ((ConnectionPoolImpl)(connectionPool)).takeOut();
        StringBuilder sql = new StringBuilder("select sum((soLuongMua*GiaBan)) from giohang,sanpham where  GIOHANG.maSp = SanPham.maSp AND id_user = "+id_User+";");
        PreparedStatement ps;
        try {
            ps = connection.prepareStatement(sql.toString());
            ResultSet resultSet = ps.executeQuery();
            int a = 0;
            while (resultSet.next()){
                a=resultSet.getInt(1);
            }
            return a;
        } catch (SQLException e) {
            return 0;
        }finally {
            ((ConnectionPoolImpl)connectionPool).takeIn(connection);
        }
    }

    @Override
    public void updateCard(String soLuong, String id, String maSp) throws SQLException {
        String sql = "update GIOHANG set soLuongMua = "+soLuong+" where id_user="+id+" and GIOHANG.maSp="+maSp+"";
        try {
            new MySqlConnectionUtil().thucThiCauLenhSQL(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public <S extends CardEntity> S findById(Integer integer) {
        return super.findById(integer);
    }
}
