<%@include file="/common/taglib.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 3/15/2020
  Time: 8:14 PM
  To change this template use File | Settings | File Templates.
--%>
<c:url var="APIurl" value="/api-user-wishlist"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Start slider -->
<section id="aa-slider">
    <div class="aa-slider-area">
        <div id="sequence" class="seq">
            <div class="seq-screen">
                <ul class="seq-canvas">
                    <!-- single slide item -->
                    <li>
                        <div class="seq-model">
                            <img data-seq src="<c:url value="/template/web/img/slider/background4.jpg"/>" alt="Men slide img" />
                        </div>
                        <div class="seq-title">
                            <span data-seq>Save Up to 75% Off</span>
                            <h2 data-seq>Men Collection</h2>
                            <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                            <a data-seq href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                        </div>
                    </li>
                    <!-- single slide item -->
                    <li>
                        <div class="seq-model">
                            <img data-seq src="<c:url value="/template/web/img/slider/background1.jpg"/>" alt="Wristwatch slide img" />
                        </div>
                        <div class="seq-title">
                            <span data-seq>Save Up to 40% Off</span>
                            <h2 data-seq>Wristwatch Collection</h2>
                            <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                            <a data-seq href="/listproduct.jsp" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                        </div>
                    </li>
                    <!-- single slide item -->
                    <li>
                        <div class="seq-model">
                            <img data-seq src="<c:url value="/template/web/img/slider/background3.jpg"/>" alt="Women Jeans slide img" />
                        </div>
                        <div class="seq-title">
                            <span data-seq>Save Up to 75% Off</span>
                            <h2 data-seq>Jeans Collection</h2>
                            <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                            <a data-seq href="/listproduct.jsp" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                        </div>
                    </li>
                    <!-- single slide item -->
                    <li>
                        <div class="seq-model">
                            <img data-seq src="<c:url value="/template/web/img/slider/background2.jpg"/>" alt="Shoes slide img" />
                        </div>
                        <div class="seq-title">
                            <span data-seq>Save Up to 75% Off</span>
                            <h2 data-seq>Exclusive Shoes</h2>
                            <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                            <a data-seq href="/listproduct.jsp" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                        </div>
                    </li>
                    <!-- single slide item -->
                    <li>
                        <div class="seq-model">
                            <img data-seq src="<c:url value="/template/web/img/slider/background3.jpg"/>" alt="Male Female slide img" />
                        </div>
                        <div class="seq-title">
                            <span data-seq>Save Up to 50% Off</span>
                            <h2 data-seq>Best Collection</h2>
                            <p data-seq>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus, illum.</p>
                            <a data-seq href="/listproduct.jsp" class="aa-shop-now-btn aa-secondary-btn">SHOP NOW</a>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- slider navigation btn -->
            <fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">
                <a type="button" class="seq-prev" aria-label="Previous"><span class="fa fa-angle-left"></span></a>
                <a type="button" class="seq-next" aria-label="Next"><span class="fa fa-angle-right"></span></a>
            </fieldset>
        </div>
    </div>
</section>
<!-- / slider -->
<!-- Start Promo section -->
<section id="aa-promo">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-promo-area">
                    <div class="row">
                        <!-- promo left -->
                        <div class="col-md-5 no-padding">
                            <div class="aa-promo-left">
                                <div class="aa-promo-banner">
                                    <img src="<c:url value="/template/web/img/start-promo/forwoman.jpg"/>" alt="img">
                                    <div class="aa-prom-content">
                                        <span>75% Off</span>
                                        <h4><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">For Women</a></h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- promo right -->
                        <div class="col-md-7 no-padding">
                            <div class="aa-promo-right">
                                <div class="aa-single-promo-right">
                                    <div class="aa-promo-banner">
                                        <img src="<c:url value="/template/web/img/start-promo/forman.jpg"/>" alt="img">
                                        <div class="aa-prom-content">
                                            <span>Exclusive Item</span>
                                            <h4><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">For Men</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="aa-single-promo-right">
                                    <div class="aa-promo-banner">
                                        <img src="<c:url value="/template/web/img/start-promo/forshoes.jpg"/>" alt="img">
                                        <div class="aa-prom-content">
                                            <span>Sale Off</span>
                                            <h4><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">On Shoes</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="aa-single-promo-right">
                                    <div class="aa-promo-banner">
                                        <img src="<c:url value="/template/web/img/start-promo/forchil.jpg"/>" alt="img">
                                        <div class="aa-prom-content">
                                            <span>New Arrivals</span>
                                            <h4><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">For Kids</a></h4>
                                        </div>
                                    </div>
                                </div>
                                <div class="aa-single-promo-right">
                                    <div class="aa-promo-banner">
                                        <img src="<c:url value="/template/web/img/start-promo/forbag.jpg"/>" alt="img">
                                        <div class="aa-prom-content">
                                            <span>25% Off</span>
                                            <h4><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">For Bags</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Promo section -->
