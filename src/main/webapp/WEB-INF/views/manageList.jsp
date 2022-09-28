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

	//테이블 조회
    $("#btnSelect").click(function(){
		var upId = document.getElementById("hidden_upId").value;
		location.href="${contextPath}/manage/manageListAll?hidden_upId="+upId;
	});
	//테이블 insert 페이지
	$("#btnInsert").click(function(){
		var upId = document.getElementById("hidden_upId").value;
		location.href="${contextPath}/manage/manageEditInsert?hidden_upId="+upId;
	});
	//테이블 update 페이지
	$("#btnUpdate").click(function(){
		var upId = document.getElementById("hidden_upId").value;
		location.href="${contextPath}/manage/manageListEdit?hidden_upId="+upId+"&btnGb="+2;
	});
	//테이블 delete 페이지
	$("#btnDelete").click(function(){
		var upId = document.getElementById("hidden_upId").value;
		location.href="${contextPath}/manage/manageListEdit?hidden_upId="+upId+"&btnGb="+3;
	});

	document.getElementById("hidden_upId").value = "${setUpId}";
	
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

	 $('#comboList').change(function() {
	    var result = $('#comboList option:selected').val();
	    
	    document.getElementById("hidden_upId").value = result;
	    
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
	 
	//게시판_테이블_상세조회	 
	$('#tableBoard tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_b_id").value = row.eq(0).text();
		document.getElementById("ip_b_writer").value = row.eq(1).text();
		document.getElementById("ip_b_type").value = row.eq(2).text();
		document.getElementById("ip_b_title").value = row.eq(3).text();
		document.getElementById("ip_b_content").value = row.eq(4).text();
		document.getElementById("ip_b_img_upload").value = row.eq(5).text();
		document.getElementById("ip_b_state").value = row.eq(6).text();
		document.getElementById("ip_b_datetime").value = row.eq(7).text();
	});
	
	//장바구니_테이블_상세조회	 
	$('#tableCart tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_u_p_id").value = row.eq(0).text();
		document.getElementById("ip_u_s_id").value = row.eq(1).text();
		document.getElementById("ip_m_id").value = row.eq(2).text();
		document.getElementById("ip_ct_count").value = row.eq(3).text();
	});
	
	//카테고리분류_테이블_상세조회	 
	$('#tableCate tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_c_id").value = row.eq(0).text();
		document.getElementById("ip_c_name").value = row.eq(1).text();
		document.getElementById("ip_c_use").value = row.eq(2).text();
	});
	
	//콤보리스트_테이블_상세조회	 
	$('#tableCombo tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_cb_id").value = row.eq(0).text();
		document.getElementById("ip_cb_num").value = row.eq(1).text();
		document.getElementById("ip_cb_name").value = row.eq(2).text();
		document.getElementById("ip_cb_use_yn").value = row.eq(3).text();
	});
	
	//댓글_테이블_상세조회	 
	$('#tableComment tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_bc_id").value = row.eq(0).text();
		document.getElementById("ip_bc_writer").value = row.eq(1).text();
		document.getElementById("ip_tbCmt_b_id").value = row.eq(2).text();
		document.getElementById("ip_bc_content").value = row.eq(3).text();
		document.getElementById("ip_bc_datetime").value = row.eq(4).text();
		document.getElementById("ip_b_use").value = row.eq(5).text();
	});
	
	//메뉴_테이블_상세조회	 
	$('#tableMenu tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_tbMenu_u_s_id").value = row.eq(0).text();
		document.getElementById("ip_tbMenu_m_id").value = row.eq(1).text();
		document.getElementById("ip_m_name").value = row.eq(2).text();
		document.getElementById("ip_m_price").value = row.eq(3).text();
		document.getElementById("ip_m_stock").value = row.eq(4).text();
		document.getElementById("ip_m_ltime").value = row.eq(5).text();
		document.getElementById("ip_m_state").value = row.eq(6).text();
	});
	
	//주문내역_테이블_상세조회	 
	$('#tableOrder tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_o_number").value = row.eq(0).text();
		document.getElementById("ip_u_s_id").value = row.eq(1).text();
		document.getElementById("ip_u_p_id").value = row.eq(2).text();
		document.getElementById("ip_o_cnt_total").value = row.eq(3).text();
		document.getElementById("ip_o_amt_total").value = row.eq(4).text();
		document.getElementById("ip_o_ltime_total").value = row.eq(5).text();
		document.getElementById("ip_o_state").value = row.eq(6).text();
		document.getElementById("ip_o_desc").value = row.eq(7).text();
		document.getElementById("ip_o_datetime").value = row.eq(8).text();
	});
	
	//주문내역_상세_테이블_상세조회	 
	$('#tableOrderDtl tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_o_number").value = row.eq(0).text();
		document.getElementById("ip_m_id").value = row.eq(1).text();
		document.getElementById("ip_o_cnt").value = row.eq(2).text();
	});
	
	//사업장정보_테이블_상세조회	 
	$('#tableStore tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_tbStore_u_s_id").value = row.eq(0).text();
		document.getElementById("ip_u_b_id").value = row.eq(1).text();
		document.getElementById("ip_s_regi_num").value = row.eq(2).text();
		document.getElementById("ip_s_name").value = row.eq(3).text();
		document.getElementById("ip_s_number").value = row.eq(4).text();
		document.getElementById("ip_tbStore_c_id").value = row.eq(5).text();
		document.getElementById("ip_s_state").value = row.eq(6).text();
		document.getElementById("ip_s_time").value = row.eq(7).text();
		document.getElementById("ip_u_b_img_upload").value = row.eq(8).text();
		document.getElementById("ip_s_desc").value = row.eq(9).text();
	});
	
	//사업장_주소_테이블_상세조회	 
	$('#tableStoreAdres tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_tbSAdres_u_s_id").value = row.eq(0).text();
		document.getElementById("ip_u_s_add_id").value = row.eq(1).text();
		document.getElementById("ip_u_s_address").value = row.eq(2).text();
		document.getElementById("ip_u_s_flag").value = row.eq(3).text();
	});
	
	//사업자정보_테이블_상세조회	 
	$('#tableUserB tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_tbUserB_u_b_id").value = row.eq(0).text();
		document.getElementById("ip_u_b_name").value = row.eq(1).text();
		document.getElementById("ip_u_b_number").value = row.eq(2).text();
		document.getElementById("ip_u_b_email").value = row.eq(3).text();
		document.getElementById("ip_u_b_access").value = row.eq(4).text();
		document.getElementById("ip_u_b_join_dttm").value = row.eq(5).text();
		document.getElementById("ip_u_b_login_dttm").value = row.eq(6).text();
		document.getElementById("ip_u_b_logout_dttm").value = row.eq(7).text();
	});
	
	//개인사용자정보_테이블_상세조회	 
	$('#tableUserP tr').on('click', function() {

		var row = $(this).children();

		document.getElementById("ip_tbUserP_u_p_id").value = row.eq(0).text();
		document.getElementById("ip_u_p_name").value = row.eq(1).text();
		document.getElementById("ip_u_p_number").value = row.eq(2).text();
		document.getElementById("ip_u_p_email").value = row.eq(3).text();
		document.getElementById("ip_u_p_access").value = row.eq(4).text();
		document.getElementById("ip_u_p_ad_yn").value = row.eq(5).text();
		document.getElementById("ip_u_p_ad_media").value = row.eq(6).text();
		document.getElementById("ip_u_p_desc").value = row.eq(7).text();
		document.getElementById("ip_u_p_join_dttm").value = row.eq(8).text();
		document.getElementById("ip_u_p_login_dttm").value = row.eq(9).text();
		document.getElementById("ip_u_p_logout_dttm").value = row.eq(10).text();
		
	});
	
	//개인사용자_주소_테이블_상세조회	 
	$('#tableUserPAdres tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_tbUserPAdres_u_p_id").value = row.eq(0).text();
		document.getElementById("ip_u_p_add_id").value = row.eq(1).text();
		document.getElementById("ip_u_p_address").value = row.eq(2).text();
		document.getElementById("ip_u_p_flag").value = row.eq(3).text();
		
	});
	
	//찜목록_테이블_상세조회	 
	$('#tableZzim tr').on('click', function() {
		var row = $(this).children();
		
		document.getElementById("ip_tbZzim_u_p_id").value = row.eq(0).text();
		document.getElementById("ip_tbZzim_u_s_id").value = row.eq(1).text();
		document.getElementById("ip_tbZzim_z_desc").value = row.eq(2).text();
	});
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
			
	            <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">테이블을 선택하세요.</h4>
	            <select name="comboList" id="comboList" size="1">     
	            	<option value="" selected>테이블을 선택하세요.</option>
					<c:forEach var="item" items="${comboList}">
					    <option value="${item.cb_num}">${item.cb_name}</option>
					</c:forEach>
	            </select>
	        <!--form name="fm" method="GET" action="${contextPath}/manage/manageListAll">
	            
	            <button class="main-btn" id="btnSelect" name="btnSelect" type="submit">조회</button>
            </form -->
            <input type="text" name="hidden_upId" id="hidden_upId" class="form-control" readonly="readonly" />
            <button class="main-btn" id="btnSelect" name="btnSelect">조회</button>
            
            <!-- ----------------------콤보박스에서 테이블 선택별로 div show or hide 처리 Start------------------------------------ -->
            <!-- 게시판_테이블 -->
			<div id="sht_board" name="sht_board">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableBoard"  name="tableBoard">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">게시글ID</th>
	                      <th class="px-4 py-3">작성자</th>
	                      <th class="px-4 py-3">게시판 타입</th>
	                      <th class="px-4 py-3">제목</th>
	                      <th class="px-4 py-3">내용</th>
	                      <th class="px-4 py-3">사진파일</th>
	                      <th class="px-4 py-3">제보게시글상태</th>
	                      <th class="px-4 py-3">등록일시</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbBoardList}" var="boardList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${boardList.b_id}</a></td>
								<td class=" px-3 py-2">${boardList.b_writer}</td>
								<td class=" px-3 py-2">${boardList.b_type}</td>
								<td class=" px-3 py-2">${boardList.b_title}</td>
								<td class=" px-3 py-2">${boardList.b_content}</td>
								<td class=" px-3 py-2">${boardList.b_img_upload}</td>
								<td class=" px-3 py-2">${boardList.b_state}</td>
								<td class=" px-3 py-2">${boardList.b_datetime}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box" id="sht_board_dtl">
				<div class="box-body">
					<div class="form-group">
						<label>게시글ID</label><input type="text" id="ip_b_id" name="ip_b_id"  class="form-control" readonly="readonly"/>
						<label>작성자</label><input type="text" name="ip_b_writer" id="ip_b_writer" class="form-control" readonly="readonly" />
						<label>게시판타입</label><input type="text" name="ip_b_type" id="ip_b_type" class="form-control"  readonly= readonly" />
						<label>제목</label><input type="text" name="ip_b_title" id="ip_b_title" class="form-control" readonly= "readonly" />
						<label>내용</label><input type="text" name="ip_b_content" id="ip_b_content" class="form-control" readonly= "readonly" />
						<label>사진파일</label><input type="text" name="ip_b_img_upload" id="ip_b_img_upload" class="form-control" readonly= "readonly" />
						<label>제보게시글상태</label><input type="text" name="ip_b_state" id="ip_b_state" class="form-control" readonly= "readonly" />
						<label>등록일시</label><input type="text" name="ip_b_datetime" id="ip_b_datetime" class="form-control" readonly= "readonly" />
					</div>
				</div>
				</div>
			</div>
			<!-- 장바구니_테이블 -->
			<div id="sht_cart" name="sht_cart">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableCart"  name="tableCart">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">사용자ID</th>
	                      <th class="px-4 py-3">가게내부ID</th>
	                      <th class="px-4 py-3">메뉴ID</th>
	                      <th class="px-4 py-3">구매수량</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbCartList}" var="cartList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${cartList.u_p_id}</a></td>
								<td class=" px-3 py-2">${cartList.u_s_id}</td>
								<td class=" px-3 py-2">${cartList.m_id}</td>
								<td class=" px-3 py-2">${cartList.ct_count}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>사용자ID</label><input type="text" name="ip_u_p_id" id="ip_u_p_id" class="form-control" readonly="readonly" />
						<label>가게내부ID</label><input type="text" name="ip_u_s_id" id="ip_u_s_id" class="form-control"  readonly= readonly" />
						<label>메뉴ID</label><input type="text" name="ip_m_id" id="ip_m_id" class="form-control" readonly= "readonly" />
						<label>구매수량</label><input type="text" name="ip_ct_count" id="ip_ct_count" class="form-control" readonly= "readonly" />
					</div>
				</div>
				</div>
			</div>
			<!-- 카테고리분류_테이블 -->
			<div id="sht_category" name="sht_category">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableCate"  name="tableCate">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">카테고리ID</th>
	                      <th class="px-4 py-3">카테고리명</th>
	                      <th class="px-4 py-3">사용유무</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbCateList}" var="cateList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${cateList.c_id}</a></td>
								<td class=" px-3 py-2">${cateList.c_name}</td>
								<td class=" px-3 py-2">${cateList.c_use}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>카테고리ID</label><input type="text" name="ip_c_id" id="ip_c_id" class="form-control" readonly="readonly" />
						<label>카테고리명</label><input type="text" name="ip_c_name" id="ip_c_name" class="form-control"  readonly= readonly" />
						<label>사용유무</label><input type="text" name="ip_c_use" id="ip_c_use" class="form-control" readonly= "readonly" />
					</div>
				</div>
				</div>
			</div>
			<!-- 콤보리스트_테이블 -->
			<div id="sht_combo" name="sht_combo">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableCombo"  name="tableCombo">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">카테고리ID</th>
	                      <th class="px-4 py-3">카테고리명</th>
	                      <th class="px-4 py-3">사용유무</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbComboList}" var="comboList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${comboList.cb_id}</a></td>
								<td class=" px-3 py-2">${comboList.cb_num}</td>
								<td class=" px-3 py-2">${comboList.cb_name}</td>
								<td class=" px-3 py-2">${comboList.cb_use_yn}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>콤보리스트ID</label><input type="text" name="ip_cb_id" id="ip_cb_id" class="form-control" readonly="readonly" />
						<label>리스트번호</label><input type="text" name="ip_cb_num" id="ip_cb_num" class="form-control"  readonly= readonly" />
						<label>리스트명</label><input type="text" name="ip_cb_name" id="ip_cb_name" class="form-control" readonly= "readonly" />
						<label>사용유무</label><input type="text" name="ip_cb_use_yn" id="ip_cb_use_yn" class="form-control" readonly= "readonly" />
					</div>
				</div>
				</div>
			</div>
			<!-- 댓글_테이블 -->
			<div id="sht_comment" name="sht_comment">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableComment"  name="tableComment">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">댓글ID</th>
	                      <th class="px-4 py-3">작성자</th>
	                      <th class="px-4 py-3">제보게시글ID</th>
	                      <th class="px-4 py-3">댓글내용</th>
	                      <th class="px-4 py-3">등록일시</th>
	                      <th class="px-4 py-3">댓글보여주기상태</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbCmtList}" var="cmtList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${cmtList.bc_id}</a></td>
								<td class=" px-3 py-2">${cmtList.bc_writer}</td>
								<td class=" px-3 py-2">${cmtList.b_id}</td>
								<td class=" px-3 py-2">${cmtList.bc_content}</td>
								<td class=" px-3 py-2">${cmtList.bc_datetime}</td>
								<td class=" px-3 py-2">${cmtList.bc_use}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>댓글ID</label><input type="text" name="ip_bc_id" id="ip_bc_id" class="form-control" readonly="readonly" />
						<label>작성자</label><input type="text" name="ip_bc_writer" id="ip_bc_writer" class="form-control"  readonly= readonly" />
						<label>제보게시글</label><input type="text" name="ip_tbCmt_b_id" id="ip_tbCmt_b_id" class="form-control" readonly= "readonly" />
						<label>댓글내용</label><input type="text" name="ip_bc_content" id="ip_bc_content" class="form-control" readonly= "readonly" />
						<label>등록일시</label><input type="text" name="ip_bc_datetime" id="ip_bc_datetime" class="form-control" readonly= "readonly" />
						<label>댓글보여주기</label><input type="text" name="ip_b_use" id="ip_b_use" class="form-control" readonly= "readonly" />
					</div>
				</div>
				</div>
			</div>
			<!-- 메뉴_테이블 -->
			<div id="sht_menu" name="sht_menu">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableMenu"  name="tableMenu">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">가게내부ID</th>
	                      <th class="px-4 py-3">메뉴ID</th>
	                      <th class="px-4 py-3">메뉴명</th>
	                      <th class="px-4 py-3">금액</th>
	                      <th class="px-4 py-3">판매가능수량</th>
	                      <th class="px-4 py-3">메뉴별 조리시간</th>
	                      <th class="px-4 py-3">메뉴 보여주기</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbMenuList}" var="menuList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${menuList.u_s_id}</a></td>
								<td class=" px-3 py-2">${menuList.m_id}</td>
								<td class=" px-3 py-2">${menuList.m_name}</td>
								<td class=" px-3 py-2">${menuList.m_price}</td>
								<td class=" px-3 py-2">${menuList.m_stock}</td>
								<td class=" px-3 py-2">${menuList.m_ltime}</td>
								<td class=" px-3 py-2">${menuList.m_state}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>가게내부ID</label><input type="text" name="ip_tbMenu_u_s_id" id="ip_tbMenu_u_s_id" class="form-control" readonly="readonly" />
						<label>메뉴ID</label><input type="text" name="ip_tbMenu_m_id" id="ip_tbMenu_m_id" class="form-control"  readonly= readonly" />
						<label>메뉴명</label><input type="text" name="ip_m_name" id="ip_m_name" class="form-control" readonly= "readonly" />
						<label>금액</label><input type="text" name="ip_m_price" id="ip_m_price" class="form-control" readonly= "readonly" />
						<label>판매가능수량</label><input type="text" name="ip_m_stock" id="ip_m_stock" class="form-control" readonly= "readonly" />
						<label>메뉴별 조리소요시간</label><input type="text" name="ip_m_ltime" id="ip_m_ltime" class="form-control" readonly= "readonly" />
						<label>메뉴별 보요주기유무</label><input type="text" name="ip_m_state" id="ip_m_state" class="form-control" readonly= "readonly" />
					</div>
				</div>
				</div>
			</div>
			<!-- 주문내역_테이블 -->
			<div id="sht_order" name="sht_order">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableOrder"  name="tableOrder">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">주문번호</th>
	                      <th class="px-4 py-3">가게내부ID</th>
	                      <th class="px-4 py-3">사용자ID</th>
	                      <th class="px-4 py-3">주문수량총합</th>
	                      <th class="px-4 py-3">주문메뉴총액</th>
	                      <th class="px-4 py-3">총조리소요시간</th>
	                      <th class="px-4 py-3">주문상태</th>
	                      <th class="px-4 py-3">주문메모</th>
	                      <th class="px-4 py-3">주문일시</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbOrderList}" var="orderList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${orderList.o_number}</a></td>
								<td class=" px-3 py-2">${orderList.u_s_id}</td>
								<td class=" px-3 py-2">${orderList.u_p_id}</td>
								<td class=" px-3 py-2">${orderList.o_cnt_total}</td>
								<td class=" px-3 py-2">${orderList.o_amt_total}</td>
								<td class=" px-3 py-2">${orderList.o_ltime_total}</td>
								<td class=" px-3 py-2">${orderList.o_state}</td>
								<td class=" px-3 py-2">${orderList.o_desc}</td>
								<td class=" px-3 py-2">${orderList.o_datetime}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>주문번호</label><input type="text" name="ip_o_number" id="ip_o_number" class="form-control" readonly="readonly" />
						<label>가게내부ID</label><input type="text" name="ip_u_s_id" id="ip_u_s_id" class="form-control"  readonly= readonly" />
						<label>사용자ID</label><input type="text" name="ip_u_p_id" id="ip_u_p_id" class="form-control" readonly= "readonly" />
						<label>주문수량총합</label><input type="text" name="ip_o_cnt_total" id="ip_o_cnt_total" class="form-control" readonly= "readonly" />
						<label>주문메뉴총액</label><input type="text" name="ip_o_amt_total" id="ip_o_amt_total" class="form-control" readonly= "readonly" />
						<label>총조리소요시간</label><input type="text" name="ip_o_ltime_total" id="ip_o_ltime_total" class="form-control" readonly= "readonly" />
						<label>주문상태</label><input type="text" name="ip_o_state" id="ip_o_state" class="form-control" readonly= "readonly" />
						<label>주문메모</label><input type="text" name="ip_o_desc" id="ip_o_desc" class="form-control" readonly= "readonly" />
						<label>주문일시</label><input type="text" name="ip_o_datetime" id="ip_o_datetime" class="form-control" readonly="readonly" />
					</div>
				</div>
				</div>
			</div>
			<!-- 주문내역_상세_테이블 -->
			<div id="sht_order_detail" name="sht_order_detail">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableOrderDtl"  name="tableOrderDtl">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">주문번호</th>
	                      <th class="px-4 py-3">메뉴ID</th>
	                      <th class="px-4 py-3">수량</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbOrderDtlList}" var="orderDtlList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${orderDtlList.o_number}</a></td>
								<td class=" px-3 py-2">${orderDtlList.m_id}</td>
								<td class=" px-3 py-2">${orderDtlList.o_cnt}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>주문번호</label><input type="text" name="ip_o_number" id="ip_o_number" class="form-control" readonly="readonly" />
						<label>메뉴ID</label><input type="text" name="ip_m_id" id="ip_m_id" class="form-control"  readonly= readonly" />
						<label>수량</label><input type="text" name="ip_o_cnt" id="ip_o_cnt" class="form-control" readonly= "readonly" />
					</div>
				</div>
				</div>
			</div>
			<!-- 사업장정보_테이블 -->
			<div id="sht_store" name="sht_store">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableStore"  name="tableStore">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">가게내부ID</th>
	                      <th class="px-4 py-3">사업자ID</th>
	                      <th class="px-4 py-3">사업자등록번호</th>
	                      <th class="px-4 py-3">가게명</th>
	                      <th class="px-4 py-3">가게전화번호</th>
	                      <th class="px-4 py-3">카테고리ID</th>
	                      <th class="px-4 py-3">가게오픈여부</th>
	                      <th class="px-4 py-3">사업장별 대기시간</th>
	                      <th class="px-4 py-3">사업자등록증파일</th>
	                      <th class="px-4 py-3">가게정보</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbStoreList}" var="storeList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${storeList.u_s_id}</a></td>
								<td class=" px-3 py-2">${storeList.u_b_id}</td>
								<td class=" px-3 py-2">${storeList.s_regi_num}</td>
								<td class=" px-3 py-2">${storeList.s_name}</td>
								<td class=" px-3 py-2">${storeList.s_number}</td>
								<td class=" px-3 py-2">${storeList.c_id}</td>
								<td class=" px-3 py-2">${storeList.s_state}</td>
								<td class=" px-3 py-2">${storeList.s_time}</td>
								<td class=" px-3 py-2">${storeList.u_b_img_upload}</td>
								<td class=" px-3 py-2">${storeList.s_desc}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>가게내부ID</label><input type="text" name="ip_tbStore_u_s_id" id="ip_tbStore_u_s_id" class="form-control" readonly="readonly" />
						<label>사업자ID</label><input type="text" name="ip_u_b_id" id="ip_u_b_id" class="form-control"  readonly= readonly" />
						<label>사업자등록번호</label><input type="text" name="ip_s_regi_num" id="ip_s_regi_num" class="form-control" readonly= "readonly" />
						<label>가게명</label><input type="text" name="ip_s_name" id="ip_s_name" class="form-control" readonly= "readonly" />
						<label>가게전화번호</label><input type="text" name="ip_s_number" id="ip_s_number" class="form-control" readonly= "readonly" />
						<label>카테고리ID</label><input type="text" name="ip_tbStore_c_id" id="ip_tbStore_c_id" class="form-control" readonly= "readonly" />
						<label>가게오픈여부</label><input type="text" name="ip_s_state" id="ip_s_state" class="form-control" readonly= "readonly" />
						<label>사업장별대기시간</label><input type="text" name="ip_s_time" id="ip_s_time" class="form-control" readonly= "readonly" />
						<label>사업자등록증파일</label><input type="text" name="ip_u_b_img_upload" id="ip_u_b_img_upload" class="form-control" readonly="readonly" />
						<label>가게정보</label><input type="text" name="ip_s_desc" id="ip_s_desc" class="form-control" readonly="readonly" />
					</div>
				</div>
				</div>
			</div>
			<!-- 사업장_주소_테이블 -->
			<div id="sht_store_address" name="sht_store_address">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableStoreAdres"  name="tableStoreAdres">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">가게내부ID</th>
	                      <th class="px-4 py-3">사업장주소별칭</th>
	                      <th class="px-4 py-3">사업장주소</th>
	                      <th class="px-4 py-3">사업장메인주소</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbStoreAdresList}" var="storeAdresList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${storeAdresList.u_s_id}</a></td>
								<td class=" px-3 py-2">${storeAdresList.u_s_add_id}</td>
								<td class=" px-3 py-2">${storeAdresList.u_s_address}</td>
								<td class=" px-3 py-2">${storeAdresList.u_s_flag}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>가게내부ID</label><input type="text" name="ip_tbSAdres_u_s_id" id="ip_tbSAdres_u_s_id" class="form-control" readonly="readonly" />
						<label>사업장주소별칭</label><input type="text" name="ip_u_s_add_id" id="ip_u_s_add_id" class="form-control"  readonly= readonly" />
						<label>사업장주소</label><input type="text" name="ip_u_s_address" id="ip_u_s_address" class="form-control" readonly= "readonly" />
						<label>사업장메인주소</label><input type="text" name="ip_u_s_flag" id="ip_u_s_flag" class="form-control" readonly= "readonly" />
					</div>
				</div>
				</div>
			</div>
			<!-- 사업자정보_테이블 -->
			<div id="sht_user_b" name="sht_user_b">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableUserB"  name="tableUserB">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">사업자ID</th>
	                      <th class="px-4 py-3">사업자명</th>
	                      <th class="px-4 py-3">사업자 연락처</th>
	                      <th class="px-4 py-3">이메일</th>
	                      <th class="px-4 py-3">권한</th>
	                      <th class="px-4 py-3">회원가입일시</th>
	                      <th class="px-4 py-3">로그인일시</th>
	                      <th class="px-4 py-3">로그아웃일시</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbUserbList}" var="userbList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${userbList.u_b_id}</a></td>
								<td class=" px-3 py-2">${userbList.u_b_name}</td>
								<td class=" px-3 py-2">${userbList.u_b_number}</td>
								<td class=" px-3 py-2">${userbList.u_b_email}</td>
								<td class=" px-3 py-2">${userbList.u_b_access}</td>
								<td class=" px-3 py-2">${userbList.u_b_join_dttm}</td>
								<td class=" px-3 py-2">${userbList.u_b_login_dttm}</td>
								<td class=" px-3 py-2">${userbList.u_b_logout_dttm}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>사업자ID</label><input type="text" name="ip_tbUserB_u_b_id" id="ip_tbUserB_u_b_id" class="form-control" readonly="readonly" />
						<label>사업자명</label><input type="text" name="ip_u_b_name" id="ip_u_b_name" class="form-control"  readonly= readonly" />
						<label>연락처</label><input type="text" name="ip_u_b_number" id="ip_u_b_number" class="form-control" readonly= "readonly" />
						<label>이메일</label><input type="text" name="ip_u_b_email" id="ip_u_b_email" class="form-control" readonly= "readonly" />
						<label>권한</label><input type="text" name="ip_u_b_access" id="ip_u_b_access" class="form-control" readonly= "readonly" />
						<label>회원가입일시</label><input type="text" name="ip_u_b_join_dttm" id="ip_u_b_join_dttm" class="form-control" readonly="readonly" />
						<label>로그인일시</label><input type="text" name="ip_u_b_login_dttm" id="ip_u_b_login_dttm" class="form-control" readonly="readonly" />
						<label>로그아웃일시</label><input type="text" name="ip_u_b_logout_dttm" id="ip_u_b_logout_dttm" class="form-control" readonly="readonly" />
					</div>
				</div>
				</div>
			</div>
            <!-- 개인사용자정보_테이블 -->
            <div id="sht_user_p" name="sht_user_p">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableUserP"  name="tableUserP">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">사용자ID</th>
	                      <th class="px-4 py-3">이름</th>
	                      <th class="px-4 py-3">연락처</th>
	                      <th class="px-4 py-3">이메일</th>
	                      <th class="px-4 py-3">권한</th>
	                      <th class="px-4 py-3">광고동의</th>
	                      <th class="px-4 py-3">광고매체</th>
	                      <th class="px-4 py-3">사용자메모</th>
	                      <th class="px-4 py-3">회원가입일시</th>
	                      <th class="px-4 py-3">로그인일시</th>
	                      <th class="px-4 py-3">로그아웃일시</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbUserPList}" var="userPList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${userPList.u_p_id}</a></td>
								<td class=" px-3 py-2">${userPList.u_p_name}</td>
								<td class=" px-3 py-2">${userPList.u_p_number}</td>
								<td class=" px-3 py-2">${userPList.u_p_email}</td>
								<td class=" px-3 py-2">${userPList.u_p_access}</td>
								<td class=" px-3 py-2">${userPList.u_p_ad_yn}</td>
								<td class=" px-3 py-2">${userPList.u_p_ad_media}</td>
								<td class=" px-3 py-2">${userPList.u_p_desc}</td>
								<td class=" px-3 py-2">${userPList.u_p_join_dttm}</td>
								<td class=" px-3 py-2">${userPList.u_p_login_dttm}</td>
								<td class=" px-3 py-2">${userPList.u_p_logout_dttm}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>사용자ID</label><input type="text" name="ip_tbUserP_u_p_id" id="ip_tbUserP_u_p_id" class="form-control" readonly="readonly" />
						<label>이름</label><input type="text" name="ip_u_p_name" id="ip_u_p_name" class="form-control"  readonly= readonly" />
						<label>연락처</label><input type="text" name="ip_u_p_number" id="ip_u_p_number" class="form-control" readonly= "readonly" />
						<label>이메일</label><input type="text" name="ip_u_p_email" id="ip_u_p_email" class="form-control" readonly= "readonly" />
						<label>권한</label><input type="text" name="ip_u_p_access" id="ip_u_p_access" class="form-control" readonly= "readonly" />
						<label>광고동의</label><input type="text" name="ip_u_p_ad_yn" id="ip_u_p_ad_yn" class="form-control" readonly= "readonly" />
						<label>광고매체</label><input type="text" name="ip_u_p_ad_media" id="ip_u_p_ad_media" class="form-control" readonly= "readonly" />
						<label>사용자메모</label><input type="text" name="ip_u_p_desc" id="ip_u_p_desc" class="form-control" readonly= "readonly" />
						<label>회원가입일시</label><input type="text" name="ip_u_p_join_dttm" id="ip_u_p_join_dttm" class="form-control" readonly="readonly" />
						<label>로그인일시</label><input type="text" name="ip_u_p_login_dttm" id="ip_u_p_login_dttm" class="form-control" readonly="readonly" />
						<label>로그아웃일시</label><input type="text" name="ip_u_p_logout_dttm" id="ip_u_p_logout_dttm" class="form-control" readonly="readonly" />
					</div>
				</div>
				</div>
			</div>
			<!-- 개인사용자_주소_테이블 -->
			<div id="sht_user_p_address" name="sht_user_p_address">
	         <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableUserPAdres"  name="tableUserPAdres">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">사용자ID</th>
	                      <th class="px-4 py-3">주소별칭</th>
	                      <th class="px-4 py-3">사용자주소</th>
	                      <th class="px-4 py-3">사용자메인주소</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbUserPAdresList}" var="userPAdresList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${userPAdresList.u_p_id}</a></td>
								<td class="px-3 py-2">${userPAdresList.u_p_add_id}</td>
								<td class="px-3 py-2">${userPAdresList.u_p_address}</td>
								<td class="px-3 py-2">${userPAdresList.u_p_flag}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	          </div>
	          <!-- 단건조회 -->
	        <div class="box">
			<div class="box-header">
				<h4 class="box-title">상세조회</h4>
			</div>
			<div class="box-body">
				<div class="form-group">
					<label>사용자ID</label><input type="text" name="ip_tbUserPAdres_u_p_id" id="ip_tbUserPAdres_u_p_id" class="form-control" readonly="readonly" />
					<label>주소별칭</label><input type="text" name="ip_u_p_add_id" id="ip_u_p_add_id" class="form-control"  readonly= readonly" />
					<label>사용자주소</label><input type="text" name="ip_u_p_address" id="ip_u_p_address" class="form-control" readonly= "readonly" />
					<label>사용자 메인주소</label><input type="text" name="ip_u_p_flag" id="ip_u_p_flag" class="form-control" readonly= "readonly" />
				</div>
			</div>
			</div>
			</div>
			<hr><p></p>
			<!-- 찜목록 테이블 -->
			<div id="sht_zzim" name="sht_zzim">
	            <div class="w-full mb-8 overflow-hidden rounded-lg shadow-xs">
	              <div class="w-full overflow-x-auto">
	                <table class="w-full whitespace-no-wrap" id="tableZzim"  name="tableZzim">
	                  <thead>
	                    <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
	                      <th class="px-4 py-3">사용자ID</th>
	                      <th class="px-4 py-3">가게내부ID</th>
	                      <th class="px-4 py-3">가게정보메모</th>
	                    </tr>
	                  </thead>
	                  <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
	                  	<c:forEach items="${tbZzimList}" var="zzimList">
	                    	<tr class="text-gray-700 dark:text-gray-400">
	                    		<td class="font-semibold px-3 py-2"><a href="javascript:void(0)">${zzimList.u_p_id}</a></td>
								<td class=" px-3 py-2">${zzimList.u_s_id}</td>
								<td class=" px-3 py-2">${zzimList.z_desc}</td>
	                    	</tr>
						</c:forEach>
	                  </tbody>
	                </table>
	              </div>
	              <div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
	                <span class="flex items-center col-span-3">
	                  Showing 21-30 of 100
	                </span>
	                <span class="col-span-2"></span>
	                <!-- Pagination -->
	                <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
	                  <nav aria-label="Table navigation">
	                    <ul class="inline-flex items-center">
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Previous"
	                        >
	                          <svg
	                            aria-hidden="true"
	                            class="w-4 h-4 fill-current"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          1
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          2
	                        </button>
	                      </li>
	                      <li>
	                        <button
	                          class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple"
	                        >
	                          3
	                        </button>
	                      <li>
	                        <button
	                          class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple"
	                          aria-label="Next"
	                        >
	                          <svg
	                            class="w-4 h-4 fill-current"
	                            aria-hidden="true"
	                            viewBox="0 0 20 20"
	                          >
	                            <path
	                              d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
	                              clip-rule="evenodd"
	                              fill-rule="evenodd"
	                            ></path>
	                          </svg>
	                        </button>
	                      </li>
	                    </ul>
	                  </nav>
	                </span>
	              </div>
	            </div>
				
				<hr><p></p>
			    	<!-- 단건조회 -->
			    <div class="box">
				<div class="box-header">
					<h4 class="box-title">상세조회</h4>
				</div>
				<div class="box-body">
					<div class="form-group">
						<label>사용자ID</label><input type="text" name="ip_tbZzim_u_p_id" id="ip_tbZzim_u_p_id" class="form-control" readonly="readonly" />
						<label>가게내부ID</label><input type="text" name="ip_tbZzim_u_s_id" id="ip_tbZzim_u_s_id" class="form-control"  readonly= readonly" />
						<label>가게정보메모</label><input type="text" name="ip_tbZzim_z_desc" id="ip_tbZzim_z_desc" class="form-control" readonly= "readonly" />
					</div>
				</div>
				</div>
			</div>

			</div>
		</div>
	</div>
</div>
	<button class="main-btn" id="btnInsert" name="btnInsert">입력</button>
	<button class="main-btn" id="btnUpdate" name="btnUpdate">수정</button>
	<button class="main-btn" id="btnDelete" name="btnDelete">삭제</button>
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