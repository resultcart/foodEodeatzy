<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />


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
				<h3 class="title">businessMY</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index-2.html">사업자 마이페이지</a></li>
					<li class="breadcrumb-item active" aria-current="page">가게 조회</li>
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
					<div class="blog-details-title">
						<h2 class="title">주문을 조회할 가게를 선택해 주세요.</h2>
					</div>				
	
					<hr>	
						<div class="col-lg-12">
								<div class="food-menu-box">
									<div class="row grid">
										<c:forEach items="${b_OrderSelect}" var="b_OrderSelect">
										
											<div class="col-lg-12"> 
												<form method ="POST">
													<div class="food-menu-item mt-50 d-block d-sm-flex align-items-center" >
														<div class="col-lg-8">
															<div class="food-menu-content">
																	
																 	<h4 name="s_name" value="${b_OrderSelect.s_name}">${b_OrderSelect.s_name}</h4>
																 	가게 아이디 : ${b_OrderSelect.u_s_id } -> 수정시 필수 확인*
																<ul>
																	<li name="s_desc"> 가게 메모 : ${b_OrderSelect.s_desc}</li>
																	
																</ul>
															</div>
														</div>
														<div class="col-lg-5">
															<div class="food-menu-thumb">
															<a href="b_Order?u_b_id=${b_OrderSelect.u_b_id}&u_s_id=${b_OrderSelect.u_s_id }">조회</a>
															</div>
														</div>	
													</div>
												
												</form>

											</div>	
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>				
					 
								</div>						
							</div>
	                 </div>

		<!-- side bar -->
		<%@ include file="include/businessMY_sidebar.jsp" %>
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