<!-- Products section -->
<section id="aa-product">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="aa-product-area">
                        <div class="aa-product-inner">
                            <!-- start prduct navigation -->
                            <ul class="nav nav-tabs aa-products-tab">
                                <li class="active"><a href="#men" data-toggle="tab">Men</a></li>
                                <li><a href="#women" data-toggle="tab">Women</a></li>
                                <li><a href="#sports" data-toggle="tab">Kids</a></li>
                                <li><a href="#electronics" data-toggle="tab">Shoes</a></li>
                                <li><a href="#bag" data-toggle="tab">Bags</a></li>
                            </ul>
                            <!-- Tab panes -->
                                <div class="tab-content">
                                <!-- Start men product category -->
                                <div class="tab-pane fade in active" id="men">
                                    <ul class="aa-product-catg">
                                    <c:forEach var="item" items="${men}">
                                        <!-- start single product item -->
                                        <li>
                                            <figure>
                                                <a class="aa-product-img" href="/product/detail?id=${item.id}"><img src="<c:url value="${item.hinhAnh}"/>" alt="polo shirt img"></a>
                                                <a class="aa-add-card-btn"href="/MyCart?maSp=${item.id}&action=insert"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                <figcaption>
                                                    <h4 class="aa-product-title"><a href="/product/detail?id=${item.id}">${item.tenSanPham}</a></h4>
                                                    <span class="aa-product-price">${item.giaBan}</span><span class="aa-product-price"><del>$65.50</del></span>
                                                </figcaption>
                                            </figure>
                                            <div class="aa-product-hvr-content">
                                                <a href="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                <a href="/product/detail?id=${item.id}" data-toggle="tooltip" data-placement="top" title="View detail"><span class="fa fa-exchange"></span></a>
                                                <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                            </div>
                                            <!-- product badge -->
                                            <span class="aa-badge aa-sale" href="#">SALE!</span>
                                        </li>
                                        <!-- start single product item -->

                                        <%--                                            quick view--%>
                                        <div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                        <div class="row">
                                                            <!-- Modal view slider -->
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <div class="aa-product-view-slider">
                                                                    <div class="simpleLens-gallery-container" id="demo-1">
                                                                        <div class="simpleLens-container">
                                                                            <div class="simpleLens-big-image-container">
                                                                                <a class="simpleLens-lens-image" data-lens-image="img/view-slider/large/polo-shirt-1.png">
                                                                                    <img src="<c:url value="${item.hinhAnh}"/>">
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <!-- Modal view content -->
                                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                                <div class="aa-product-view-content">
                                                                    <h3>${item.tenSanPham}</h3>
                                                                    <div class="aa-price-block">
                                                                        <span class="aa-product-view-price">${item.giaBan}</span>
                                                                        <p class="aa-product-avilability">Avilability: <span>In stock</span></p>
                                                                    </div>
                                                                    <p>${item.trangThai}</p>
                                                                    <h4>Size</h4>
                                                                    <div class="aa-prod-view-size">
                                                                        <a href="#">S</a>
                                                                        <a href="#">M</a>
                                                                        <a href="#">L</a>
                                                                        <a href="#">XL</a>
                                                                    </div>
                                                                    <div class="aa-prod-quantity">
                                                                        <form action="">
                                                                            <select name="" id="">
                                                                                <option value="0" selected="1">1</option>
                                                                                <option value="1">2</option>
                                                                                <option value="2">3</option>
                                                                                <option value="3">4</option>
                                                                                <option value="4">5</option>
                                                                                <option value="5">6</option>
                                                                            </select>
                                                                        </form>
                                                                        <p class="aa-prod-category">
                                                                            Category: <a href="#">Polo T-Shirt</a>
                                                                        </p>
                                                                    </div>
                                                                    <div class="aa-prod-view-bottom">
                                                                        <a href="/MyCart" class="aa-add-to-cart-btn"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                                        <a href="/product/detail?id=${item.id}" class="aa-add-to-cart-btn">View Details</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div><!-- /.modal-content -->
                                            </div><!-- /.modal-dialog -->
                                        </div>
                                        <!-- start single product item -->
                                    </c:forEach>
                                    </ul>
                                    <a class="aa-browse-btn" href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Browse all Product <span class="fa fa-long-arrow-right"></span></a>
                                </div>
                                <!-- / men product category -->

                                <!-- start women product category -->
                                <div class="tab-pane fade" id="women">
                                    <ul class="aa-product-catg">
                                        <c:forEach var="item" items="${women}">
                                            <!-- start single product item -->
                                            <li>
                                                <figure>
                                                    <a class="aa-product-img" href="/product/detail?id=${item.id}"><img src="<c:url value="${item.hinhAnh}"/>" alt="polo shirt img"></a>
                                                    <a class="aa-add-card-btn"href="/MyCart?maSp=${item.id}&action=insert"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="/product/detail?id=${item.id}">${item.tenSanPham}</a></h4>
                                                        <span class="aa-product-price">${item.giaBan}</span><span class="aa-product-price"><del>$65.50</del></span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="/product/detail?id=${item.id}" data-toggle="tooltip" data-placement="top" title="View detail"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#ahihi"><span class="fa fa-search"></span></a>
                                                </div>
                                                <!-- product badge -->
                                                <span class="aa-badge aa-sale" href="#">SALE!</span>
                                            </li>
                                            <!-- start single product item -->
                                        </c:forEach>
                                    </ul>
                                    <a class="aa-browse-btn" href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Browse all Product <span class="fa fa-long-arrow-right"></span></a>

                                </div>
                                <!-- / women product category -->

                                <!-- start sports product category -->
                                <div class="tab-pane fade" id="sports">
                                    <ul class="aa-product-catg">
                                        <c:forEach var="item" items="${kid}">
                                            <!-- start single product item -->
                                            <li>
                                                <figure>
                                                    <a class="aa-product-img" href="/product/detail?id=${item.id}"><img src="<c:url value="${item.hinhAnh}"/>" alt="polo shirt img"></a>
                                                    <a class="aa-add-card-btn"href="/MyCart?maSp=${item.id}&action=insert"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="/product/detail?id=${item.id}">${item.tenSanPham}</a></h4>
                                                        <span class="aa-product-price">${item.giaBan}</span><span class="aa-product-price"><del>$65.50</del></span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="/product/detail?id=${item.id}" data-toggle="tooltip" data-placement="top" title="View detail"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                                <!-- product badge -->
                                                <span class="aa-badge aa-sale" href="#">SALE!</span>
                                            </li>
                                            <!-- start single product item -->
                                        </c:forEach>
                                    </ul>
                                </div>
                                <!-- / sports product category -->

                                <!-- start shoes product category -->
                                <div class="tab-pane fade" id="electronics">
                                    <ul class="aa-product-catg">
                                        <c:forEach var="item" items="${shoes}">
                                            <!-- start single product item -->
                                            <li>
                                                <figure>
                                                    <a class="aa-product-img" href="/product/detail?id=${item.id}"><img src="<c:url value="${item.hinhAnh}"/>" alt="polo shirt img"></a>
                                                    <a class="aa-add-card-btn"href="/MyCart?maSp=${item.id}&action=insert"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="/product/detail?id=${item.id}">${item.tenSanPham}</a></h4>
                                                        <span class="aa-product-price">${item.giaBan}</span><span class="aa-product-price"><del>$65.50</del></span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="/product/detail?id=${item.id}" data-toggle="tooltip" data-placement="top" title="View detail"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                                <!-- product badge -->
                                                <span class="aa-badge aa-sale" href="#">SALE!</span>
                                            </li>
                                            <!-- start single product item -->
                                        </c:forEach>
                                    </ul>
                                    <a class="aa-browse-btn" href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Browse all Product <span class="fa fa-long-arrow-right"></span></a>
                                </div>
                                <!-- / electronic product category -->

                                <!-- start bags product category -->
                                <div class="tab-pane fade" id="bag">
                                    <ul class="aa-product-catg">
                                        <c:forEach var="item" items="${bags}">
                                            <!-- start single product item -->
                                            <li>
                                                <figure>
                                                    <a class="aa-product-img" href="/product/detail?id=${item.id}"><img src="<c:url value="${item.hinhAnh}"/>" alt="polo shirt img"></a>
                                                    <a class="aa-add-card-btn"href="/MyCart?maSp=${item.id}&action=insert"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                    <figcaption>
                                                        <h4 class="aa-product-title"><a href="/product/detail?id=${item.id}">${item.tenSanPham}</a></h4>
                                                        <span class="aa-product-price">${item.giaBan}</span><span class="aa-product-price"><del>$65.50</del></span>
                                                    </figcaption>
                                                </figure>
                                                <div class="aa-product-hvr-content">
                                                    <a href="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                    <a href="/product/detail?id=${item.id}" data-toggle="tooltip" data-placement="top" title="View detail"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                                <!-- product badge -->
                                                <span class="aa-badge aa-sale" href="#">${item.trangThai}!</span>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                    <a class="aa-browse-btn" href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Browse all Product <span class="fa fa-long-arrow-right"></span></a>
                                </div>
                                <!-- / electronic product category -->
                            </div>
                                <!-- quick view modal -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Products section -->
