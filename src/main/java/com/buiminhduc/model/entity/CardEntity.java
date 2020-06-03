package com.buiminhduc.model.entity;

import com.buiminhduc.common.annotation.Column;
import com.buiminhduc.common.annotation.Entity;
import com.buiminhduc.common.annotation.Id;
import com.buiminhduc.common.constant.CRUD;
import com.buiminhduc.paging.PageRequest;

@Entity(name = "GIOHANG")
public class CardEntity {
    @Id(value = "id_mycart")
    private Integer id;
    @Column(value = "maSp")
    private Integer maSp;
    @Column(value = "soLuongMua")
    private Integer soLuongMua;
    @Column(value = "id_user")
    private Integer id_user;
    @Column(value = "tongtien")
    private Integer tongTien;
    public CardEntity() {
    }

    public CardEntity(Integer maSp, Integer soLuongMua, Integer id_user, Integer tongTien) {
        this.maSp = maSp;
        this.soLuongMua = soLuongMua;
        this.id_user = id_user;
        this.tongTien = tongTien;
    }

    public CardEntity(Integer id, Integer maSp, Integer soLuongMua, Integer id_user, Integer tongTien) {
        this.id = id;
        this.maSp = maSp;
        this.soLuongMua = soLuongMua;
        this.id_user = id_user;
        this.tongTien = tongTien;
    }

    public CardEntity(Integer maSp, Integer soLuongMua, Integer id_user) {
        this.maSp = maSp;
        this.soLuongMua = soLuongMua;
        this.id_user = id_user;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMaSp() {
        return maSp;
    }

    public void setMaSp(Integer maSp) {
        this.maSp = maSp;
    }

    public Integer getSoLuongMua() {
        return soLuongMua;
    }

    public void setSoLuongMua(Integer soLuongMua) {
        this.soLuongMua = soLuongMua;
    }

    public Integer getId_user() {
        return id_user;
    }

    public void setId_user(Integer id_user) {
        this.id_user = id_user;
    }

    public Integer getTongTien() {
        return tongTien;
    }

    public void setTongTien(Integer tongTien) {
        this.tongTien = tongTien;
    }

    @Override
    public String toString() {
        return "CardEntity{" +
                "id=" + id +
                ", maSp=" + maSp +
                ", soLuongMua=" + soLuongMua +
                ", id_user=" + id_user +
                ", tongTien=" + tongTien +
                '}';
    }
}
