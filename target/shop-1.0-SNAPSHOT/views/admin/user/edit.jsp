<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 3/22/2020
  Time: 8:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-admin-user"/>
<c:url var ="Userurl" value="/admin-table"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Edit Table
            <small>Edit Table</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Tables</a></li>
            <li class="active">Data tables</li>
        </ol>
    </section>
    <c:if test="${not empty messageResponse}">
        <div class="alert alert-${alert}">
                ${messageResponse}
        </div>
    </c:if>
    <form id="formSubmit" action="form-horizontal" method="">
        <div class="form-group">
            <label class="control-label col-sm-2">User Name:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="userName" name="userName" placeholder="Enter username" value=${userResponse.userName}>
            </div>
        </div>
        <br/>
        <br/>
        <div class="form-group">
            <label class="control-label col-sm-2" >Password:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="password" name="password" placeholder="Enter password" value=${userResponse.password}>
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label class="control-label col-sm-2">Phone:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="phone" name="phone" placeholder="Enter phone" value=${userResponse.phone}>
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label class="control-label col-sm-2">Email:</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="email" name="email" placeholder="Enter email" value=${userResponse.email}>
            </div>
        </div>
        <br/>
        <div class="form-group">
            <label class="control-label col-sm-2" >ID role:</label>
            <div class="col-sm-6">
                <select class="form-control" name="roleId" id="roleId">
                    <c:if test="${empty userResponse.roleId}">
                        <c:forEach var="item" items="${role}">
                            <option value="${item.id}">${item.name}</option>
                        </c:forEach>
                    </c:if>
                    <c:if test="${not empty userResponse.roleId}">
                        <c:forEach var="item" items="${role}">
                            <option value="${item.id}" <c:if test="${item.id == userResponse.roleId}"> selected value</c:if> >${item.name}</option>
                        </c:forEach>
                    </c:if>
                </select>
            </div>
        </div>
        <br/>
        <br/>
        <% String result = "";%>
        <c:if test="${empty userResponse.roleId}">
            <%result= "Insert";%>
        </c:if>
        <c:if test="${not empty userResponse.roleId}">
            <%result= "Update";%>
        </c:if>
        <div class="form-group">
            <div class="col-sm-3 control-label no-padding-right">
                <button id="btnAddOrUpdateNew" type="submit" class="btn btn-default"><%=result%></button>
            </div>
        </div>
        <input type="hidden" value="${userResponse.id}" id="id" name="id">
    </form>
</div>
<script>
    $('#btnAddOrUpdateNew').click(function (e) {
        e.preventDefault();
        var data={};
        var formData = $('#formSubmit').serializeArray();
        $.each(formData, function (i,v) {
            data[""+v.name+""] =v.value;
        });
        var id = $('#id').val();
        if (id == ""){
            addUser(data);
        }else {
            updateUser(data);
        }
    });
    function addUser(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${Userurl}?type=list&id="+result.id+"&page=1&maxPageItem=2&message=insert_success";
            },
            error: function (error) {
                window.location.href = "${Userurl}?type=list&maxPageItem=2&page=1&message=error_system";
            }
        });
    }
    function updateUser(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                window.location.href = "${Userurl}?type=list&id="+result.id+"&page=1&maxPageItem=2&message=update_success";
            },
            error: function (error) {
                window.location.href = "${Userurl}?type=list&maxPageItem=2&page=1&message=error_system";
            }
        });
    }
</script>
</body>
</html>
