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

	document.getElementById("hidden_upId").value = ${upId};
	document.getElementById("hidden_btnGb").value = ${btnGb};

	function fn_hidden(){
		$("#sht_user_p").hide();
		$("#sht_user_p_address").hide();
		$("#sht_user_b").hide();
		$("#sht_store").hide();
		$("#sht_store_address").hide();	
		$("#sht_zzim").hide();	
		$("#sht_store").hide();
		$("#sht_order").hide();	
		$("#sht_order_detail").hide();	
		$("#sht_menu").hide();
		$("#sht_category").hide();
		$("#sht_cart").hide();
		$("#sht_board").hide();
		$("#sht_comment").hide();
		$("#sht_combo").hide();	
	}

    if (result == 1) {						//게시판_테이블
    	fn_hidden();
    	$("#sht_board").show();
    } else if (result == 2) {				//장바구니_테이블
    	fn_hidden();
    	$("#sht_cart").show();
    } else if (result == 3) {				//카테고리분류_테이블
    	fn_hidden();
    	$("#sht_category").show();			
    } else if (result == 4) {				//콤보리스트_테이블
    	fn_hidden();
    	$("#sht_combo").show();				
    } else if (result == 5) {				//댓글_테이블
    	fn_hidden();
    	$("#sht_comment").show();		
    } else if (result == 6) {				//메뉴_테이블
    	fn_hidden();
    	$("#sht_menu").show();				
    } else if (result == 7) {				//주문내역_테이블
    	fn_hidden();
    	$("#sht_order").show();				
    } else if (result == 8) {				//주문내역_상세_테이블
    	fn_hidden();
    	$("#sht_order_detail").show();		
    } else if (result == 9) {				//사업장정보_테이블
    	fn_hidden();
    	$("#sht_store").show();
    } else if (result == 10) {				//사업장_주소_테이블
    	fn_hidden();
    	$("#sht_store_address").show();
    } else if (result == 11) {				//사업자정보_테이블
    	fn_hidden();
    	$("#sht_user_b").show();
    } else if (result == 12) {				//개인사용자정보_테이블
    	fn_hidden();
    	$("#sht_user_p").show();
    } else if (result == 13) {				//개인사용자_주소_테이블
    	fn_hidden();
    	$("#sht_user_p_address").show();
    } else if (result == 14) {				//찜목록_테이블
    	fn_hidden();
    	$("#sht_zzim").show();
    } else {
      //$("#sht_user_p").hide();
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
					<li class="breadcrumb-item active" aria-current="page">관리자 페이지</li>
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
	        <input type="text" name="hidden_upId" id="hidden_upId" class="form-control"   />
	        <input type="text" name="hidden_btnGb" id="hidden_btnGb" class="form-control"   />
            <!-- ----------------------콤보박스에서 테이블 선택별로 div show or hide 처리 Start------------------------------------ -->
			<!-- 게시판_테이블 -->
			<div id="sht_board" name="sht_board">
			    <div class="box" id="sht_board_dtl">
				<div class="box-header">
				    <h4 class="box-title">delete 페이지</h4>
					<h4 class="box-title">상세조회</h4>
					<button class="main-btn" id="btnExcute" name="btnExcute" >처리</button>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>게시글ID</label><input type="text" id="ip_b_id" name="ip_b_id"  class="form-control"  />
						<label>작성자</label><input type="text" name="ip_b_writer" id="ip_b_writer" class="form-control"   />
						<label>게시판타입</label><input type="text" name="ip_b_type" id="ip_b_type" class="form-control"     />
						<label>제목</label><input type="text" name="ip_b_title" id="ip_b_title" class="form-control"   />
						<label>내용</label><input type="text" name="ip_b_content" id="ip_b_content" class="form-control"   />
						<label>사진파일</label><input type="text" name="ip_b_img_upload" id="ip_b_img_upload" class="form-control"   />
						<label>제보게시글상태</label><input type="text" name="ip_b_state" id="ip_b_state" class="form-control"   />
						<label>등록일시</label><input type="text" name="ip_b_datetime" id="ip_b_datetime" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
			<!-- 장바구니_테이블 -->
			<div id="sht_cart" name="sht_cart">
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>사용자ID</label><input type="text" name="ip_u_p_id" id="ip_u_p_id" class="form-control"   />
						<label>가게내부ID</label><input type="text" name="ip_u_s_id" id="ip_u_s_id" class="form-control"     />
						<label>메뉴ID</label><input type="text" name="ip_m_id" id="ip_m_id" class="form-control"   />
						<label>구매수량</label><input type="text" name="ip_ct_count" id="ip_ct_count" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
			<!-- 카테고리분류_테이블 -->
			<div id="sht_category" name="sht_category">
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>카테고리ID</label><input type="text" name="ip_c_id" id="ip_c_id" class="form-control"   />
						<label>카테고리명</label><input type="text" name="ip_c_name" id="ip_c_name" class="form-control"     />
						<label>사용유무</label><input type="text" name="ip_c_use" id="ip_c_use" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
			<!-- 콤보리스트_테이블 -->
			<div id="sht_combo" name="sht_combo">
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>콤보리스트ID</label><input type="text" name="ip_cb_id" id="ip_cb_id" class="form-control"   />
						<label>리스트번호</label><input type="text" name="ip_cb_num" id="ip_cb_num" class="form-control"     />
						<label>리스트명</label><input type="text" name="ip_cb_name" id="ip_cb_name" class="form-control"   />
						<label>사용유무</label><input type="text" name="ip_cb_use_yn" id="ip_cb_use_yn" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
			<!-- 댓글_테이블 -->
			<div id="sht_comment" name="sht_comment">
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>댓글ID</label><input type="text" name="ip_bc_id" id="ip_bc_id" class="form-control"   />
						<label>작성자</label><input type="text" name="ip_bc_writer" id="ip_bc_writer" class="form-control"     />
						<label>제보게시글</label><input type="text" name="ip_tbCmt_b_id" id="ip_tbCmt_b_id" class="form-control"   />
						<label>댓글내용</label><input type="text" name="ip_bc_content" id="ip_bc_content" class="form-control"   />
						<label>등록일시</label><input type="text" name="ip_bc_datetime" id="ip_bc_datetime" class="form-control"   />
						<label>댓글보여주기</label><input type="text" name="ip_b_use" id="ip_b_use" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
			<!-- 메뉴_테이블 -->
			<div id="sht_menu" name="sht_menu">
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>가게내부ID</label><input type="text" name="ip_tbMenu_u_s_id" id="ip_tbMenu_u_s_id" class="form-control"   />
						<label>메뉴ID</label><input type="text" name="ip_tbMenu_m_id" id="ip_tbMenu_m_id" class="form-control"     />
						<label>메뉴명</label><input type="text" name="ip_m_name" id="ip_m_name" class="form-control"   />
						<label>금액</label><input type="text" name="ip_m_price" id="ip_m_price" class="form-control"   />
						<label>판매가능수량</label><input type="text" name="ip_m_stock" id="ip_m_stock" class="form-control"   />
						<label>메뉴별 조리소요시간</label><input type="text" name="ip_m_ltime" id="ip_m_ltime" class="form-control"   />
						<label>메뉴별 보요주기유무</label><input type="text" name="ip_m_state" id="ip_m_state" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
			<!-- 주문내역_테이블 -->
			<div id="sht_order" name="sht_order">
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>주문번호</label><input type="text" name="ip_o_number" id="ip_o_number" class="form-control"   />
						<label>가게내부ID</label><input type="text" name="ip_u_s_id" id="ip_u_s_id" class="form-control"     />
						<label>사용자ID</label><input type="text" name="ip_u_p_id" id="ip_u_p_id" class="form-control"   />
						<label>주문수량총합</label><input type="text" name="ip_o_cnt_total" id="ip_o_cnt_total" class="form-control"   />
						<label>주문메뉴총액</label><input type="text" name="ip_o_amt_total" id="ip_o_amt_total" class="form-control"   />
						<label>총조리소요시간</label><input type="text" name="ip_o_ltime_total" id="ip_o_ltime_total" class="form-control"   />
						<label>주문상태</label><input type="text" name="ip_o_state" id="ip_o_state" class="form-control"   />
						<label>주문메모</label><input type="text" name="ip_o_desc" id="ip_o_desc" class="form-control"   />
						<label>주문일시</label><input type="text" name="ip_o_datetime" id="ip_o_datetime" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
			<!-- 주문내역_상세_테이블 -->
			<div id="sht_order_detail" name="sht_order_detail">
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>주문번호</label><input type="text" name="ip_o_number" id="ip_o_number" class="form-control"   />
						<label>메뉴ID</label><input type="text" name="ip_m_id" id="ip_m_id" class="form-control"     />
						<label>수량</label><input type="text" name="ip_o_cnt" id="ip_o_cnt" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
			<!-- 사업장정보_테이블 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>가게내부ID</label><input type="text" name="ip_tbStore_u_s_id" id="ip_tbStore_u_s_id" class="form-control"   />
						<label>사업자ID</label><input type="text" name="ip_u_b_id" id="ip_u_b_id" class="form-control"     />
						<label>사업자등록번호</label><input type="text" name="ip_s_regi_num" id="ip_s_regi_num" class="form-control"   />
						<label>가게명</label><input type="text" name="ip_s_name" id="ip_s_name" class="form-control"   />
						<label>가게전화번호</label><input type="text" name="ip_s_number" id="ip_s_number" class="form-control"   />
						<label>카테고리ID</label><input type="text" name="ip_tbStore_c_id" id="ip_tbStore_c_id" class="form-control"   />
						<label>가게오픈여부</label><input type="text" name="ip_s_state" id="ip_s_state" class="form-control"   />
						<label>사업장별대기시간</label><input type="text" name="ip_s_time" id="ip_s_time" class="form-control"   />
						<label>사업자등록증파일</label><input type="text" name="ip_u_b_img_upload" id="ip_u_b_img_upload" class="form-control"   />
						<label>가게정보</label><input type="text" name="ip_s_desc" id="ip_s_desc" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
			<!-- 사업장_주소_테이블 -->
			<div id="sht_store_address" name="sht_store_address">
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>가게내부ID</label><input type="text" name="ip_tbSAdres_u_s_id" id="ip_tbSAdres_u_s_id" class="form-control"   />
						<label>사업장주소별칭</label><input type="text" name="ip_u_s_add_id" id="ip_u_s_add_id" class="form-control"     />
						<label>사업장주소</label><input type="text" name="ip_u_s_address" id="ip_u_s_address" class="form-control"   />
						<label>사업장메인주소</label><input type="text" name="ip_u_s_flag" id="ip_u_s_flag" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
			<!-- 사업자정보_테이블 -->
			<div id="sht_user_b" name="sht_user_b">
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>사업자ID</label><input type="text" name="ip_tbUserB_u_b_id" id="ip_tbUserB_u_b_id" class="form-control"   />
						<label>사업자명</label><input type="text" name="ip_u_b_name" id="ip_u_b_name" class="form-control"     />
						<label>연락처</label><input type="text" name="ip_u_b_number" id="ip_u_b_number" class="form-control"   />
						<label>이메일</label><input type="text" name="ip_u_b_email" id="ip_u_b_email" class="form-control"   />
						<label>권한</label><input type="text" name="ip_u_b_access" id="ip_u_b_access" class="form-control"   />
						<label>회원가입일시</label><input type="text" name="ip_u_b_join_dttm" id="ip_u_b_join_dttm" class="form-control"   />
						<label>로그인일시</label><input type="text" name="ip_u_b_login_dttm" id="ip_u_b_login_dttm" class="form-control"   />
						<label>로그아웃일시</label><input type="text" name="ip_u_b_logout_dttm" id="ip_u_b_logout_dttm" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
            <!-- 개인사용자정보_테이블 -->
            <div id="sht_user_p" name="sht_user_p">
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>사용자ID</label><input type="text" name="ip_tbUserP_u_p_id" id="ip_tbUserP_u_p_id" class="form-control"   />
						<label>이름</label><input type="text" name="ip_u_p_name" id="ip_u_p_name" class="form-control"     />
						<label>연락처</label><input type="text" name="ip_u_p_number" id="ip_u_p_number" class="form-control"   />
						<label>이메일</label><input type="text" name="ip_u_p_email" id="ip_u_p_email" class="form-control"   />
						<label>권한</label><input type="text" name="ip_u_p_access" id="ip_u_p_access" class="form-control"   />
						<label>광고동의</label><input type="text" name="ip_u_p_ad_yn" id="ip_u_p_ad_yn" class="form-control"   />
						<label>광고매체</label><input type="text" name="ip_u_p_ad_media" id="ip_u_p_ad_media" class="form-control"   />
						<label>사용자메모</label><input type="text" name="ip_u_p_desc" id="ip_u_p_desc" class="form-control"   />
						<label>회원가입일시</label><input type="text" name="ip_u_p_join_dttm" id="ip_u_p_join_dttm" class="form-control"   />
						<label>로그인일시</label><input type="text" name="ip_u_p_login_dttm" id="ip_u_p_login_dttm" class="form-control"   />
						<label>로그아웃일시</label><input type="text" name="ip_u_p_logout_dttm" id="ip_u_p_logout_dttm" class="form-control"   />
					</div>
				</div>
				</div>
			</div>
			<!-- 개인사용자_주소_테이블 -->
			<div id="sht_user_p_address" name="sht_user_p_address">
	        <div class="box">
			<div class="box-header">
				<h4 class="box-title">상세조회</h4>
			</div>
			<div class="box-body">
				<div class="form-group">
					<label>사용자ID</label><input type="text" name="ip_tbUserPAdres_u_p_id" id="ip_tbUserPAdres_u_p_id" class="form-control"   />
					<label>주소별칭</label><input type="text" name="ip_u_p_add_id" id="ip_u_p_add_id" class="form-control"     />
					<label>사용자주소</label><input type="text" name="ip_u_p_address" id="ip_u_p_address" class="form-control"   />
					<label>사용자 메인주소</label><input type="text" name="ip_u_p_flag" id="ip_u_p_flag" class="form-control"   />
				</div>
			</div>
			</div>
			</div>
			<hr><p></p>
			<!-- 찜목록 테이블 -->
			<div id="sht_zzim" name="sht_zzim">
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>사용자ID</label><input type="text" name="ip_tbZzim_u_p_id" id="ip_tbZzim_u_p_id" class="form-control"   />
						<label>가게내부ID</label><input type="text" name="ip_tbZzim_u_s_id" id="ip_tbZzim_u_s_id" class="form-control"     />
						<label>가게정보메모</label><input type="text" name="ip_tbZzim_z_desc" id="ip_tbZzim_z_desc" class="form-control"   />
					</div>
				</div>
				</div>
			</div>

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