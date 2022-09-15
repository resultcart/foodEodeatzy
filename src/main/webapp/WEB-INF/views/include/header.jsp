<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<header class="header-area">

<div><h3>aasdfasdf???</h3></div>
<div class="header-nav">
	<div class="container custom-container">
		<div class="row">
			<div class="col-lg-12">
				<div class="navigation">
				
					<nav class="navbar navbar-expand-lg navbar-light "><a class="navbar-brand" href="${contextPath}/">
					 <img src="${assetsPath}/images/logo-e.png" alt=""> <!-- logo  -->
				
					</a>
					<!-- logo -->
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="toggler-icon"></span><span class="toggler-icon"></span><span class="toggler-icon"></span></button>
					<!-- navbar toggler -->
					<div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
						<ul class="navbar-nav m-auto">
							<li class="nav-item active"><a class="nav-link" href="#">Search</a></li>
							<li class="nav-item"><a class="nav-link" href="#">ZZIM</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Order</a></li>
						</ul>
					</div>
					<!-- navbar collapse -->
					<div class="navbar-btn d-none d-md-flex">
						<ul>
							<li><a href="cart"><i class="fas fa-shopping-basket"></i></a></li>
							<li><a href="mypage"><i class="fas fa-user"></i></a></li>
						</ul>
						
						<c:if test="${user_lo == null}">
						<a class="main-btn" href="login">Login</a>
						</c:if>
						
						
						<c:if test="${user_lo != null}">
						${user_lo.u_p_name} 님 환영합니다.<br>
						<a class="main-btn" href=logout>Logout</a>
						</c:if>
						
						
					</div>
					</nav>
				</div>
				<!-- navigation -->
			</div>
		</div>
	</div>
</div>
</header>