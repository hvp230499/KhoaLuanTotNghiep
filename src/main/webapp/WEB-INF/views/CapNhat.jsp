<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
      integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
    />
    <title>Cập nhật thông tin</title>
     <style type="text/css">
        	<%@include file="../css/style.css" %>
        </style>
            <style>
    	<%@include file="../css/map.css"%>
    </style>
    <script type="module">
		<%@include file="../js/map.js"%>
	</script>
  </head>
  <body>
    <!-- header -->
    <div id="header">
    <%@include file="Header.jsp" %>
    </div>
    <!-- header -->
    <!-- content -->
    <div class="container">
      <h2 class="mt-2">Cập nhật thông tin</h2>
      <hr />
      <form:form method="post" modelAttribute="postUpdate" enctype="multipart/form-data" id="capnhat">
        <div class="form-group">
          <label for="TieuDe">Tiêu đề<span class="text-danger">*</span></label>
          <form:input
            type="text"
            class="form-control"
            path="TieuDe"
            placeholder="Nhập tiêu đề"
          />
          <small class="text-danger" hidden id="errTieuDe">Tiêu đề phải lớn hơn 10 ký tự!</small>
        </div>
        <div class="form-row">
          <div class="form-group col-6">
            <label for="ChuyenMuc"
              >Chuyên mục<span class="text-danger">*</span></label
            >
            <form:select path="ChuyenMuc" class="form-control">
              <form:option value="" selected="true">Chọn loại cho thuê...</form:option>
              <form:option value="tro">Cho thuê trọ</form:option>
              <form:option value="nhanguyencan">Cho thuê nhà nguyên căn</form:option>
            </form:select>
            <small class="text-danger" hidden id="errChuyenMuc">Chuyên mục chưa được chọn!</small>
          </div>
          <div class="form-group col-md-6">
            <label for="DienTich"
              >Diện tích<span class="text-danger">*</span></label
            >
            <div class="input-group">
              <form:input
                type="text"
                class="form-control"
                path="DienTich"
              />
              <div class="input-group-append">
                <span class="input-group-text">m&#178;</span>
              </div>
            </div>
            <small class="text-danger" hidden id="errDienTich">Diện tích phải lớn hơn 0!</small>
          </div>
        </div>
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="GiaThue"
              >Đơn giá thuê<span class="text-danger">*</span></label
            >
            <div class="input-group">
              <form:input type="text" class="form-control" path="GiaThue" />
              <div class="input-group-append">
                <span class="input-group-text">VND</span>
              </div>
            </div>
            <small class="text-danger" hidden id="errGiaThue">Giá thuê phải lớn hơn 0!</small>
          </div>
          <div class="form-group col-6">
            <label for="ChuKyTT"
              >Thời gian thanh toán<span class="text-danger">*</span></label
            >
            <form:select
              path="ChuKyTT"
              class="form-control"
            >
              <form:option value="" selected="true">Chọn chu kỳ thanh toán...</form:option>
              <form:option value="1 tháng">1 tháng</form:option>
              <form:option value="3 tháng">3 tháng</form:option>
              <form:option value="6 tháng">6 tháng</form:option>
              <form:option value="1 năm">1 năm</form:option>
            </form:select>
            <small class="text-danger" hidden id="errChuKyTT">Chu kỳ thanh toán chưa được chọn!</small>
          </div>
        </div>
        <div class="form-row">
          <div class="form-group col-6">
            <label for="Tinh"
              >Tỉnh/Thành phố<span class="text-danger">*</span></label
            >
            <form:select path="Tinh" class="form-control">
              <form:option value="" selected="true">Chọn tỉnh thành...</form:option>
            </form:select>
            <small class="text-danger" hidden id="errTinh">Tỉnh/Thành phố chưa được chọn!</small>
          </div>
          <div class="form-group col-md-6">
            <label for="Huyen"
              >Quận/Huyện<span class="text-danger">*</span></label
            >
            <form:select path="Huyen" class="form-control">
              <form:option value="" selected="true">Chọn quận/huyện...</form:option>
            </form:select>
            <small class="text-danger" hidden id="errHuyen">Quận/Huyện chưa được chọn!</small>
          </div>
        </div>
        <div class="form-row">
          <div class="form-group col-6">
            <label for="Xa"
              >Phường/Xã<span class="text-danger">*</span></label
            >
            <form:select path="Xa" class="form-control">
              <form:option value="" selected="true">Chọn phường/xã...</form:option>
            </form:select>
            <small class="text-danger" hidden id="errXa">Phường/Xã chưa được chọn!</small>
          </div>
          <div class="form-group col-md-6">
            <label for="DiaChi"
              >Địa chỉ<span class="text-danger">*</span></label
            >
            <form:input
              type="text"
              class="form-control"
              path="DiaChi"
              placeholder="Nhập địa chỉ cụ thể"
            />
            <small class="text-danger" hidden id="errDiaChi">Địa chỉ không được để trống!</small>
          </div>
        </div>
        <div class="form-group">
          <label for="MoTa">Mô tả<span class="text-danger">*</span></label>
          <form:textarea
            type="text"
            class="form-control"
            path="MoTa"
            placeholder="Nhập mô tả"
          ></form:textarea>
          <small class="text-danger" hidden id="errMoTa">Mô tả không được để trống!</small>
        </div>
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="TenLienHe"
              >Tên liên hệ<span class="text-danger">*</span></label
            >
            <form:input
              type="text"
              class="form-control"
              path="TenLienHe"
              placeholder="Nhập tên liên hệ"
            />
            <small class="text-danger" hidden id="errTenLienHe">Tên liên hệ không được để trống!</small>
          </div>
          <div class="form-group col-md-6">
            <label for="SDTLienHe"
              >Số điện thoại liên hệ<span class="text-danger">*</span></label
            >
            <form:input
              type="text"
              class="form-control"
              path="SDTLienHe"
              placeholder="Nhập số điện thoại liên hệ"
            />
            <small class="text-danger" hidden id="errSDTLienHe">Số điện thoại không hợp lệ!</small>
          </div>
        </div>

        <div class="form-group">
          <label for="file">Thêm hình ảnh</label>
          <div id="oldimg">
	      <c:forEach var="image" items="${images }">
	      	<div class="show-image">
		    <img src="data:image/jpeg;base64,${image.getStringImage()}" height="150px" width="150px" class="mr-2"/>
		    <button class="delete" type="button" onclick="deleteImg(this,${image.getID()})">Xóa</button>
			</div>
	      </c:forEach>
          </div>
          <div id="img" class="mb-2"></div>   
          <input
            type="file"
            class="custom-file"
            name="file"
            id="file"
            multiple
            accept="image/*"
          />
        </div>
        <form:hidden path="Lat"/>
        <form:hidden path="Lng"/>
        <input id="removedImages" name="removedImages" hidden/>
        <label for="sdt">Thay đổi vị trí</label>
		<div class="text-center mb-3">
			<input
		      id="pac-input"
		      class="form-control"
		      type="text"
		      placeholder="Nhập địa chỉ cụ thể"
		    />
	    	<div id="map"></div>
	    </div>
        <div class="text-center mb-3">
          <button type="button" onclick="capnhat()" class="btn btn-primary">Cập nhật</button>
        </div>
      </form:form>
    </div>
    <!-- content -->
    <%@include file="Footer.jsp" %>
     <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB41DRUbKWJHPxaFjMAwdrzWzbVKartNGg&callback=initAutocomplete&libraries=places&v=weekly"
      defer
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
      crossorigin="anonymous"
    ></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
    <script><%@ include file="../js/app.js"%></script>
    <script><%@ include file="../js/jquery.js"%></script>
    <script><%@ include file="../js/validate.js"%></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
        $('#Tinh').select2();
        $('#Huyen').select2();
        $('#Xa').select2();
    });
    const deleteImg = (e,id) =>{

    	if($('#oldimg div').length == 1 && $('#file').val() == '')
    	{
    		alert('Phải có ít nhất 1 hình ảnh!');
    	}else
    	{
    		$("#removedImages").val($("#removedImages").val()+id+",");
    		e.closest('div').remove();
    	}
    }
    </script>
   
  </body>
</html>
    