<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <title>Đăng nhập</title>
        <style type="text/css">
    		<%@include file="../css/style.css" %>
    	</style>
      </head>
<body>
    <!-- header -->
    <div id="header">
	<%@include file="Header.jsp" %>
    </div>
    <!-- header -->
    <!-- content -->
    <div class="container">
        <h2 class="mt-2">Đăng nhập</h2>
        <hr>
        <form id="login" class=" border p-3" method="post">
        	<h6 class="text-danger">${loginFail}</h6>
            <div class="form-group">
              <label for="username">Tên đăng nhập<span class="text-danger">*</span></label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="bi bi-person-fill"></i></span>
                </div>
                <input type="text" class="form-control" name="Username" id="username" placeholder="Nhập tên đăng nhập"/>
              </div>
              <small class="text-danger" hidden id="errUsername">Tên đăng nhập phải lớn hơn 5 ký tự!</small>
            </div>
            <div class="form-group">
              <label for="password">Mật khẩu<span class="text-danger">*</span></label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text"><i class="bi bi-lock-fill"></i></span>
                </div>
              <input type="password" class="form-control" name="Password" id="password" placeholder="Nhập mật khẩu"/>
            </div>
            <small class="text-danger" hidden id="errPassword">Mật khẩu phải lớn hơn 5 ký tự!</small>
            </div>
            <div class="form-group">
                Bạn chưa có tài khoản? <a href="${pageContext.request.contextPath}/register">Đăng ký</a>
            </div>
            <button type="button" class="btn btn-primary" onclick="login()">Đăng nhập</button>
          </form>
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