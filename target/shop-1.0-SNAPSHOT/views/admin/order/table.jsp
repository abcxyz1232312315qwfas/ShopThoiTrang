<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/4/2020
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-user"/>
<c:url var ="Userurl" value="/admin-table-order"/>
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
            Data Tables
            <small>advanced tables</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Tables</a></li>
            <li class="active">Data tables</li>
        </ol>
    </section>

    <!-- Main content -->
    <form action="<c:url value='/admin-table-order'/>" id="formSubmit" method="get">
        <section class="content">
            <div class="row">
                <div class="col-xs-12">

                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Data Table Order Product With Full Features</h3>
                        </div><!-- /.box-header -->

                        <%--                    sort --%>
                        <c:if test="${not empty messageResponse}">
                            <div class="alert alert-${alert}">
                                    ${messageResponse}
                            </div>
                        </c:if>
                        <%--                        sort --%>
                    </div>
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Phone</th>
                                <th>Province</th>
                                <th>Total</th>
                                <th>Payment methods</th>
                                <th></th>
                            </tr>
                            <tbody>
                            <c:forEach var="item" items="${model.listResult}">
                                <tr>
                                    <th>${item.id}</th>
                                    <th>${item.firstName} ${item.lastName}</th>
                                    <th>${item.phone}</th>
                                    <th>${item.province}</th>
                                    <th>${item.tongTien}</th>
                                    <th>${item.paymentMethod}</th>
                                    <th>
                                        <a class="btn-group-vertical" data-toggle="tooltip" title="View detail" href="/admin-table-order-detail?id=${item.id}">
                                            <i class="fa fa-info-circle" aria-hidden="true"></i>
                                        </a>
                                    </th>
                            </c:forEach>
                            </tbody>
                        </table>
                        <div class="container">
                            <nav aria-label="Page navigation">
                                <ul class="pagination" id="pagination"></ul>
                                <input type="hidden" value="" id="page" name="page">
                                <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
                                <input type="hidden" value="" id="sortName" name="sortName">
                                <input type="hidden" value="" id="sortBy" name="sortBy">
                                <input type="hidden" value="list" id="type" name="type">
                            </nav>
                        </div>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->
        </section><!-- /.content -->
    </form>
</div><!-- /.content-wrapper -->
</form>
<script>
    var totalPage = ${model.totalPage}; //tong so trang
    var currentPage = ${model.page};     //trang hien tai
    var visiblePages = ${model.maxPageItem};
    var sortName= '${model.sortName}';
    var sortBy= '${model.sortBy}';
    var limit =5;
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPage,
            visiblePages: 10,        //tong so item tren 1 page
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage!= page){
                    $('#maxPageItem').val(limit);
                    $('#page').val(page);
                    $('#sortName').val(sortName);
                    $('#sortBy').val(sortBy);
                    $('#formSubmit').submit();
                }
            }
        })
    });
</script>
</body>
</html>
