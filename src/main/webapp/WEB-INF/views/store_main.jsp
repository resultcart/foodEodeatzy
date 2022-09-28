<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<!DOCTYPE html>

<head>
<!-- head-->
<%@ include file="include/head.jsp" %>
</head>

<html>
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
				<h3 class="title">Store Info</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index-2.html">MenuList</a></li>
					<li class="breadcrumb-item active" aria-current="page">가게 상세정보/메모</li>
				</ol>
				</nav>
			</div>
		</div>
	</div>
</div>
</section>
<!--====== PAGE TITLE PART ENDS ======-->

<div>

	<div class="feature col">
        <div class="feature-icon bg-primary bg-gradient">
          <svg class="bi" width="1em" height="1em"><use xlink:href="#collection"></use></svg>
        </div>
        <div>
        <h2>가게 상세 정보</h2>
        </div>
        <div>
        가게 오픈 여부 : <input type="text" name="s_state" value="${menu_list.s_state }" readonly="readonly" style="border: none; background: transparent; text-align:center;"/><br>
        가게 전화번호 : <input type="text" name="s_number" value="${menu_list.s_number }" readonly="readonly" style="border: none; background: transparent; text-align:center;"/><br>
        대기시간 : <input type="text" name="s_time" value="${menu_list.s_time }" size="1" readonly="readonly" style="border: none; background: transparent; text-align:center;">분</input>        
        </div>
      </div><br>

	<div class="feature col">
        <div class="feature-icon bg-primary bg-gradient">
          <svg class="bi" width="1em" height="1em"><use xlink:href="#collection"></use></svg>
        </div>
        <div>
        <h2>가게 메모</h2>
        </div>
        <div>
        <input type="text" name="s_desc" value="${menu_list.s_desc }" readonly="readonly" size="30" style="border: none; background: transparent; text-align:center;"></input>
		</div>
      </div>	

</div>

<!-- footer -->
<%@ include file="include/footer.jsp" %>
</body>
</html>