<%@include file="/common/taglib.jsp"%>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 3/28/2020
  Time: 3:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Blog</title>
</head>
<body>
<%@ include file="/common/web/header.banner.1920x300.jsp" %>
<!-- Blog Archive -->
<section id="aa-blog-archive">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-blog-archive-area">
                    <div class="row">
                        <div class="col-md-9">
                            <div class="aa-blog-content">
                                <div class="row">
                                <c:forEach var="item" items="${MODEL}">
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
                                </c:forEach>
                                </div>
                            </div>
                            <!-- Blog Pagination -->
                            <div class="aa-blog-archive-pagination">
                                <nav>
                                    <ul class="pagination">
                                        <li>
                                            <a aria-label="Previous" href="#">
                                                <span aria-hidden="true">«</span>
                                            </a>
                                        </li>
                                        <li class="active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li>
                                            <a aria-label="Next" href="#">
                                                <span aria-hidden="true">»</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <aside class="aa-blog-sidebar">
                                <div class="aa-sidebar-widget">
                                    <h3>Category</h3>
                                    <ul class="aa-catg-nav">
                                        <li><a href="#">Men</a></li>
                                        <li><a href="">Women</a></li>
                                        <li><a href="">Kids</a></li>
                                        <li><a href="">Electornics</a></li>
                                        <li><a href="">Sports</a></li>
                                    </ul>
                                </div>
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
                            </aside>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Blog Archive -->

<%@ include file="/common/web/subscribe.jsp" %>
</body>
</html>
