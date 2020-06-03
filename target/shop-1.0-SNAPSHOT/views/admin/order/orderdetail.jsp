<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/4/2020
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Right side column. Contains the navbar and content of the page -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Invoice
            <small>#007612</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Examples</a></li>
            <li class="active">Blank page</li>
        </ol>
    </section>

    <div class="pad margin no-print">
        <div class="callout callout-info" style="margin-bottom: 0!important;">
            <h4><i class="fa fa-info"></i> Note:</h4>
            This page has been enhanced for printing. Click the print button at the bottom of the invoice to test.
        </div>
    </div>

    <!-- Main content -->
    <section class="invoice">
        <!-- title row -->
        <div class="row">
            <div class="col-xs-12">
                <h2 class="page-header">
                    <i class="fa fa-globe"></i> AdminLTE, Inc.
                    <small class="pull-right">Date: 2/10/2014</small>
                </h2>
            </div><!-- /.col -->
        </div>
        <!-- info row -->
        <div class="row invoice-info">
            <div class="col-sm-4 invoice-col">
                From
                <address>
                    <strong>Admin, Inc.</strong><br>
                    Truong Dai Hoc Cong Nghiep Ha Noi<br>
                    Bac Tu Liem, Ha Noi<br>
                    Phone: 0987120758<br/>
                    Email: nhom5@gmail.com
                </address>
            </div><!-- /.col -->
            <div class="col-sm-4 invoice-col">
                To
                <address>
                    <strong>${model.firstName} ${model.lastName}</strong><br>
                    ${model.apartment} ${model.address}<br>
                    ${model.commune} ${model.district} ${model.province}<br>
                    Phone: ${model.phone}<br/>
                    Email: ${model.email}
                </address>
            </div><!-- /.col -->
            <div class="col-sm-4 invoice-col">
                <b>Invoice #007612</b><br/>
                <br/>
                <b>Order ID:</b> ${model.id}<br/>
                <b>Payment Due:</b> ${model.modifiedDate}<br/>
                <b>Id Account:</b> ${model.id_user}
            </div><!-- /.col -->
        </div><!-- /.row -->

        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Product x Amount</th>
                    </tr>
                    </thead>
                    <tbody>
                     <c:forEach var="item" items="${product}">
                         <tr>
                             <td>${item}</td>
                         </tr>
                     </c:forEach>
                    </tbody>
                </table>
            </div><!-- /.col -->
        </div><!-- /.row -->

        <div class="row">
            <!-- accepted payments column -->
            <div class="col-xs-6">
                <p class="lead">Payment Methods: ${model.paymentMethod}</p>
                <img src="<c:url value="/template/admin/dist/img/credit/visa.png"/>" alt="Visa"/>
                <img src="<c:url value="/template/admin/dist/img/credit/mastercard.png"/>" alt="Mastercard"/>
                <img src="<c:url value="/template/admin/dist/img/credit/american-express.png"/>" alt="American Express"/>
                <img src="<c:url value="/template/admin/dist/img/credit/paypal2.png"/>" alt="Paypal"/>
            </div><!-- /.col -->
            <div class="col-xs-6">
                <p class="lead">Amount Due ${model.modifiedDate}</p>
                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <th style="width:50%">Total:</th>
                            <td>${model.tongTien}</td>
                        </tr>

                    </table>
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->

        <!-- this row will not appear when printing -->
        <div class="row no-print">
            <div class="col-xs-12">
                <a href="/admin-table-order-detail-print" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
            </div>
        </div>
    </section><!-- /.content -->
    <div class="clearfix"></div>
</div><!-- /.content-wrapper -->

</body>
</html>
