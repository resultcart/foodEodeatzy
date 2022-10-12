<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />


<!doctype html>
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
					<li class="breadcrumb-item active" aria-current="page">메뉴 관리</li>
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
			
			<script>
			function menudelete(u_s_id, m_id) {
								
				var url = "${pageContext.request.contextPath}/menudelete";
				var paramData = {
						"m_id" : m_id,
						"u_s_id" : u_s_id
				};
				
				$.ajax({
					url: url,
					data: paramData,
					dataType: 'json',
					type: 'POST',					
					success: function(result){
						console.log(result);
						alert('메뉴 삭제 성공');
					},					
					error: function(result){
						console.log(result);
						alert('메뉴 삭제 실패');
					}

				});

			}
						
			</script>
			
			
				<!-- 내용쓰기 -->
				<div class="blog-details-form">
					<div class="blog-details-title">
						<h3 class="title">메뉴 관리</h3>
									<button class="main-btn mt-20" onclick="location.href='insertmenu'">메뉴 추가</button>
					</div>				
									<br>
			
									 <div class="blog-details-form-item">
                                                <form action="#">
                                                        <div class="row">
                                                                <div class="col-lg-500">
                                                                	  <section class="content container-fluid">
																		 <div>${msg}</div>
																		  <table class="table">
                                                                        <thead>
                                                                                	<tr>
                                                                                        <td>가게 내부 ID</td>        
                                                                                        <td>메뉴 ID</td>        
                                                                                        <td>메뉴명</td>        
                                                                                        <td>가격</td>        
                                                                                        <td>판매 가능 수량</td>        
                                                                                        <td>조리 소요 시간</td>        
                                                                                        <td>메뉴</td>
                                                                                        <td>편집</td>        
                                                                                </tr>
                                                                        </thead>
                                                                        <tbody></tbody>                                                                    
                                        <c:forEach var="selectmenu" items="${selectmenu}">
                                        <tr>
				                         <td>${selectmenu.u_s_id }</td>
				                         <td>${selectmenu.m_id }</td>
				                         <td>${selectmenu.m_name }</td>
				                         <td><fmt:formatNumber value="${selectmenu.m_price}" maxFractionDigits="0"/>원</td>
				                         <td>${selectmenu.m_stock}개</td>
				                         <td>${selectmenu.m_ltime}분</td>
				                         <td><a href="menudetail?m_id=${selectmenu.m_id}&u_s_id=${selectmenu.u_s_id }"> 수정 </a></td>				                         		                         			                         			                         	                         
				                         <td><a href="javascript:void(0)" onclick="menudelete('${selectmenu.u_s_id }', '${selectmenu.m_id }')" >삭제</a></td>				                         			                         
				                         </tr>
				                </c:forEach>  
							  </table>
							  											</section>
																	
										
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