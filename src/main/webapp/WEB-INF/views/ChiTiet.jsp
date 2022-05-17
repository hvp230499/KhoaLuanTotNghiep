<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
	 <style type="text/css">
        	<%@include file="../css/style.css" %>
        </style>
        <title>Chi tiết</title>
</head>
<body>

	<!-- header -->
	<div id="header">
		<%@include file="Header.jsp"%>
	</div>
	<!-- header -->
	<!-- content -->
	<div class="container">
		<h1>${post.getTieuDe() }</h1>
		<hr />
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="col-2 bg-light" scope="col">Địa chỉ:</th>
					<td class="col-10" colspan="3" id="diachi"><i class="bi bi-pin-map-fill"></i>${post.getDiaChi()}, ${post.getXa() }, ${post.getHuyen()}, ${post.getTinh() }</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row" class="bg-light">Chuyên mục:</th>
					<c:if test="${post.getChuyenMuc().equals('tro')}">
						<td class="col-5">Cho thuê trọ</td>
					</c:if>
					<c:if test="${post.getChuyenMuc().equals('nhanguyencan')}">
						<td class="col-5">Cho thuê nhà nguyên căn</td>
					</c:if>
					
					<th scope="row" class="bg-light">Diện tích:</th>
					<td>${post.getDienTich() } m&#178;</td>
				</tr>
				<tr>
					<th scope="row" class="bg-light">Giá cho thuê:</th>
					<td>${String.format("%,d",post.getGiaThue()) } VND </td>
					<th scope="row" class="bg-light">Chu kỳ thanh toán:</th>
					<td>${post.getChuKyTT() }</td>
				</tr>
				<tr>
					<th scope="row" class="bg-light">Liên hệ:</th>
					<td colspan="3">${post.getTenLienHe() }</td>
				</tr>
				<tr>
					<th scope="row" class="bg-light">Số điện thoại:</th>
					<td colspan="3"><i class="bi bi-telephone-fill"></i>&nbsp;${post.getSDTLienHe() }</td>
				</tr>
			</tbody>
		</table>
		<div class="border p-2">
			<h5>Mô tả</h5>
			<p>${post.getMoTa()}</p>
		</div>
		<div class="border p-2 mt-3 text-center">
			<h5>Hình ảnh</h5>
			<c:forEach items="${post.getImages()}" var="anh">
			<img
				src="data:image/jpeg;base64,${anh.getStringImage() }"
				alt="${anh.getName() }" height="500" class="mt-2"/> 
			</c:forEach>	
		</div>
		<div class="border p-2 mt-3 text-center">
			<h5>Vị Trí</h5>
			<div id="googleMap" style="width:100%;height:400px;" class="mb-3"></div>
		</div>
		<script>
		function myMap() {
		
		var myLatlng = new google.maps.LatLng(${post.getLat()},${post.getLng()});	
			
		var mapProp= {
		  center: myLatlng,
		  zoom: 19,
		};
		var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
		
		var marker = new google.maps.Marker({
		    position: myLatlng,
		    title: document.getElementById("diachi").textContent
		});

		// To add the marker to the map, call setMap();
		marker.setMap(map);
		
		const contentString = 
			'<div>'+
			'<h2>${post.getDiaChi()}</h2>'+
			'<a target="_blank" href="https://www.google.com/maps/place/${post.getLat()},${post.getLng()}/@${post.getLat()},${post.getLng()},20z">View in Google Map</a>'+
			'</div>'
		
		const infowindow = new google.maps.InfoWindow({
		    content: contentString,
		  });
		 
		marker.addListener("click", () => {
		    map.setZoom(22);
			map.panTo(myLatlng);
			infowindow.open(marker.get("map"), marker);
		  });
		}
		
		//to gg map
		//https://www.google.com/maps/place/<lat>,<lon>/@<lat>,<lon>,<zoom>z
		</script>
		
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB41DRUbKWJHPxaFjMAwdrzWzbVKartNGg&callback=myMap&libraries=places&v=weekly"></script>
	</div>
	<!-- content -->
	<%@include file="Footer.jsp" %>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
		crossorigin="anonymous"></script>
</body>
</html>