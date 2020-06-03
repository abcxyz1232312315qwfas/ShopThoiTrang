<%@include file="/common/taglib.jsp"%>
<!-- start header bottom  -->
<div class="aa-header-bottom">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-header-bottom-area">
                    <!-- logo  -->
                    <div class="aa-logo">
                        <!-- Text based logo -->
                        <a href="/index">
                            <span class="fa fa-shopping-cart"></span>
                            <p>dailyShop<span>Your Shopping Partner</span></p>
                        </a>
                        <!-- img based logo -->
                        <!-- <a href="index.html"><img src="img/logo.jpg" alt="logo img"></a> -->
                    </div>
                    <!-- / logo  -->
                    <!-- cart box -->
                    <c:if test="${not empty USER}">
                        <div class="aa-cartbox">
                        <a class="aa-cart-link" href="#">
                                <span class="fa fa-shopping-basket"></span>
                                <span class="aa-cart-title">SHOPPING CART</span>
                                <span class="aa-cart-notify">2</span>
                        </a>
                        <div class="aa-cartbox-summary">
                            <ul>
<%--                                <c:forEach var="item" items="${Cart}">--%>
<%--                                <li>--%>
<%--                                    <a class="aa-cartbox-img" href="#"><img src="<c:url value="${item.hinhAnh}"/>" alt="img"></a>--%>
<%--                                    <div class="aa-cartbox-info">--%>
<%--                                        <h4><a href="#">${item.ten}</a></h4>--%>
<%--                                        <p>${item.soLuongMua} x ${item.giaBan}</p>--%>
<%--                                    </div>--%>
<%--&lt;%&ndash;                                    <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>&ndash;%&gt;--%>
<%--                                </li>--%>
<%--                                </c:forEach>--%>
                                <li>
                      <span class="aa-cartbox-total-title">
                        Total
                      </span>
                                    <span class="aa-cartbox-total-price">
<%--                                            ${item.Sum}--%>
                      </span>
                                </li>
                            </ul>
                            <a class="aa-cartbox-checkout aa-primary-btn" href="checkout.html">Checkout</a>
                        </div>
                    </div>
                    </c:if>
                    <!-- / cart box -->
                    <!-- search box -->
                    <div class="aa-search-box">
                        <form action="/search" method="get">
                            <input type="text" name="ten" placeholder="Search here ex. 'man' ">
                            <button type="submit"><span class="fa fa-search"></span></button>
                        </form>
                    </div>
                    <!-- / search box -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- / header bottom  -->
