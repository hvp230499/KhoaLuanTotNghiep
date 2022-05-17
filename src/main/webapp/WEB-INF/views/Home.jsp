<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <title>Home</title>
    	<style type="text/css">
    		<%@include file="../css/style.css" %>
    	</style>
    </head> 
<body class="bg-light">
<div id="header">
<%@include file="Header.jsp" %>
</div>
<div class="container-fluid mt-3 pl-5 pr-5 mb-3">
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active in-line">
      <img src="https://blog.rever.vn/hubfs/cho_thue_phong_tro_moi_xay_gia_re_ngay_phuong_15_tan_binh3.jpg" class="rounded imgcrs" alt="image_1">
       <img src="https://sbshouse.vn/wp-content/uploads/2019/11/M%E1%BA%ABu-thi%E1%BA%BFt-k%E1%BA%BF-ph%C3%B2ng-tr%E1%BB%8D-%C4%91%E1%BA%B9p.jpg" class="rounded imgcrs" alt="image_2">
    </div>
    <div class="carousel-item in-line">
      <img src="https://static.chotot.com/storage/chotot-kinhnghiem/nha/2022/01/936e7da6-thue-phong-tro-tphcm-4.webp" class="rounded imgcrs" alt="image_1">
       <img src="https://taxitai.org/wp-content/uploads/2021/04/nha-tro15.jpg" class="rounded imgcrs" alt="image_2">
    </div>
    <div class="carousel-item in-line">
      <img src="https://bluehomes.vn/wp-content/uploads/2021/04/beauty_1587973856572-scaled.jpeg" class="rounded imgcrs" alt="image_1">
       <img src="https://alonhatro.com/assets/upload/estate/1/phong_tro_gia_re_ho_tro_mua_dich_tien_nghi_day_du_ngay_truong_chinh_tan_binh1.jpg" class="rounded imgcrs" alt="image_2">
    </div>
   
  </div>
 <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </button>
</div>
<div class="text-center mt-3">
	<a href="${pageContext.request.contextPath}/listphongtro"><button class="btn btn-secondary font-size-20">Bắt đầu tìm kiếm</button></a>
</div>
</div>
<%@include file="Footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</body>   
</html>