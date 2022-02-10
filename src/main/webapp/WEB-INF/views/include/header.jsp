<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>TotenHam&People</title>

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="<c:url value='/vendor/bootstrap/css/bootstrap.min.css'/>">

  <!-- Custom fonts for this template -->
  <link rel="stylesheet" type="text/css" href="<c:url value='/vendor/fontawesome-free/css/all.min.css'/>" >
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

  <!-- Custom styles for this template -->
  <link rel="stylesheet" href="<c:url value='/css/agency.min.css'/>" >
  
  <!-- Bootstrap core JavaScript -->
  <script src="<c:url value='/vendor/jquery/jquery.min.js'/>"></script>
  <script src="<c:url value='/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>
	
	
  <!-- Plugin JavaScript -->
  <script src="<c:url value='/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

  <!-- Contact form JavaScript -->
  <script src="<c:url value='/js/jqBootstrapValidation.js'/>"></script>
  


<style>

.totenham-menu {
	background-color: white;
	border: 1px solid #00008B;
	
}

.totenham-menu:hover {
	background-color: white;
	color: black;
	
}

.totenham-tap {
	background-color: white;
	color: black;
}
.totenham-tap:hover {
    background-color: #00008B;
    color: white;
}
.dropdown:hover > .dropdown-menu { 
	display:block;
}
</style>


</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand" href="/">
      	<img class="img-fluid" src="<c:url value='/img/mark.png'/>" alt="" style="width:130px; height:50px;" />
      </a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive">
        메뉴
        <i class="fas fa-bars"></i>
      </button>   

      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/">HOME</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link js-scroll-trigger dropdown-toggle" data-toggle="dropdown">INTRODUCE</a>
            <div class="dropdown-menu totenham-menu"> 
            
              <div class="dropdown dropright ">            
			      <a class="dropdown-item totenham-tap" data-toggle="modal" href="#TotenhamHistory">토트넘의 역사</a>
		      </div>
		      
		      <div class="dropdown dropright ">            
			      <a class="dropdown-item totenham-tap" href="<c:url value='/introduce'/> ">토트넘 선수단 소개</a>
		      </div>   
		    </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link js-scroll-trigger dropdown-toggle" data-toggle="dropdown">VIDEO</a>
            <div class="dropdown-menu totenham-menu"> 
		      
			    <div class="dropdown dropright "> 
			      <a class="dropdown-item totenham-tap" data-toggle="modal" href="#TotenhamC">토트넘 vs 첼시 H/L</a>
			   </div>
			   <div class="dropdown dropright ">  
			      <a class="dropdown-item totenham-tap" data-toggle="modal" href="#TotenhamP">토트넘 vs 페레이라 H/L</a>	
			     </div>
		      </div>
          </li>
          <c:if test="${empty login}" >
          	<li class="nav-item">
            <a class="nav-link js-scroll-trigger" data-toggle="modal" data-target="#log-in">LOGIN</a>
          	</li>
     	  </c:if>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="<c:url value='/board/list'/>">BOARD</a>
          </li>
         <c:if test="${not empty login}" >
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/user/change_pw">MYPAGE</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="/user/logout" onclick="return confirm('진짜로 로그아웃 하는거에요?')">LOGOUT</a>
          </li>
          </c:if>
        </ul>
      </div>
    </div>
  
  </nav><br><br><br>

  <!-- Header -->
  <header class="masthead">
    <div class="container">
      <div class="intro-text">        
      </div>
    </div>
  </header>
  
<%@ include file="../users/login_modal.jsp" %>  
  

