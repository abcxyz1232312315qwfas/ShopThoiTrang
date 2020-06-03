<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/3/2020
  Time: 1:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/common/web/header.banner.1920x300.jsp" %>
<!-- Cart view section -->
<!-- Cart view section -->
<section id="checkout">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="checkout-area">
                    <form action="/checkout" method="post">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="checkout-left">
                                    <div class="panel-group" id="accordion">
                                        <!-- Shipping Address -->
                                        <div class="panel panel-default aa-checkout-billaddress">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                                        Shippping Address
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseFour" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="aa-checkout-single-bill">
                                                                <input type="text" placeholder="First Name*" name="firstName">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="aa-checkout-single-bill">
                                                                <input type="text" placeholder="Last Name*" name="lastName">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="aa-checkout-single-bill">
                                                                <input type="text" placeholder="Company name" name="CompanyName">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="aa-checkout-single-bill">
                                                                <input type="email" placeholder="Email Address*" name="email">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="aa-checkout-single-bill">
                                                                <input type="tel" placeholder="Phone*" name="phone">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="aa-checkout-single-bill">
                                                                <textarea cols="8" rows="3" name="address">Address*</textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="aa-checkout-single-bill">
                                                                <select name="province" id="country">
                                                                    <option value="0">Select Your Country</option>
                                                                    <option value="An Giang">An Giang</option>
                                                                    <option value="Ba Ria - Vung Tau">Bà Rịa-Vũng Tàu</option>
                                                                    <option value="Bac Giang">Bạc Liêu</option>
                                                                    <option value="Bac Kan">Bắc Kạn</option>
                                                                    <option value="Bac Kan">Bắc Giang</option>
                                                                    <option value="Bac Lieu">Bạc Liêu</option>
                                                                    <option value="Bac Ninh">Bắc Ninh</option>
                                                                    <option value="Ben Tre">Bến Tre</option>
                                                                    <option value="Binh Duong">Bình Dương</option>
                                                                    <option value="Binh Đinh">Bình Định</option>
                                                                    <option value="Binh Phuoc">Bình Phước</option>
                                                                    <option value="Binh Thuan">Bình Thuận</option>
                                                                    <option value="Ca Mau">Cà Mau</option>
                                                                    <option value="Cao Bang">Cao Bằng</option>
                                                                    <option value="Ha Giang">Hà Giang</option>
                                                                    <option value="Ha Nam">Hà Nam</option>
                                                                    <option value="Hai Duong">Hải Dương</option>
                                                                    <option value="Ho Chi Minh">Hồ Chí Minh</option>
                                                                    <option value="Hung Yen">Hưng Yên</option>
                                                                    <option value="Lai Chau">Lai Châu</option>
                                                                    <option value="Lao Cai">Lào Cai</option>
                                                                    <option value="Lang Son">Lạng Sơn</option>
                                                                    <option value="Ninh Binh">Ninh Bình</option>
                                                                    <option value="Thai Binh">Thái Bình</option>
                                                                    <option value="Thai Nguyen">Thái Nguyên</option>
                                                                    <option value="Thue Thien Hue">Thừa Thiên – Huế</option>
                                                                    <option value="Tuyen Quang">Tuyên Quang</option>
                                                                    <option value="Vinh Phuc">Vĩnh Phúc</option>
                                                                    <option value="Yen Bai">Yên Bái</option>
                                                                    <option value="17">...</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="aa-checkout-single-bill">
                                                                <input type="text" placeholder="Appartment, Suite etc." name="apartment">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="aa-checkout-single-bill">
                                                                <input type="text" placeholder="Commune*" name="commune">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="aa-checkout-single-bill">
                                                                <input type="text" placeholder="District*" name="district">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="aa-checkout-single-bill">
                                                                <input type="text" placeholder="Postcode / ZIP*" name="postCode">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <div class="aa-checkout-single-bill">
                                                                <textarea cols="8" rows="3" name="specialNotes">Special Notes</textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="checkout-right">
                                    <h4>Order Summary</h4>
                                    <div class="aa-order-summary-area">
                                        <table class="table table-responsive">
                                            <thead>
                                            <tr>
                                                <th>Product</th>
                                                <th>Total</th>
                                            </tr>
                                            </thead>
                                            <c:forEach var="item" items="${model}">
                                            <tbody>
                                            <tr>
                                                <td>${item.ten}<strong>x</strong>${item.soLuongMua}</td>
                                                <td>${item.tongTien}</td>
                                            </tr>
                                            </tbody>
                                            </c:forEach>
                                            <tfoot>
                                            <tr>
                                                <th>Total</th>
                                                <td>${sum}</td>
                                            </tr>
                                            </tfoot>
                                        </table>
                                    </div>
                                    <h4>Payment Method</h4>
                                    <div class="aa-payment-method">
                                        <label for="cashdelivery"><input type="radio" value="cashdelivery" id="cashdelivery" name="paymentMethod"> Cash on Delivery </label>
                                        <label for="paypal"><input type="radio" value="paypal" id="paypal" name="paymentMethod" checked> Via Paypal </label>
                                        <img src="https://www.paypalobjects.com/webstatic/mktg/logo/AM_mc_vs_dc_ae.jpg" border="0" alt="PayPal Acceptance Mark">
                                        <input type="submit" value="Place Order" class="aa-browse-btn">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Cart view section -->
<!-- / Cart view section -->
<%@ include file="/common/web/subscribe.jsp" %>
</body>
</html>
