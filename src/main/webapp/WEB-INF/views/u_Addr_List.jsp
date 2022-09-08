<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" %>
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
<%@ include file="include/header2.jsp" %>
<!--====== HEADER PART ENDS ======-->
<!--====== PAGE TITLE PART START ======-->
<section class="page-title-area bg_cover" style="background-image: url(${assetsPath}/images/page-bg-2.jpg);">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="page-title-item text-center">
				<h3 class="title">Mypage AddressList</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${contextPath}/">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Mypage AddressList</li>
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
				<!-- 내용쓰기 -->
				<div class="blog-details-form">
					<div class="blog-details-title ">
						<h3 class="title">add Address</h3>
					</div>		
					<hr>	
					<div class="blog-details-form-item mt-30">
						<form action="#">
							<div class="row">
								<div class="col-lg-12">
									<div class="input-box mt-30">
										<label>address name</label><input type="text" placeholder="주소별칭">
									</div>
								</div>
								<div class="col-lg-12">
									<div class="input-box mt-30">
										<label>address</label><input type="text" placeholder="주소">
									</div>
								</div>
								<div class="col-lg-12">
									<div class="input-box mt-30">
										<button class="main-btn mt-30">추가</button>
									</div>
								</div>						
							</div>
						</form>
	                </div>	
	                
	                <p></p>
					<div class="food-menu-area restaurant-details-area">
					<div class="blog-details-title">
						<h3 class="title">Mypage AddressList</h3>
					</div>		
					<hr>	
						<div class="row">
							<div class="col-lg-12">
								<div class="food-menu-box">
									<div class="row grid">
										<div class="col-lg-12">
											<div class="food-menu-item mt-30 d-block d-sm-flex align-items-center">
												<div class="col-lg-9">
													<div class="food-menu-content">
														<a href="#">
														<h4 class="title">기본</h4>
														</a>
														<ul>
															<li>기본주소기본주소기본주소기본주소기본주소기본주소기본주소기본주소</li>
															<li>Delivery time:60 Minutes,Delivery Cost:Free</li>
														</ul>
													</div>
												</div>
												<div class="col-lg-2">
													<div class="food-menu-thumb">
														<a href="#">delete</a>
													</div>
												</div>	
											</div>
										</div>
										<div class="col-lg-12">
											<div class="food-menu-item mt-30 d-block d-sm-flex align-items-center">
												<div class="col-lg-9">
													<div class="food-menu-content">
														<a href="#">
														<h4 class="title">학원</h4>
														</a>
														<ul>
															<li>학원주소학원주소학원주소학원주소</li>
															<li>Delivery time:60 Minutes,Delivery Cost:Free</li>
														</ul>
													</div>
												</div>
												<div class="col-lg-2">
													<div class="food-menu-thumb">
														<a href="#">delete</a>
													</div>
												</div>	
											</div>
										</div>
										<div class="col-lg-12">
											<div class="food-menu-item mt-30 d-block d-sm-flex align-items-center">
												<div class="col-lg-9">
													<div class="food-menu-content">
														<a href="#">
														<h4 class="title">집</h4>
														</a>
														<ul>
															<li>집주소집주소집주소집주소집주소집주소</li>
															<li>Delivery time:60 Minutes,Delivery Cost:Free</li>
														</ul>
													</div>
												</div>
												<div class="col-lg-2">
													<div class="food-menu-thumb">
														<a href="#">delete</a>
													</div>
												</div>	
											</div>
										</div>
										<div class="col-lg-12">
											<div class="food-menu-item mt-30 d-block d-sm-flex align-items-center">
												<div class="col-lg-9">
													<div class="food-menu-content">
														<a href="#">
														<h4 class="title">집2</h4>
														</a>
														<ul>
															<li>집주소집주소집주소집주소집주소집주소</li>
															<li>Delivery time:60 Minutes,Delivery Cost:Free</li>
														</ul>
													</div>
												</div>
												<div class="col-lg-2">
													<div class="food-menu-thumb">
														<a href="#">delete</a>
													</div>
												</div>	
											</div>
										</div>
									</div>
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