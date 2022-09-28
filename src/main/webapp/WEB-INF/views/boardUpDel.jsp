<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<c:set var="assetsPath_w" value="${pageContext.request.contextPath }/resources/assets_w" />
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!-- head-->
<%@ include file="include/head.jsp" %>
<script>
$(document).ready(function(){

	document.getElementById("btnGb").value = "${btnGb}";

	if(${btnGb} == 2){
		$("#div_btn_update").show();
		$("#div_btn_delete").hide();
	} else if(${btnGb} == 3){
		$("#div_btn_delete").show();
		$("#div_btn_update").hide();
		$("#b_title").prop("disabled",true);
		$("#b_content").prop("disabled",true);
		$("#b_img_upload").prop("disabled",true);
	}
});
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
				<h3 class="title">게시판</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${contextPath}/">게시판</a></li>
					<li class="breadcrumb-item active" aria-current="page">제보게시판</li>
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
		<div class="col-lg-16">
			<div class="blog-details mt-30 mr-20">
				<!-- 내용쓰기 -->
			<!-- With avatar -->
			
            <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">제보게시판</h4>
			<form name="fm" method="POST" action="${contextPath}/board/boardUpDel">
			    <div class="box" id="sht_board_dtl">
				<div class="box-header">
					<div id = "div_btn_update">
						<h4 class="box-title">제보게시판 수정</h4>
						<button class="main-btn" type = "submit" id="btnUpdate" name="btnUpdate">완료</button>
					</div>
					<div id = "div_btn_delete">
						<h4 class="box-title">제보게시판 삭제</h4>
						<button class="main-btn" type = "submit" id="btnDelete" name="btnDelete">완료</button>
					</div>
				</div>
				<div class="box-body">
					<div class="form-group">
						<input type="hidden" name="btnGb" id="btnGb" class="form-control"   />
						<input type="hidden" name="b_id" id="b_id" value= "${board.b_id}" class="form-control"   />
						<label>제목</label><input type="text" name="b_title" id="b_title" value= "${board.b_title}" class="form-control"   />
						<label>내용</label><textarea type="text" name="b_content" id="b_content" class="form-control" rows="10">${board.b_content}</textarea>
						<label>사진파일</label><input type="text" name="b_img_upload" id="b_img_upload" value= "${board.b_img_upload}" class="form-control"   />
					</div>
				</div>
				</div>
			</form>
			</div>
		</div>
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