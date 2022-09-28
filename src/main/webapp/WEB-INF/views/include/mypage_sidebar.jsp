<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<c:set var="contextPath" value="${pageContext.request.contextPath }" />


<div class="col-lg-4 col-md-6 col-sm-9">
	<div class="blog-sidebar mt-30">
			<div class="blog-sidebar-list mt-60">
				<div class="blog-sidebar-title">
					<h3 class="title"><a href="mypage">mypage menu</a></h3>
				</div>
				<div class="blog-sidebar-list-item">
					<ul>
						<li><a href="${contextPath}/mypageU/userInfo">회원정보수정</a></li>
						<li><a href="${contextPath}/ListAll">찜목록</a></li>
						<li><a href="mypage">주문내역</a></li>
						<li><a href="${contextPath}/mypageU/u_Addr_List">주소관리</a></li>
						<li><a href="${contextPath}/mypageU/eatitem">오늘 뭐 먹을까?</a></li>
						<li><a href="mypage">제보하기</a></li>
						<li><a href="${contextPath}/mypageU/u_unregister">회원탈퇴</a></li>
					</ul>
				</div>
			</div>
			
		</div>
	</div>
</div>