<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />

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
				<h3 class="title">찜목록 Update/Delete</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index-2.html">ZzimList</a></li>
					<li class="breadcrumb-item active" aria-current="page">Update</li>
				</ol>
				</nav>
			</div>
		</div>
	</div>
</div>
</section>
<!--====== PAGE TITLE PART ENDS ======-->
<!--====== BLOG STANDARD PART START ======-->

</script>

<section class="blog-standard-area pt-120 pb-150">
<div class="container">
	<div class="row justify-content-center">
		<div class="col-lg-8">
			<div class="blog-details mt-30 mr-20">
				<!-- 내용쓰기 -->
				<section class="content container-fluid">
		 
		   <div class="table-responsive">
		   <table class="table">
		   <tr>
 
		  	<form method="POST">
		   <h1>zzim Update</h1> 
		   <hr>
		  	<table class="table table-bordered table-striped dataTable" border="1">
		   <br>
		  	<h3><div>${zzimDTO.u_p_id }님 찜한 가게메모수정</div></h3>
		  
		  	<h5>가게아이디 : ${zzimDTO.u_s_id }</h5>
		  	
		  	<br><br>
		  	<h4><div>가게정보메모</div></h4>
		  
		    <td>
		 	<textarea rows="10" cols="50" name ="z_desc" id="z_desc" placeholder ="이전 가게 메모 : ${zzimDTO.z_desc}"></textarea>
		 	</td>  
		 	
           </table>
           <div class="col-lg-5">
			<div class="food-menu-thumb">
			<button type="button" class="btn btn-link btn-fw" onclick="history.back();">뒤로가기</button></td></td>
            <button type="submit" class="btn btn-link btn-fw" onclick="javascript: form.action='${pageContext.request.contextPath }/updatezdesc?u_p_id=${zzimDTO.u_p_id }&u_s_id=${zzimDTO.u_s_id }';">수정완료</button></td></td>
		
		  </tr>
		  </form>
		  </table>
		  	
		 </div>
         </section>
        
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