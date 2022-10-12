<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<c:set var="assets_shPath" value="${pageContext.request.contextPath }/resources/assets_sh" />

<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<%
	request.setCharacterEncoding("utf-8");
	
	String u_p_id = request.getParameter("u_p_id");
	String u_p_add_id = request.getParameter("u_p_add_id");
	String u_p_address = request.getParameter("u_p_address");
	String u_p_flag = request.getParameter("u_p_flag");

	String u_b_id = request.getParameter("u_b_id");
	String u_b_add_id = request.getParameter("u_b_add_id");
	String u_b_address = request.getParameter("u_b_address");
	String u_b_flag = request.getParameter("u_b_flag");

%>

<!doctype html><html lang="en">
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

<!--====== DOWNLOAD PART START ======-->
<section class="download-area">
<div class="container">
	<div class="row justify-content-center">
	
	   <div><br><br><br><img src="${assetsPath}/images/푸드트럭.jpg" alt="푸드트럭"></div>
		<div class="col-lg-8">
			<div class="section-title text-center">
		
					<c:if test="${sessionScope.loginType  == 'user' }">
						<div class="card-body">
							<div class="page-title-box text-center"> <br>
								<h4><a class="card-title"  href="${contextPath }/mypageU/u_Addr_List">내주소</a></h4> </div>

							<table class="table">
								<tr>
									<th>ID</th>
									<th>별칭</th>
									<th>주소</th>
								</tr> 
								                      
								<tr>
									<td>${u_addr_one.u_p_id } <hr> </td>
									<td>${u_addr_one.u_p_add_id } <hr> </td>
									<td>${u_addr_one.u_p_address } <hr> </td>
								</tr>
							</table>
					</c:if>
					
					<c:if test="${sessionScope.loginType  == 'bussiness' }">
						<div class="card-body">
							<div class="page-title-box text-center"> <br>
								<h4><a class="card-title"  href="${contextPath }/mypageU/u_Addr_List"> 내주소</a></h4> </div>
									<table class="table">
										<tr>
											<th>ID</th>
											<th>별칭</th>
											<th>주소</th>
										</tr> 
										                      
										<tr>
											<td>${baddrone.u_b_id } <hr> </td>
											<td>${baddrone.u_s_add_id } <hr> </td>
											<td>${baddrone.u_s_address } <hr> </td>
										</tr>
									</table>
					</c:if>
							
					<c:if test="${sessionScope.user_id == null }">
					<br><br><br>
						<img src="${assetsPath}/images/shape/title-shape-2.png" alt="title">
						<a class="mt-4" href="${contextPath }/login">로그인 후 내주소 확인</a><br>
					</c:if>

						<div class="card-body">
								<h4><a class="card-title" href="${contextPath }/board/noticeList">공지보러가기</a></h4> </div>
							<div class="page-title-box text-center">
									<table class="table">
										<tr>
											<th>작성자</th>
											<th>제목</th>
											<th>내용</th>
										</tr> 
										                      
										<tr>
											<td>${notice_one.b_writer} <hr> </td>
											<td>${notice_one.b_title} <hr> </td>
											<td>${notice_one.b_content} <hr> </td>
										</tr>
									</table>		
							</div>	   		
			</div>
		  </div>
	  </div>
  </div>
<br>
<!--====== CATEGORY START ======-->

<style>
tr.space {
  border-bottom: 30px solid #fff;
}
</style>

	<section class="site-footer border-top"> <br>
	   <div class="container">
	      <div class="page-title-box text-center">

	      	 <h2 class="title">MENU CATEGORY</h2> 
	      	 
	      	 	<c:set var="i" value="0" />
				<c:set var="j" value="7" />
	      	 	<table style="margin-left: auto; margin-right: auto;">

			     <c:forEach var="ca" items="${catego}"> 
			       <c:if test="${i%j == 0 }">
		            <tr class="space">
		            </c:if>
		              <th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="${contextPath }/main/category_One?c_id=${ca.c_id}" class="btn btn-outline-warning btn-fw"> &nbsp; ${ca.c_name } &nbsp; </a><br></th>
		           <c:if test="${i%j == j-1 }"> <br>
		            </tr>
		              </c:if>
		               <c:set var="i" value="${i+1 }" />
	             </c:forEach>
	           
	             </table>
		     </div>
	    </div> 
	</section>

<!--====== CATEGORY ENDS======-->
<!--====== STORETYPE START======-->
<hr>
<div class="download-item-area bg_cover mt-30">
	<div class="container">
		<div class="row align-items-center">
		  <!-- 가게조회 -->
             
				<div class="card-body">
				<div class="page-title-box text-center"> <br>
					<h2 class="card-title">STORE LIST</h2> </div>
				<hr>
					<div class="table-responsive">
						<table class="table table-striped table-borderless">
							<thead>
								<tr>
									<th>가게명</th>
									<th>전화번호</th>
									<th>오픈 여부</th>
								</tr>  
							</thead>
							                      
							<tbody>
								<c:forEach var="st" items="${storetype }">
									<tr>
										<td><a href="${contextPath }/store/menu_list?u_s_id=${st.u_s_id }">${st.s_name }</a></td>
										<td>${st.s_number }</td>
											<c:if test="${st.s_state eq '1'}">
												<td><label class="badge badge-warning">OPEN</label></td>
											</c:if>
																	
									<c:if test="${st.s_state eq '2'}">
										<td><label class="badge badge-danger">CLOSE</label></td>
									</c:if>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>

			 <!-- 가게조회 끝 -->

		</div>
	</div>
</div>

</section>

<!--====== STORETYPE ENDS ======-->

<!--====== FOOTER PART START ======-->

<%@ include file="include/footer.jsp" %>

</body>
</html>