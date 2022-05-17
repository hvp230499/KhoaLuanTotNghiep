<%@page import="kl.phuong.entities.Post"%>
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
  <title>Tìm kiếm lân cận</title>      
</head>
<body>
	<!-- header -->
	<div id="header">
		<%@include file="Header.jsp"%>
	</div>
	<!-- header -->
	<!-- content -->
	<div class="container">
		<h1>Trọ gần đây</h1>
		<hr />
		<div class="border p-2 mt-3 text-center">
			<div id="googleMap" style="width:100%;height:800px;" class="mb-3"></div>
		</div>
		
		<script>	
		
		function currentPosition(){
			if (navigator.geolocation) {
			    navigator.geolocation.getCurrentPosition(myMapNear);
			  } else { 
			    x.innerHTML = "Geolocation is not supported by this browser.";
			  }
		}
		
		function myMapNear(position) {	
		
		//const myLatlng = new google.maps.LatLng(16.459974349289144, 107.59283344232794);
		const myLatlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
		
		const mapProp= {
			center: myLatlng,
			zoom: 15,
		};
		const map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
		
		const posts = [
			<c:forEach var="post" items="${list}">
			{
				PostID: <c:out value="${post.getPostID()}"/>,
				DiaChi: '<c:out value="${post.getDiaChi()}"/>',
				Lat: <c:out value="${post.getLat()}"/>,
				Lng: <c:out value="${post.getLng()}"/>,
				GiaThue: <c:out value="${post.getGiaThue()}"/>,
				Image: '<c:out value="${post.getImages().get(0).getStringImage()}"/>',
			},
			</c:forEach>
		];
		
		for (i = 0; i < posts.length; i++) {  
	      marker = new google.maps.Marker({
	        position: new google.maps.LatLng(posts[i].Lat, posts[i].Lng),
	        map: map,
	        title: posts[i].DiaChi
	      });
	      
	      const infowindow = new google.maps.InfoWindow();
	      
	      const contentString = 
				'<div>'+
				'<h4>'+posts[i].DiaChi+'</h4>'+
				'<img width="120px" height="80px" src="data:image/jpeg;base64,'+posts[i].Image+'"/>'+
				'<h5>Giá thuê: '+new Intl.NumberFormat().format(posts[i].GiaThue)+' VND</h5>'+
				'<a href="detail/'+posts[i].PostID+'"><h6>Xem chi tiết<h6></a>'+
				'</div>'
	
	      google.maps.event.addListener(marker, 'click', (function(marker, i) {
	        return function() {
	          infowindow.setContent(contentString);
	          infowindow.open(map, marker);
	        }
	      })(marker, i));
	    }	
				
			
		}
		//to gg map
		//https://www.google.com/maps/place/<lat>,<lon>/@<lat>,<lon>,<zoom>z
		</script>
		
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB41DRUbKWJHPxaFjMAwdrzWzbVKartNGg&callback=currentPosition&libraries=places&v=weekly"></script>
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