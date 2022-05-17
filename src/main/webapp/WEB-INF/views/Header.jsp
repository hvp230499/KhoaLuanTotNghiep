<%@page import="kl.phuong.entities.NguoiDung"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!-- header -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="${pageContext.request.contextPath}/home"><i class="bi bi-house-fill"></i></a>
  <button
    class="navbar-toggler"
    type="button"
    data-toggle="collapse"
    data-target="#navbarSupportedContent"
    aria-controls="navbarSupportedContent"
    aria-expanded="false"
    aria-label="Toggle navigation"
  >
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" id="tro">
        <a class="nav-link" href="${pageContext.request.contextPath}/listphongtro"
          >PHÒNG TRỌ<span class="sr-only">(current)</span></a
        >
      </li>
      <li class="nav-item" id="nha">
        <a class="nav-link" href="${pageContext.request.contextPath}/listnha">NHÀ NGUYÊN CĂN</a>
      </li>
      <li class="nav-item" id="lancan">
        <a class="nav-link" href="${pageContext.request.contextPath}/lancan">LÂN CẬN</a>
      </li>
      <li class="nav-item" id="tin">
        <a class="nav-link" href="${pageContext.request.contextPath}/dangtin"
          ><i class="bi bi-pencil-square"></i> ĐĂNG TIN</a
        >
      </li>
    </ul>
    <div>
    <%NguoiDung currentUser = (NguoiDung)session.getAttribute("user"); 
    	if(currentUser!=null)
    	{
    %>
      <span class="text-white">Xin chào <%=currentUser.getHoTen()%></span>
      <a href="${pageContext.request.contextPath}/profile"
        >&nbsp;<i class="bi bi-person-circle text-white" style="font-size: 1.25rem;"></i
      ></a>
      <a href="${pageContext.request.contextPath}/logout"
        >&nbsp;<i class="bi bi-box-arrow-right text-white" style="font-size: 1.25rem;" onclick=""></i
      ></a>
      <%}else{ %>
      <a href="${pageContext.request.contextPath}/login" class="text-white">
      	Đăng nhập&nbsp;<i class="bi bi-box-arrow-in-right text-white" style="font-size: 1.25rem;" ></i>
      </a>
      <%} %>
    </div>
  </div>
</nav>
<!-- header -->
