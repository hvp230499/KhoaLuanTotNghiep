<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
 <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" />
<title>Danh sách phòng trọ</title>
<style type="text/css">
<%@include file="../css/style.css"%>
</style>
</head>
<body>
	<div id="header">
		<%@include file="Header.jsp"%>
	</div>
	<div class="d-flex justify-content-center">
		<form:form class="form-inline" method="post" modelAttribute="filter">
			<div class="form-group">
				<form:select id="Tinh" path="Tinh" class="form-control">
					<form:option value="" selected="true">Chọn tỉnh thành...</form:option>
				</form:select>
			</div>
			<div class="form-group">
				<form:select id="Huyen" path="Huyen" class="form-control">
					<form:option value="" selected="true">Chọn quận/huyện...</form:option>
				</form:select>
			</div>
			<div class="form-group">
				<form:select id="Xa" path="Xa" class="form-control">
					<form:option value="" selected="true">Chọn phường/xã...</form:option>
				</form:select>
			</div>
			<div class="form-group">
				<form:input type="text" id="diachi" path="DiaChi"
					class="form-control" placeholder="Nhập địa chỉ" />
			</div>
			<div class="form-group">
				<form:input type="number" id="gia" path="GiaThue"
					class="form-control" placeholder="Nhập giá" />
				<div class="input-group-append">
					<span class="input-group-text">VND</span>
				</div>
			</div>
			<div class="form-group">
				<form:input type="number" id="dientich" path="DienTich"
					class="form-control" placeholder="Nhập diện tích" />
				<div class="input-group-append">
					<span class="input-group-text">m&#178;</span>
				</div>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-outline-secondary">
					<i class="bi bi-search"></i>
				</button>
			</div>
		</form:form>
	</div>
	<div class="container mt-1">
		<h2>Danh sách trọ khả dụng</h2>
		<hr />
		<div class="row row-cols-1 row-cols-md-2">
			<c:if test="${listphongtro.size()==0}">
				<div class="col-12"><h4>Không tìm thấy phòng trọ nào!</h4></div>
			</c:if>
			<c:forEach items="${listphongtro}" var="phongtro">
				<div class="col mb-4">
					<a	class="card" style="height: 470px"
						href="${pageContext.request.contextPath}/detail/${phongtro.getPostID()}">
							<img
								src="data:image/jpeg;base64,${phongtro.getImages().get(0).getStringImage()}"
								class="card-img-top"
								alt="${phongtro.getImages().get(0).getName()}" height="300px" />
							<div class="card-body">
								<h5 class="card-title">${phongtro.getTieuDe()}</h5>
								<h6>Giá thuê: ${String.format("%,d",phongtro.getGiaThue())} VND</h6>
								<h6>
									<i class="bi bi-pin-map-fill"></i> ${phongtro.getDiaChi()},
									${phongtro.getXa() }, ${phongtro.getHuyen()},
									${phongtro.getTinh() }
								</h6>
								<h6 class="font-italic font-weight-normal">Ngày đăng: ${phongtro.getDatePost() }</h6>
							</div>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
	<%@include file="Footer.jsp" %>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
	<script>
		
	<%@include file="../js/app.js"%>
		
	</script>
	  <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
   <script type="text/javascript">
   $(document).ready(function() {
       $('#Tinh').select2();
       $('#Huyen').select2();
       $('#Xa').select2();
   });
   </script>
</body>
</html>
