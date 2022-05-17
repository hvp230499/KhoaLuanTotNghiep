<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
         <style type="text/css">
        	<%@include file="../css/style.css" %>
        </style>
        <title>Profile</title>
    </head> 
<body>
<div id="header">
<%@include file="Header.jsp" %>
</div>

<div class="container mt-2">
    <div class="btn-group" role="group" aria-label="Basic example">
        <button type="button" class="btn btn-secondary active">Profile</button>
        <button type="button" class="btn btn-secondary" onclick="{window.location.href = 'qltin'}">Quản lý tin</button>
    </div>
    <form:form class="border p-3" method="post" modelAttribute="currentUser">
        <h2>Thông tin tài khoản</h2><hr>
        <div class="form-group">
            <label for="hoten">Họ và tên<span class="text-danger">*</span></label>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                <span class="input-group-text" id="hoten"><i class="bi bi-person-fill"></i></span>
                </div>
                <form:input type="text" class="form-control" path="HoTen" placeholder="Nhập họ và tên"/>
            </div>
        </div> 
        <div class="form-group">
            <label for="username">Tên đăng nhập<span class="text-danger">*</span></label>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                <span class="input-group-text" id="username"><i class="bi bi-person-fill"></i></span>
                </div>
                <form:input type="text" class="form-control" path="Username" placeholder="Nhập tên đăng nhập" readonly="true"/>
            </div>
        </div> 
        <div class="form-group">
            <label for="sdt">Số điện thoại<span class="text-danger">*</span></label>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                <span class="input-group-text" id="sdt"><i class="bi bi-telephone-fill"></i></span>
                </div>
                <form:input type="text" class="form-control" path="SDT" placeholder="Nhập số điện thoại"/>
            </div>
        </div> 
        <div class="form-group">
            <label for="email">Email<span class="text-danger">*</span></label>
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                <span class="input-group-text" id="email"><i class="bi bi-envelope-fill"></i></span>
                </div>
                <form:input type="email" class="form-control" path="Email" placeholder="Nhập email"/>
            </div>
        </div>   
        <button type="submit" class="btn btn-primary">Cập nhật</button>
    </form:form>
</div>
<%@include file="Footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script> 
</body>   
</html>