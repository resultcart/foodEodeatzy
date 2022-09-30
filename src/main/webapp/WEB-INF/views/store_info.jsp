<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<!DOCTYPE html>
<script type="text/javascript">
$(document).ready(function(){
	
        $('#zzimCheck').on('click', function(){
        	  
        	
        	var url = "${pageContext.request.contextPath}/zzimCheck";
        	var u_s_id = $('#u_s_id').val();
        	
        	var paramData = {
        			"u_s_id" : u_s_id
        	};
        	
        	
            $.ajax({
                url : url,
                
                data : paramData,
                
                dataType : 'text',
                
                type : 'POST',
                
                success : function(result){
                	
                	console.log("성공여부" + result);
                	 if(result != 'fail'){ 
                		
                		alert("새롭게 찜목록에 추가하고 찜목록 페이지로 넘어갑니다.");
                      
                     }
                     else{  
                    	
                     	alert("찜목록에 가게가 이미 존재합니다. 찜목록 페이지에서 확인하세요.");
                     	var url = "${pageContext.request.contextPath}/ListAll";
                     	location.replace(url);
                        
                     }
                	
                    
                },
                
                error : function(result){
                	
                	console.log("error" + result);
                	
                	
                } 
           
            });       
        });       
    });
</script>
<html>
<head>
<!-- head-->
<%@ include file="include/head.jsp" %>
</head>

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
				<h3 class="title">Store Search</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Store Search</li>
				</ol>
				</nav>
			</div>
		</div>
	</div>
</div>
</section>
<!--====== PAGE TITLE PART ENDS ======-->

<!--====== RESTAURANT PART START ======-->
<section class="restaurant-area pt-140">
<div class="container">
	<div class="row align-items-center">
		<div class="col-lg-6">
			<div class="section-title">
				<h3 class="title">Your Nearest Reataurant</h3>
				<p>
					Search Store!
				</p>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="restaurant-bar text-right">
				<span>Show</span>
				<select>
					<option data-display="Restaurant">6 Restaurant</option>
					<option value="1">8 Restaurant</option>
					<option value="2">10 Restaurant</option>
					<option value="3">12 Restaurant</option>
					<option value="4">14 Restaurant</option>
				</select>
			</div>
		</div>
		<div class="col-lg-12">
			<div class="search-restaurant">
			
			<!-- 검색 시작 -->
			<div>
				<form action="${contextPath}/store/store_info" method="POST">
					<input type="text" name="s_name" value=""></input>
					<button type="submit" class="btn btn-outline-primary mr-2" >검색</button>
				</form>
			</div>
			<!-- 끝 -->
			</div>
		</div>
	</div>
	<div class="row justify-content-center">
	
	<!-- 시작 -->
	<c:forEach var="search" items="${store_info}">
		<div class="col-lg-4 col-md-6 col-sm-9">
			<div class="restaurant-item mt-30">
				
				<div class="restaurant-thumb">
				<c:choose>
					<c:when test="${search.s_state eq 1}">
						<img src="${assetsPath}/images/restaurant-1.jpg" alt=""><span><input type="text" name="s_state" value="영업중" style="border: none; background: transparent; text-align:center;" readonly="readonly"></span>
					</c:when>
					<c:when test="${search.s_state eq 0}">
						<img src="${assetsPath}/images/restaurant-1.jpg" alt=""><span><input type="text" name="s_state" value="영업종료" style="border: none; background: transparent; text-align:center;" readonly="readonly"></span>
					</c:when>
				</c:choose>
				</div>
				
				<form method = "POST">
				<div class="restaurant-content">
					<div class="item d-flex justify-content-between align-items-center">
						<a href="menu_list?u_s_id=${search.u_s_id}">
						<input type="text" id = "u_s_id" name = "u_s_id" value = "${search.u_s_id }" hidden>
						<input type="text" name="s_name" value="${search.s_name }" style="border: none; background: transparent; text-align:center;" readonly="readonly"></a>
						</form>
						<div id ="color">
						<span>찜<button class="fas fa-star" id = "zzimCheck" style="border: none; background: transparent;" onclick="javascript: form.action='${pageContext.request.contextPath }/addZzim';"></button></span>
						</div>
								
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
	<!-- 끝 --> 
	</div>
</div>
</section>

<!--====== RESTAURANT PART ENDS ======-->

<!-- footer -->
<%@ include file="include/footer.jsp" %>
</body>
</html>