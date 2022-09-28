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
				<h3 class="title">ZZimList</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index-2.html">ZZim</a></li>
					<li class="breadcrumb-item active" aria-current="page">Update And Delete</li>
				</ol>
				</nav>
			</div>
		</div>
	</div>
</div>
</section>
<!--====== PAGE TITLE PART ENDS ======-->
<!--====== BLOG STANDARD PART START ======-->
<section class="blog-standard-area pt-100 pb-130">
<div class="container">
	<div class="row justify-content-center">
		<div class="col-lg-8">
			<div class="blog-details mt-25 mr-20">
     <!-- 내용쓰기 -->
	<section class="content container-fluid">	 
		<div class="table-responsive">
		  <table class="table">
					<div class="food-menu-area restaurant-details-area">
						<h1 class="title">Mypage ZzimList</h1>
	
					<hr>	
						<div class="col-lg-12">
								<div class="food-menu-box">
									<div class="row grid">
										<c:forEach items="${listall}" var="zzim" varStatus="status">
										
											<div class="col-lg-12"> 
												<form method ="POST">
													<div class="food-menu-item mt-50 d-block d-sm-flex align-items-center" >
														<div class="col-lg-8">
															<div class="food-menu-content">
													                <input type="text" name="u_p_id" value="${zzim.u_p_id}" hidden>
																	<input type="text" name="u_s_id" value="${zzim.u_s_id}" hidden>
																	
																	
																 	<h4 name="s_name" value="${zzim.zzimstoredto.s_name}">※가게명 : ${zzim.zzimstoredto.s_name}</h4>
																 	<h6>*가게아이디 : ${zzim.u_s_id } -> 수정시 필수 확인*</h6>
																</a>
																<br>
																
																<ul>
																	<li name="z_desc"> *가게메모 : ${zzim.z_desc}</li>
																	
																</ul>
															</div>
														</div>
														<div class="col-lg-5">
															<div class="food-menu-thumb">
															<button type="button" class="btn btn-link btn-fw" onclick ="location.href='${pageContext.request.contextPath }/detailzzim?u_s_id=${zzim.u_s_id }&u_p_id=${zzim.u_p_id }&z_desc=${zzim.z_desc }'">Update</button></td></td>
															<button type="submit" class="btn btn-link btn-fw" onclick="javascript: form.action='${pageContext.request.contextPath }/deleteZzim';">Delete</button></td></td>
															    
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
          </table>
		
		</tr>
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