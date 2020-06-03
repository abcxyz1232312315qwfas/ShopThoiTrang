<%@ page import="java.time.LocalDate" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/4/2020
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Edit Product
            <small>13 product</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Mailbox</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <form action="/admin-table-product-insert" method="post">
        <div class="row">
            <div class="col-md-9">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Product</h3>
                    </div><!-- /.box-header -->

                    <div class="box-body">
                        <div class="form-group">
                             <input class="form-control" id="tenSanPham" name="tenSanPham" placeholder="Nhap Ten San Pham:"  />
                        </div>

                        <div class="form-group">
                            <div class="form-group">
                                <input class="form-control" id="hinhAnh" name="hinhAnh" placeholder="Nhap Ten Hinh Anh:" />
                            </div>
                            <p class="help-block">Max. 32MB</p>
                        </div>

                        <div class="form-group">
                             <textarea id="thongTinChiTiet" name="thongTinChiTiet" class="form-control" style="height: 250px" placeholder="Nhap Thong Tin Chi Tiet:" ></textarea>
                        </div>

                        <div class="form-group">
                            <input class="form-control" id="giaBan" name="giaBan" placeholder="Nhap Gia Ban:" />
                        </div>

                        <div class="form-group">
                            <input class="form-control" id="soLuong" name="soLuong" placeholder="Nhap So Luong:" />
                        </div>

                        <div class="form-group">
                            <input class="form-control" id="mauSac" name="mauSac" placeholder="Nhap Mau Sac:"  />
                        </div>

                        <div class="form-group">
                            <input class="form-control" id="size" name="size" placeholder="Nhap Size:" />
                        </div>

                        <div class="form-group">
                            <input class="form-control" id="tag" name="tag" placeholder="Nhap Tag:" />
                        </div>

                        <div class="form-group">
                            <input class="form-control" id="trangThai" name="trangThai" placeholder="Nhap Trang Thai:" />
                        </div>

                        <div class="form-group">
                            <div class="col-sm-6">
                                <select class="form-control" name="idMenuCon" id="idMenuCon">
                                    <option value="1">Men</option>
                                    <option value="2">Women</option>
                                    <option value="3">Kids</option>
                                    <option value="4">Shoes</option>
                                    <option value="5">Bags</option>
                                </select>
                            </div>
                        </div>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <div class="pull-right">
                            <button type="submit"class="btn btn-primary"><i class="fa fa-check" aria-hidden="true"></i>Comfirm</button>
                        </div>
                        <button class="btn btn-default"><i class="fa fa-ban" aria-hidden="true"></i>Cancel</button>
                    </div><!-- /.box-footer -->
                </div><!-- /. box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
        </form>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
</body>
</html>
