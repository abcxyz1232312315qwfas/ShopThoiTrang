<%@include file="/common/taglib.jsp"%>
<!-- start header top  -->
<div class="aa-header-top">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-header-top-area">
                    <!-- start header top left -->
                    <div class="aa-header-top-left">
                        <!-- start language -->
                        <div class="aa-language">
                            <div class="dropdown">
                                <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    <img src="<c:url value="/template/web/img/flag/english.jpg"/>" alt="english flag">ENGLISH
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                    <li><a href="#"><img src=" <c:url value="/template/web/img/flag/french.jpg"/>" alt="">FRENCH</a></li>
                                    <li><a href="#"><img src="<c:url value="/template/web/img/flag/english.jpg"/>" alt="">ENGLISH</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- / language -->

                        <!-- start currency -->
                        <div class="aa-currency">
                            <div class="dropdown">
                                <a class="btn dropdown-toggle" href="#" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    <i class="fa fa-usd"></i>VND
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                    <li><a href="#"><i class="fa fa-euro"></i>EURO</a></li>
                                    <li><a href="#"><i class="fa fa-jpy"></i>YEN</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- / currency -->
                        <!-- start cellphone -->
                        <div class="cellphone hidden-xs">
                            <p><span class="fa fa-phone"></span>0987120758</p>
                        </div>
                        <!-- / cellphone -->
                    </div>
                    <!-- / header top left -->
                    <div class="aa-header-top-right">
                        <ul class="aa-head-top-nav-right">
                            <c:if test="${empty USER}">
                                <li><a href="<c:url value="/login?action=login"/>">My Account</a></li>
                            </c:if>
                            <c:if test="${not empty USER}">
                                <li><a href="<c:url value="/changepass"/>">Change Pass</a></li>
                            </c:if>
                            <li class="hidden-xs"><a href="<c:url value="/WishList?page=1&maxPageItem=3"/>">Wishlist</a></li>
                            <li class="hidden-xs"><a href="<c:url value="/MyCart"/>">My Cart</a></li>
                            <li class="hidden-xs"><a href="/checkout">Checkout</a></li>

                            <c:if test="${not empty USER}">
                                <li><a data-toggle="modal" data-target="">Hello, ${USER.userName}</a></li>
                                <li><a href="<c:url value="/login?action=logout"/>">Logout</a></li>
                            </c:if>

                            <c:if test="${empty USER}">
                                <li><a href="" data-toggle="modal" data-target="#login-modal">Login
                                </a></li>
                            </c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- / header top  -->