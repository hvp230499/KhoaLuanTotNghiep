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
        <title>Đăng ký</title>
    </head>
<body>
    <!-- header -->
    <div id="header">
    <%@include file="Header.jsp" %>
    </div>
    <!-- header -->
    <!-- content -->
    <div class="container">
        <h2 class="mt-2">Đăng ký tài khoản</h2>
        <hr>
        <form:form id="dangky" class=" border p-3" modelAttribute="NewUser" method="post">
            <div class="form-group">
              <label for="hoten">Họ và tên<span class="text-danger">*</span></label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                <span class="input-group-text"><i class="bi bi-person-fill"></i></span>
                </div>
              <form:input type="text" class="form-control" path="HoTen" id="hoten" placeholder="Nhập họ và tên"/>
              </div>
              <small class="text-danger" hidden id="errHoten">Họ tên không được để trống!</small>
            </div>
            <div class="form-group">
                <label for="username">Tên đăng nhập<span class="text-danger">*</span> <span class="text-danger">${Usernamedatontai }</span></label>
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                  <span class="input-group-text"><i class="bi bi-person-fill"></i></span>
                  </div>
                <form:input type="text" class="form-control" path="Username" id="username" placeholder="Nhập tên đăng nhập"/>
                </div>
                <small class="text-danger" hidden id="errUsername">Tên đăng nhập phải lớn hơn 5 ký tự!</small>
              </div>
            <div class="form-group">
              <label for="sdt">Số điện thoại<span class="text-danger">*</span></label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                <span class="input-group-text"><i class="bi bi-telephone-fill"></i></span>
                </div>
              <form:input type="text" class="form-control" path="SDT" id="sdt" placeholder="Nhập số điện thoại"/>
              </div>
              <small class="text-danger" hidden id="errSdt">Số điện thoại không hợp lệ!</small>
            </div>
            <div class="form-group">
              <label for="email">Email<span class="text-danger">*</span></label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                <span class="input-group-text"><i class="bi bi-telephone-fill"></i></span>
                </div>
              <form:input type="text" class="form-control" path="Email" id="email" placeholder="Nhập email"/>
              </div>
              <small class="text-danger" hidden id="errEmail">Email không hợp lệ!</small>
            </div>
            <div class="form-group">
                <label for="password">Mật khẩu<span class="text-danger">*</span></label>
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                  <span class="input-group-text"><i class="bi bi-lock-fill"></i></span>
                  </div>
                <form:input type="password" class="form-control" path="Password" id="password" placeholder="Nhập mật khẩu"/>
                </div>
                <small class="text-danger" hidden id="errPassword">Mật khẩu phải lớn hơn 5 ký tự!</small>
              </div>
              <div class="form-group">
                <label for="re-password">Xác nhận mật khẩu<span class="text-danger">*</span></label>
                <div class="input-group mb-3">
                  <div class="input-group-prepend">
                  <span class="input-group-text"><i class="bi bi-lock-fill"></i></span>
                  </div>
                <input type="password" class="form-control" name="re-password" id="re-password" placeholder="Nhập lại mật khẩu"/>
                </div>
                <small class="text-danger" hidden id="errRe-password">Nhập lại mật khẩu không đúng!</small>
              </div>
              <div class="text-center mb-3">
            <button type="button" onclick="dangky()" class="btn btn-primary">Đăng ký</button>
            </div>
          </form:form>
    </div>
    <!-- content -->
    <%@include file="Footer.jsp" %>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
    <script>
    	<%@include file="../js/validate.js" %>
    </script>
</body>
</html>