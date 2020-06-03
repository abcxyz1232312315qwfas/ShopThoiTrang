<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 3/21/2020
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/common/admin/header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="APIurl" value="/api-admin-user"/>
<html>
<head>
    <title>Login</title>
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
                        <div class="col-md-6">
                            <div class="aa-myaccount-login">
                                <h4>Login</h4>
                                <form action="<c:url value="/login?action=login"/>" class="aa-login-form" method="post">
                                    <label>Username or Email address<span>*</span></label>
                                    <input type="text" placeholder="Username or email" name="userName">

                                    <label>Password<span>*</span></label>
                                    <input type="password" placeholder="Password" name="password">
                                    <input type="hidden" value="login" name="action">

                                    <button type="submit" class="aa-browse-btn">Login</button>
                                    <label class="rememberme" for="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
                                    <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
                                </form>
                            </div>
                            <div><font color="#ff0a00" >${message}</font></div>
                        </div>


                        <div class="col-md-6">
                            <div class="aa-myaccount-register">
                                <h4>Register</h4>
                                <form id="formSubmit" class="aa-login-form">

                                    <label>Username or Email address<span>*</span></label>
                                    <input type="text" placeholder="Username or email" name="userName">
                                    <label>Password<span>*</span></label>
                                    <input type="password" placeholder="Password" name="password">
                                    <label>Phone<span>*</span></label>
                                    <input type="text" placeholder="Phone" name="phone">
                                    <label>Email<span>*</span></label>
                                    <input type="text" placeholder="Email" name="email">

                                    <button id="btnChangePass" type="submit" class="aa-browse-btn">Register</button>
                                    <input type="hidden" value="2" name="roleId">
                                </form>
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
<script>
    $('#btnChangePass').click(function (e) {
        e.preventDefault();
        var data={};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i,v) {
            data[""+v.name+""] =v.value;
        });
        addUser(data);
    });
    function addUser(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "/index";
            },
            error: function (error) {
                window.location.href = "/index";
            }
        });
    }
</script>
</body>
</html>
