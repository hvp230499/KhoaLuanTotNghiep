<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
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
        <title>Quản lý tin</title>
    </head> 
<body>
<div id="header">
    <%@include file="Header.jsp" %>
</div>

<div class="container mt-2">
    <div class="btn-group" role="group" aria-label="Basic example">
        <button type="button" class="btn btn-secondary" onclick="{window.location.href = 'profile'}">Profile</button>
        <button type="button" class="btn btn-secondary active">Quản lý tin</button>
    </div>
    <div class="border p-3">
        <h2>Quản lý tin</h2><hr>
        <table class="table table-striped table-bordered">
            <thead class="text-center">
              <tr>
                <th scope="col">Tin</th>
                <th scope="col">Thao tác</th>
              </tr>
            </thead>
            <tbody>
             <c:forEach items="${listTin}" var="tin">
             <tr>
                <td class="align-middle text-center">
                    <div class="form-group">
                        <div>
                            <img height="300px" width="400px" src="data:image/jpeg;base64,${tin.getImages().get(0).getStringImage()}" alt="Ảnh trọ">
                        </div>
                        <div>
                            <label><strong>${tin.getTieuDe() }</strong></label><br>
                            <label>Mã bài đăng: <span>${tin.getPostID() }</span></label><br>
                            <c:if test = "${tin.getChuyenMuc().equals('tro')}">
					        <label>Loại bài đăng: <a href="${pageContext.request.contextPath}/listphongtro">Cho thuê phòng trọ</a></label>
					      </c:if>
                            <c:if test = "${tin.getChuyenMuc().equals('nhanguyencan')}">
					        <label>Loại bài đăng: <a href="${pageContext.request.contextPath}/listnha">Cho thuê nhà nguyên căn</a></label>
					      </c:if>
					      	<br/><label><i class="bi bi-pin-map-fill"></i> ${tin.getDiaChi()},
									${tin.getXa() }, ${tin.getHuyen()},
									${tin.getTinh() }</label>
                        </div>
                    </div>
                </td>
                <td class="align-middle text-center">
                    <button class="btn btn-primary" onclick="{window.location.href = 'update/${tin.getPostID()}'}"><i class="bi bi-pencil-square"></i></button>
                    <button class="btn btn-danger" onclick="{window.location.href = 'delete/${tin.getPostID()}'}"><i class="bi bi-trash3-fill"></i></button>
                </td>
              </tr>
             </c:forEach>
            </tbody>
          </table>
    </div>
</div>
<%@include file="Footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
   $(document).ready(function(){
        $("#header").load('Header.jsp');
   });
</script>    
</body>   
</html>