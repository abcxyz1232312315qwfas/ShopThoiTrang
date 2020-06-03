<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 3/28/2020
  Time: 3:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product</title>
</head>
<body>
<%@ include file="/common/web/header.banner.1920x300.jsp" %>
<!-- product category -->
<section id="aa-product-category">
    <form <c:url value='/product'/> id="formSubmit">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
                <div class="aa-product-catg-content">
                    <div class="aa-product-catg-head">
<%--                            Sorted by price :--%>
<%--                            <input type="submit" name="sortName" value="null" >--%>
<%--                            <input type="submit" name="sortName" value="asc">--%>
<%--                            <input type="submit" name="sortName" value="desc">--%>
                        <div class="aa-product-catg-head-right">
                            <a id="grid-catg" href="#"><span class="fa fa-th"></span></a>
                            <a id="list-catg" href="#"><span class="fa fa-list"></span></a>
                        </div>
                    </div>
                    <div class="aa-product-catg-body">
                        <ul class="aa-product-catg">
                            <c:forEach var="item" items="${model.listResult}">
                            <!-- start single product item -->
                            <li>
                                <figure>
                                    <a class="aa-product-img" href="#"><img src="<c:url value="${item.hinhAnh}"/>" alt="${item.tenSanPham}"></a>
                                    <a class="aa-add-card-btn"href="/MyCart?maSp=${item.id}&action=insert"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                    <figcaption>
                                        <h4 class="aa-product-title"><a href="#">${item.tenSanPham}</a></h4>
                                        <span class="aa-product-price">${item.giaBan}</span><span class="aa-product-price"></span>
                                        <p class="aa-product-descrip">${item.thongTinChiTiet}</p>
                                    </figcaption>
                                </figure>
                                <div class="aa-product-hvr-content">
                                    <a href="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                    <a href="/product/detail?id=${item.id}" data-toggle="tooltip" data-placement="top" title="View detail"><span class="fa fa-exchange"></span></a>
                                    <a href="" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                </div>
                                <!-- product badge -->
                                <span class="aa-badge aa-sale" href="#">SALE!</span>
                            </li>
                            </c:forEach>
                        </ul>
                        <!-- quick view modal -->
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
                                                                    <img src="img/view-slider/medium/polo-shirt-1.png" class="simpleLens-big-image">
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="simpleLens-thumbnails-container">
                                                            <a href="#" class="simpleLens-thumbnail-wrapper"
                                                               data-lens-image="img/view-slider/large/polo-shirt-1.png"
                                                               data-big-image="img/view-slider/medium/polo-shirt-1.png">
                                                                <img src="img/view-slider/thumbnail/polo-shirt-1.png">
                                                            </a>
                                                            <a href="#" class="simpleLens-thumbnail-wrapper"
                                                               data-lens-image="img/view-slider/large/polo-shirt-3.png"
                                                               data-big-image="img/view-slider/medium/polo-shirt-3.png">
                                                                <img src="img/view-slider/thumbnail/polo-shirt-3.png">
                                                            </a>
                                                            <a href="#" class="simpleLens-thumbnail-wrapper"
                                                               data-lens-image="img/view-slider/large/polo-shirt-4.png"
                                                               data-big-image="img/view-slider/medium/polo-shirt-4.png">
                                                                <img src="img/view-slider/thumbnail/polo-shirt-4.png">
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal view content -->
                                            <div class="col-md-6 col-sm-6 col-xs-12">
                                                <div class="aa-product-view-content">
                                                    <h3>T-Shirt</h3>
                                                    <div class="aa-price-block">
                                                        <span class="aa-product-view-price">$34.99</span>
                                                        <p class="aa-product-avilability">Avilability: <span>In stock</span></p>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis animi, veritatis quae repudiandae quod nulla porro quidem, itaque quis quaerat!</p>
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
                                                        <a href="#" class="aa-add-to-cart-btn"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                        <a href="#" class="aa-add-to-cart-btn">View Details</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.modal-content -->
                            </div><!-- /.modal-dialog -->
                        </div>
                        <!-- / quick view modal -->
                    </div>
                    <div class="container">
                        <nav aria-label="Page navigation">
                            <ul class="pagination" id="pagination"></ul>
                            <input type="hidden" value="" id="page" name="page">
                            <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
                            <input type="hidden" value="" id="sortBy" name="sortBy">
                            <input type="hidden" value="" id="sortName" name="sortName">
                            <input type="hidden" value="" id="ten" name="ten">
                        </nav>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
                <aside class="aa-sidebar">
                    <div class="aa-sidebar-widget">
                        <h3>Sort By Price</h3>
                        <div class="tag-cloud">
                            <a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Default</a>
                            <a href="/product?page=1&maxPageItem=9&sortName=asc&sortBy=null&ten=null">Ascending</a>
                            <a href="/product?page=1&maxPageItem=9&sortName=desc&sortBy=null&ten=null">Decrease</a>
                        </div>
                    </div>
                </aside>
            </div>


            <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
                <aside class="aa-sidebar">
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3>Category</h3>
                        <ul class="aa-catg-nav">
                            <li><a href="#">Men</a></li>
                            <li><a href="">Women</a></li>
                            <li><a href="">Kids</a></li>
                            <li><a href="">Shoes</a></li>
                            <li><a href="">Bags</a></li>
                        </ul>
                    </div>
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3>Tags</h3>
                        <div class="tag-cloud">
                            <a href="#">Fashion</a>
                            <a href="#">Ecommerce</a>
                            <a href="#">Shop</a>
                            <a href="#">Hand Bag</a>
                            <a href="#">Laptop</a>
                            <a href="#">Head Phone</a>
                            <a href="#">Pen Drive</a>
                        </div>
                    </div>
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3>Shop By Price</h3>
                        <!-- price range -->
                        <div class="aa-sidebar-price-range">
                            <form action="">
                                <div id="skipstep" class="noUi-target noUi-ltr noUi-horizontal noUi-background">
                                </div>
                                <span id="skip-value-lower" class="example-val">30.00</span>
                                <span id="skip-value-upper" class="example-val">100.00</span>
                                <button class="aa-filter-btn" type="submit">Filter</button>
                            </form>
                        </div>

                    </div>
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3>Shop By Color</h3>
                        <div class="aa-color-tag">
                            <a class="aa-color-green" href="#"></a>
                            <a class="aa-color-yellow" href="#"></a>
                            <a class="aa-color-pink" href="#"></a>
                            <a class="aa-color-purple" href="#"></a>
                            <a class="aa-color-blue" href="#"></a>
                            <a class="aa-color-orange" href="#"></a>
                            <a class="aa-color-gray" href="#"></a>
                            <a class="aa-color-black" href="#"></a>
                            <a class="aa-color-white" href="#"></a>
                            <a class="aa-color-cyan" href="#"></a>
                            <a class="aa-color-olive" href="#"></a>
                            <a class="aa-color-orchid" href="#"></a>
                        </div>
                    </div>
                    <!-- single sidebar -->
                    <div class="aa-sidebar-widget">
                        <h3>Recently Views</h3>
                        <div class="aa-recently-views">
                            <ul>
                                <c:forEach var="item" items="${recently}">
                                <li>
                                    <a href="/product/detail?id=${item.id}" class="aa-cartbox-img"><img alt="img" src="<c:url value="${item.hinhAnh}"/>"></a>
                                    <div class="aa-cartbox-info">
                                        <h4><a href="#">${item.tenSanPham}</a></h4>
                                        <p>1 x ${item.giaBan}</p>
                                    </div>
                                </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </aside>
            </div>

        </div>
    </div>
    </form>
</section>
<script type="text/javascript">
    var totalPage = ${model.totalPage}; //tong so trang
    var currentPage = ${model.page};     //trang hien tai
    var visiblePages = ${model.maxPageItem};
    var sortName= '${model.sortName}';
    var sortBy= '${model.sortBy}';
    var ten='${model.ten}';
    var limit =9;   //so phan tu hien ra
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPage,
            visiblePages: 10,        //tong so item tren 1 page
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage!= page) {
                    $('#maxPageItem').val(limit);
                    $('#page').val(page);
                    $('#sortName').val(sortName);
                    $('#sortBy').val(sortBy);
                    $('#ten').val(ten);
                    $('#formSubmit').submit();
                }
            }
        }).on('page', function (event, page) {
            console.info(page + ' (from event listening)');
        });
    });
</script>
<!-- / product category -->
<%@ include file="/common/web/subscribe.jsp" %>
</body>
</html>
