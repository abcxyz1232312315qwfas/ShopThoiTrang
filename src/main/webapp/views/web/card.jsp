<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 3/28/2020
  Time: 3:48 PM
  To change this template use File | Settings | File Templates.
--%><%int i=1;%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Card</title>
</head>
<body>
<%@ include file="/common/web/header.banner.1920x300.jsp" %>
<!-- Cart view section -->
<section id="cart-view">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="cart-view-area">
                    <div class="cart-view-table">
                        <form action="/MyCart" method="post">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th>Product</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="item" items="${model}">
                                    <tr>
                                        <td><a class="remove" href="/MyCart?id=${item.id_myCard}&action=delete"><fa class="fa fa-close"></fa></a></td>
                                        <td><a href="#"><img src="<c:url value="${item.hinhAnh}"/>" alt="img"></a></td>
                                        <td><a class="aa-cart-title" href="#">${item.ten}</a></td>
                                        <td>${item.giaBan}</td>
                                        <td><input class="aa-cart-quantity" type="text" value="${item.soLuongMua}" name="index<%=i%>" placeholder=""></td>
                                        <td>${item.tongTien}</td>
                                    </tr>
                                        <%i++;%>
                                    </c:forEach>
                                    <tr>
                                        <td colspan="6" class="aa-cart-view-bottom" align="center">
                                            <input class="aa-cart-view-btn" type="submit" value="Update Cart" align="center">
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                        <!-- Cart Total view -->
                        <div class="cart-view-total">
                            <h4>Cart Totals</h4>
                            <table class="aa-totals-table">
                                <tbody>
                                <tr>
                                    <th>Total</th>
                                    <td>${sum}</td>
                                </tr>
                                </tbody>
                            </table>
                            <a href="/checkout" class="aa-cart-view-btn">Proced to Checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Cart view section -->
<%@ include file="/common/web/subscribe.jsp" %>
</body>
</html>
