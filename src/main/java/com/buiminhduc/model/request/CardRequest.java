package com.buiminhduc.model.request;

import com.buiminhduc.common.annotation.Column;

public class CardRequest {
    private Integer maSp;
    private Integer soLuongMua;
    private Integer id_user;
    private Integer tongTien;
    public CardRequest() {
    }

    public CardRequest(Integer maSp, Integer soLuongMua, Integer id_user, Integer tongTien) {
        this.maSp = maSp;
        this.soLuongMua = soLuongMua;
        this.id_user = id_user;
        this.tongTien = tongTien;
    }

    public CardRequest(Integer maSp, Integer soLuongMua, Integer id_user) {
        this.maSp = maSp;
        this.soLuongMua = soLuongMua;
        this.id_user = id_user;
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
                ", maSp=" + maSp +
                ", soLuongMua=" + soLuongMua +
                ", id_user=" + id_user +
                ", tongTien=" + tongTien +
                '}';
    }

}
