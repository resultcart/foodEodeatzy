<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />

<header class="header-area">

<div><h3>aasdfasdf???</h3></div>
<div class="header-nav">
	<div class="container custom-container">
		<div class="row">
			<div class="col-lg-12">
				<div class="navigation">
				
					<nav class="navbar navbar-expand-lg navbar-light "><a class="navbar-brand" href="${contextPath}/">
					 <img src="${assetsPath}/images/logo-e.png" alt="얻잇지"> <!-- logo  -->
				
					</a>
					<!-- logo -->
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="toggler-icon"></span><span class="toggler-icon"></span><span class="toggler-icon"></span></button>
					<!-- navbar toggler -->
					<div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
						<ul class="navbar-nav m-auto">
							<li class="nav-item active"><a class="nav-link" href="${contextPath}/store/store_info">Search</a></li>
							
						    <c:if test="${sessionScope.loginType =='user'&& sessionScope.user_id != null }">
							<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/ListAll">ZZIM</a></li>
							</c:if>
							<li class="nav-item"><a class="nav-link" href="#">Order</a></li>
					  </ul>
							<li class="nav-item"><a class="nav-link" href="#">게시판</a>
							<ul class="sub-menu">
								<li><a href="${contextPath}/manage/manageList">관리자페이지</a></li>
								<li><a href="${contextPath}/board/noticeList">공지게시판</a></li>
								<li><a href="${contextPath}/board/boardList">제보게시판</a></li>
							</ul>
					</div>
					<!-- navbar collapse -->
					<div class="navbar-btn d-none d-md-flex">
						<ul>
							<li><a href="${contextPath}/cart"><i class="fas fa-shopping-basket"></i></a></li>
							<!-- loginType : user /bussiness -->
							<c:if test="${sessionScope.loginType == 'user'}">
								<li><a href="${contextPath}/mypageU/mypage"><i class="fas fa-user"></i></a></li>
							</c:if>							
							<c:if test="${sessionScope.loginType == 'bussiness'}">
								<li><a href="businessMY"><i class="fas fa-user"></i></a></li>
							</c:if>														
						</ul>
						
						<c:if test="${sessionScope.user_id == null}">
							<a class="main-btn" href="${contextPath}/login">Login</a>
						</c:if>
						
						
						<c:if test="${sessionScope.user_id != null}">
							${sessionScope.user_name}님 환영합니다.<br>
							<a class="main-btn" href="${contextPath}/login/logout">Logout</a>
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