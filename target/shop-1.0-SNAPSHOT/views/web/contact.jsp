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
    <title>Contact</title>
</head>
<body>
<%@ include file="/common/web/header.banner.1920x300.jsp" %>
<!-- catg header banner section -->
<section id="aa-contact">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-contact-area">
                    <div class="aa-contact-top">
                        <h2>Vi To Quoc Xa Hoi Chu Nghia Vi Ly Tuong Cua Bac Ho Vi Dai</h2>
                        <p>San Sang</p>
                    </div>
                    <!-- contact map -->
                    <div class="aa-contact-map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.4720895648375!2d105.73227131437874!3d21.053798892300183!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313455af9072ccf9%3A0xadb5f7555c46683d!2zxJDhuqFpIEjhu41jIEPDtG5nIE5naGnhu4dwIEjDoCBO4buZaQ!5e0!3m2!1svi!2s!4v1582378127507!5m2!1svi!2s" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                    <!-- Contact address -->
                    <div class="aa-contact-address">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="aa-contact-address-left">
                                    <form class="comments-form contact-form" action="/contact">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" placeholder="Your Name" class="form-control" name="yourName">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="email" placeholder="Email" class="form-control" name="email">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" placeholder="Subject" class="form-control" name="subject">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <input type="text" placeholder="Company" class="form-control" name="company">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <textarea class="form-control" rows="3" placeholder="Message" name="message"></textarea>
                                        </div>
                                        <button class="aa-secondary-btn">Send</button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="aa-contact-address-right">
                                    <address>
                                        <h4>DailyShop</h4>
                                        <p>Let's live as beautiful as the swans of tchaikovsky</p>
                                        <p><span class="fa fa-home"></span>No. 298 Cau Dien Street, Bac Tu Liem District, Hanoi</p>
                                        <p><span class="fa fa-phone"></span>+84 243 765 5121</p>
                                        <p><span class="fa fa-envelope"></span>Email: dhcnhn@haui.edu.vn</p>
                                    </address>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / catg header banner section -->
<%@ include file="/common/web/subscribe.jsp" %>
</body>
</html>