<!-- banner section -->
<section id="aa-banner">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="aa-banner-area">
                        <a href="#"><img src="<c:url value="/template/web/img/background1170x170.jpg"/>" alt="fashion banner img"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- popular section -->
<section id="aa-popular-category">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="aa-popular-category-area">
                        <!-- start prduct navigation -->
                        <ul class="nav nav-tabs aa-products-tab">
                            <li class="active"><a href="#popular" data-toggle="tab">Popular</a></li>
                            <li><a href="#featured" data-toggle="tab">Featured</a></li>
                            <li><a href="#latest" data-toggle="tab">Latest</a></li>
                        </ul>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <!-- Start men popular category -->
                            <div class="tab-pane fade in active" id="popular">
                                <ul class="aa-product-catg aa-popular-slider">
                                    <c:forEach var="item" items="${popular}">
                                    <!-- start single product item -->
                                        <li>
                                        <figure>
                                            <a class="aa-product-img" href="/product/detail?id=${item.id}"><img src="<c:url value="${item.hinhAnh}"/>" alt="polo shirt img"></a>
                                            <a class="aa-add-card-btn"href="/MyCart?maSp=${item.id}&action=insert"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                            <figcaption>
                                                <h4 class="aa-product-title"><a href="/product/detail?id=${item.id}">${item.tenSanPham}</a></h4>
                                                <span class="aa-product-price">${item.giaBan}</span><span class="aa-product-price"><del>$65.50</del></span>
                                            </figcaption>
                                        </figure>
                                        <div class="aa-product-hvr-content">
                                            <a href="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                            <a href="/product/detail?id=${item.id}" data-toggle="tooltip" data-placement="top" title="View detail"><span class="fa fa-exchange"></span></a>
                                            <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                        </div>
                                        <!-- product badge -->
                                        <span class="aa-badge aa-sale" href="#">${item.trangThai}!</span>
                                    </li>
                                    </c:forEach>
                                </ul>
                                <a class="aa-browse-btn" href="#">Browse all Product <span class="fa fa-long-arrow-right"></span></a>
                            </div>
                            <!-- / popular product category -->

                            <!-- start featured product category -->
                            <div class="tab-pane fade" id="featured">
                                <ul class="aa-product-catg aa-featured-slider">
                                    <c:forEach var="item" items="${featured}">
                                        <!-- start single product item -->
                                        <li>
                                            <figure>
                                                <a class="aa-product-img" href="/product/detail?id=${item.id}"><img src="<c:url value="${item.hinhAnh}"/>" alt="polo shirt img"></a>
                                                <a class="aa-add-card-btn"href="/MyCart?maSp=${item.id}&action=insert"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                <figcaption>
                                                    <h4 class="aa-product-title"><a href="/product/detail?id=${item.id}">${item.tenSanPham}</a></h4>
                                                    <span class="aa-product-price">${item.giaBan}</span><span class="aa-product-price"><del>$65.50</del></span>
                                                </figcaption>
                                            </figure>
                                            <div class="aa-product-hvr-content">
                                                <a href="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                <a href="/product/detail?id=${item.id}" data-toggle="tooltip" data-placement="top" title="View detail"><span class="fa fa-exchange"></span></a>
                                                <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                            </div>
                                            <!-- product badge -->
                                            <span class="aa-badge aa-sale" href="#">${item.trangThai}!</span>
                                        </li>
                                    </c:forEach>
                                </ul>
                                <a class="aa-browse-btn" href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Browse all Product <span class="fa fa-long-arrow-right"></span></a>
                            </div>
                            <!-- / featured product category -->

                            <!-- start latest product category -->
                            <div class="tab-pane fade" id="latest">
                                <ul class="aa-product-catg aa-latest-slider">
                                    <c:forEach var="item" items="${lastest}">
                                        <!-- start single product item -->
                                        <li>
                                            <figure>
                                                <a class="aa-product-img" href="/product/detail?id=${item.id}"><img src="<c:url value="${item.hinhAnh}"/>" alt="polo shirt img"></a>
                                                <a class="aa-add-card-btn"href="/MyCart?maSp=${item.id}&action=insert"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                <figcaption>
                                                    <h4 class="aa-product-title"><a href="/product/detail?id=${item.id}">${item.tenSanPham}</a></h4>
                                                    <span class="aa-product-price">${item.giaBan}</span><span class="aa-product-price"><del>$65.50</del></span>
                                                </figcaption>
                                            </figure>
                                            <div class="aa-product-hvr-content">
                                                <a href="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                                <a href="/product/detail?id=${item.id}" data-toggle="tooltip" data-placement="top" title="View detail"><span class="fa fa-exchange"></span></a>
                                                <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                            </div>
                                            <!-- product badge -->
                                            <span class="aa-badge aa-sale" href="#">${item.trangThai}!</span>
                                        </li>
                                    </c:forEach>
                                </ul>
                                <a class="aa-browse-btn" href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Browse all Product <span class="fa fa-long-arrow-right"></span></a>
                            </div>
                            <!-- / latest product category -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / popular section -->
