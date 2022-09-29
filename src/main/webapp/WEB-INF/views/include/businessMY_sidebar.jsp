<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />

<div class="col-lg-4 col-md-6 col-sm-9">
	<div class="blog-sidebar mt-30">
			<div class="blog-sidebar-list mt-60">
				<div class="blog-sidebar-title">
					<h3 class="title"><a href="mypage">businessMY menu</a></h3>
				</div>
				<div class="blog-sidebar-list-item">
					<ul>
						<li><a href="b_userInfo">사업자 정보 조회</a></li>
						<li><a href="#">가게 추가</a></li>
						<li><a href="storeList">가게 정보 조회</a></li>
						<li><a href="selectMenu">메뉴 관리</a></li>
						<li><a href="b_Order">주문 확인</a></li>
						<li><a href="#">공지사항</a></li>
						<li><a href="b_unregister">회원탈퇴</a></li>
					</ul>
				</div>
			</div>
			
		</div>
	</div>
</div>