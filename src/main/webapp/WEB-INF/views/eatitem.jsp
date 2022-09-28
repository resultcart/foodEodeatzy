<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!doctype html><html lang="en">
<!-- head-->
<%@ include file="include/head.jsp" %>
<body>
<!--====== PRELOADER PART START ======-->
<div class="preloader">
	<div class="loader">
		<div class="ytp-spinner">
			<div class="ytp-spinner-container">
				<div class="ytp-spinner-rotator">
					<div class="ytp-spinner-left">
						<div class="ytp-spinner-circle">
						</div>
					</div>
					<div class="ytp-spinner-right">
						<div class="ytp-spinner-circle">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--====== PRELOADER PART ENDS ======-->
<!--====== HEADER PART START ======-->
<%@ include file="include/header.jsp" %>
<!--====== HEADER PART ENDS ======-->
<!--====== PAGE TITLE PART START ======-->
<section class="page-title-area bg_cover" style="background-image: url(${assetsPath}/images/page-bg-2.jpg);">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="page-title-item text-center">
				<h3 class="title">오늘뭐먹지?</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${contextPath}/">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">오늘뭐먹지?</li>
				</ol>
				</nav>
			</div>
		</div>
	</div>
</div>
</section>
<!--====== PAGE TITLE PART ENDS ======-->
<!--====== BLOG STANDARD PART START ======-->
<section class="blog-standard-area pt-120 pb-150">
<div class="container">
	<div class="row justify-content-center">
		<div class="col-lg-8">
			<div class="blog-details mt-30 mr-20">
				<div class="blog-details-title ">
					<h3 class="title">오늘뭐먹지?</h3>
					오늘 뭐먹을지 재밌는 놀이로 정해보쟈..
				</div>		
				<hr>	
				
				<div class="offer-area pt-150 pb-150">
						
					<div class="row align-items-center justify-content-center">
						<div class="col-lg-4 col-md-6 col-sm-8">
							<div class="offer-item">
								<div class="offer-thumb text-center">
									<img src="${assetsPath}/images/offer-1.png" alt="">
								</div>
								<div class="offer-content text-center">
									<h3>룰렛돌리기</h3>
									<span>빙글빙글 원판돌리기</span><a class="main-btn" href="https://xn--ok0bj0i6sfoyp9no.com/">Go</a>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-8">
							<div class="offer-item item-2">
								<div class="offer-thumb text-center">
									<img src="${assetsPath}/images/offer-2.png" alt="">
								</div>
								<div class="offer-content text-center">
									<h4 class="title">사다리타기</h4>
									<span>사다리다리타기</span><a class="main-btn" href="https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=1&ie=utf8&query=%EC%82%AC%EB%8B%A4%EB%A6%AC%ED%83%80%EA%B8%B0">Go</a>
								</div>
							</div>
						</div>
					</div>
				</div>				

			</div>
		</div>
		<!-- side bar -->
		<%@ include file="include/mypage_sidebar.jsp" %>
	</div>
</div>
</section>
<!--====== BLOG STANDARD PART ENDS ======-->
<!--====== INSTAGRAM PART START ======-->
<%@ include file="include/instaPart.jsp" %>
<!--====== INSTAGRAM PART ENDS ======-->
<!--====== FOOTER PART START ======-->
<%@ include file="include/footer.jsp" %>
<!--====== FOOTER PART ENDS ======-->
<!--====== GO TO TOP PART ENDS ======-->
</body>
</html>