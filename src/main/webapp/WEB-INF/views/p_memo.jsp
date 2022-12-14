<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />


<!doctype html>
<!-- head-->
<%@ include file="include/head.jsp" %>
</script>



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
					<li class="breadcrumb-item active" aria-current="page">고객 메모 수정</li>
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
							<h3 class="title">고객 메모 수정</h3>
						</div>	
									
							<form role="form" method="post">
									 <div class="blog-details-form-item">
                                                <form action="${pageContext.request.contextPath }/businessController.java" method="post" accept-charset="UTF-8">
                                                        <div class="row">
                                                        </div>                                                        
                                                                <div class="col-lg-500">
                                                                	  <section class="content container-fluid">
																		  <table class="table">
                                                                                                                                                 
							<div class="row">
								<div class="col-lg-6">
								<div class="input-box mt-30">
										<label>고객 ID<input type="text" name="u_p_id" value="${memoViewmap.u_p_id }" readonly=true></label>
									</div>
									<div class="input-box mt-30">
										<label>고객 메모</label>
										<input type="text"  name="p_memo" value="${memoViewmap.p_memo }">	
									</div>			
									<div class="col-lg-12">
									<div class="input-box mt-10">									
									<button type="submit" class="main-btn mt-30">수정</button>
									</div>																
									</div>
                          		</table>
							</form>
											
							
							</form>
						
							</div>
										
										</div>
									</div>
								</div>						
							</div>
						</form>
	                 </div>
                </div>
			</div>
		</div>
		<!-- side bar -->
		<%@ include file="include/businessMY_sidebar.jsp" %>
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