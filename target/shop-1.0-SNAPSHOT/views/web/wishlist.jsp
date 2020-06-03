<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 3/28/2020
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WishList</title>
</head>
<body>
<%@ include file="/common/web/header.banner.1920x300.jsp" %>
<!-- Cart view section -->
<section id="cart-view">
    <form action="<c:url value='/WishList'/>" id="formSubmit" method="get">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="cart-view-area">
                    <div class="cart-view-table aa-wishlist-table">
                        <form action="">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th>Product</th>
                                        <th>Price</th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="item" items="${model.listResult}">
                                    <tr>
                                        <td><a class="remove" href="/WishList?maSp=${item.maSp}&action=delete"><fa class="fa fa-close"></fa></a></td>
                                        <td><a href="#"><img src="<c:url value="${item.hinhAnh}"/>" alt="img"></a></td>
                                        <td><a class="aa-cart-title" href="#">${item.ten}</a></td>
                                        <td>${item.giaBan}</td>
                                        <td><a href="/MyCart?maSp=${item.maSp}&action=insert" class="aa-add-to-cart-btn">Add To Cart</a></td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <div class="container">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination" id="pagination"></ul>
                                        <input type="hidden" value="" id="page" name="page">
                                        <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
                                    </nav>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</section>
<!-- / Cart view section -->
<%@ include file="/common/web/subscribe.jsp" %>

    <script type="text/javascript">
        var totalPage = ${model.totalPage};
        var currentPage = ${model.page};
        var visiblePages = ${model.maxPageItem};
        var limit =3;
        $(function () {
            window.pagObj = $('#pagination').twbsPagination({
                totalPages: totalPage,
                visiblePages: 10,
                startPage: currentPage,
                onPageClick: function (event, page) {
                    if (currentPage!= page) {
                    $('#maxPageItem').val(limit);
                    $('#page').val(page);
                    $('#formSubmit').submit();
                    }
                }
            }).on('page', function (event, page) {
                console.info(page + ' (from event listening)');
            });
        });

</script>
</body>
</html>