<!-- Support section -->
<section id="aa-support">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-support-area">
                    <!-- single support -->
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="aa-support-single">
                            <span class="fa fa-truck"></span>
                            <h4>FREE SHIPPING</h4>
                            <P>Giao hàng tại nhà miễn phí</P>
                        </div>
                    </div>
                    <!-- single support -->
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="aa-support-single">
                            <span class="fa fa-clock-o"></span>
                            <h4>30 DAYS MONEY BACK</h4>
                            <P>Đổi trả bảo hành trong 30 ngày</P>
                        </div>
                    </div>
                    <!-- single support -->
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="aa-support-single">
                            <span class="fa fa-phone"></span>
                            <h4>SUPPORT 24/7</h4>
                            <P>Tư vấn hỗ trợ mọi lúc, mọi nơi</P>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Support section -->
<!-- Testimonial -->
<section id="aa-testimonial">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-testimonial-area">
                    <ul class="aa-testimonial-slider">
                        <!-- single slide -->
                        <li>
                            <div class="aa-testimonial-single">
                                <img class="aa-testimonial-img" src="<c:url value="/template/web/img/yasuo.jpg"/>" alt="testimonial img">
                                <span class="fa fa-quote-left aa-testimonial-quote"></span>
                                <p>“Death is like the wind – always by my side.”</p>
                                <div class="aa-testimonial-info">
                                    <p>Yasuo</p>
                                    <span>Designer</span>
                                    <a href="#">Tèo</a>
                                </div>
                            </div>
                        </li>
                        <!-- single slide -->
                        <li>
                            <div class="aa-testimonial-single">
                                <img class="aa-testimonial-img" src="<c:url value="/template/web/img/masterij.jpg"/>" alt="testimonial img">
                                <span class="fa fa-quote-left aa-testimonial-quote"></span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui!consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui.</p>
                                <div class="aa-testimonial-info">
                                    <p>KEVIN MEYER</p>
                                    <span>CEO</span>
                                    <a href="#">Alphabet</a>
                                </div>
                            </div>
                        </li>
                        <!-- single slide -->
                        <li>
                            <div class="aa-testimonial-single">
                                <img class="aa-testimonial-img" src="<c:url value="/template/web/img/zed.jpg"/>" alt="testimonial img">
                                <span class="fa fa-quote-left aa-testimonial-quote"></span>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui!consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui.</p>
                                <div class="aa-testimonial-info">
                                    <p>Luner</p>
                                    <span>COO</span>
                                    <a href="#">Kinatic Solution</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Testimonial -->

