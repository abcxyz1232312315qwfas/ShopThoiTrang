<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/3/2020
  Time: 4:19 PM
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
<section id="aa-myaccount">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-myaccount-area">
                    <div class="row">
                        <div class="alert alert-${category}">
                            <strong>${message}</strong>
                        </div>
                        <div class="col-md-6">
                            <div class="aa-myaccount-login">
                                <h4>Change Pass</h4>
                                <form action="/changepass" id="formSubmit" class="aa-login-form" method="post">
                                    <label>Old Password<span>*</span></label>
                                    <input type="password" placeholder="Old Password" name="passwordO">
                                    <label>New Password<span>*</span></label>
                                    <input type="password" placeholder="New Password" name="passwordN">
                                    <input type="hidden" value="login" name="action">
                                    <button id="btnChangePass" type="submit" class="aa-browse-btn">Confirm</button>
                                </form>
                            </div>
                        </div>
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