<!-- Latest Blog -->
<section id="aa-latest-blog">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-latest-blog-area">
                    <h2>LATEST BLOG</h2>
                    <div class="row">
                            <div class="col-md-4 col-sm-4">
                                <article class="aa-blog-content-single">
                                    <h4><a href="<c:url value="/blog?id=${item.id}"/>">${item.title}</a></h4>
                                    <figure class="aa-blog-img">
                                        <a href="<c:url value="/blog?id=${item.id}"/>"><img src="<c:url value="${item.image}"/>" alt="fashion img"></a>
                                    </figure>
                                    <p>${item.content}</p>
                                    <div class="aa-article-bottom">
                                        <div class="aa-post-author">
                                            Posted By <a href="#">Teo</a>
                                        </div>
                                        <div class="aa-post-date">${item.createdDate}
                                        </div>
                                    </div>
                                </article>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Latest Blog -->

<!-- Client Brand -->
<section id="aa-client-brand">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-client-brand-area">
                    <ul class="aa-client-brand-slider">
                        <li><a href="#"><img src="<c:url value="/template/web/img/client-brand-java.png"/>" alt="java img"></a></li>
                        <li><a href="#"><img src="<c:url value="/template/web/img/client-brand-jquery.png"/>" alt="jquery img"></a></li>
                        <li><a href="#"><img src="<c:url value="/template/web/img/client-brand-html5.png"/>" alt="html5 img"></a></li>
                        <li><a href="#"><img src="<c:url value="/template/web/img/client-brand-css3.png"/>" alt="css3 img"></a></li>
                        <li><a href="#"><img src="<c:url value="/template/web/img/client-brand-wordpress.png"/>" alt="wordPress img"></a></li>
                        <li><a href="#"><img src="<c:url value="/template/web/img/client-brand-joomla.png"/>" alt="joomla img"></a></li>
                        <li><a href="#"><img src="<c:url value="/template/web/img/client-brand-java.png"/>" alt="java img"></a></li>
                        <li><a href="#"><img src="<c:url value="/template/web/img/client-brand-jquery.png"/>" alt="jquery img"></a></li>
                        <li><a href="#"><img src="<c:url value="/template/web/img/client-brand-html5.png"/>" alt="html5 img"></a></li>
                        <li><a href="#"><img src="<c:url value="/template/web/img/client-brand-css3.png"/>" alt="css3 img"></a></li>
                        <li><a href="#"><img src="<c:url value="/template/web/img/client-brand-wordpress.png"/>" alt="wordPress img"></a></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Client Brand -->

<!-- / Cart view section -->
<%@ include file="/common/web/subscribe.jsp" %>
<%@ include file="/common/web/loginmodal.jsp" %>
</body>
</html>
