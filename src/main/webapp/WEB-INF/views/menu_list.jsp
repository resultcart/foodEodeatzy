<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<!DOCTYPE html>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

<html>
<!-- head-->
<%@ include file="include/head.jsp" %>

<script>
function plus() {
	var tmp = document.getElementById("ct_count").value;
	tmp++;
	
	document.getElementById("ct_count").value=tmp;
}

function minus() {
	var tmp = document.getElementById("ct_count").value;
	
	if(tmp>0){
		tmp--;
	}
	
	document.getElementById("ct_count").value=tmp;
}

//서버로 전송할 데이터
const form={
		u_p_id : '',
		u_s_id : '${m_list.u_s_id}',
		m_id : '${m_list.m_id}',
		ct_count : '${m_list.ct_count}'
}

//장바구니 추가 버튼
$(".btn_cart").on("click", function (e) {
	
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

<!--====== DISCOVER PART START ======-->
<section class="discover-area bg_cover" style="background-image: url(${assetsPath}/images/discover-bg.jpg);">
<div class="container">
	<div class="row justify-content-center">
		<div class="col-lg-12">
			<div class="section-title text-center">
			<!-- sname 고쳐라 -->
				<h4 class="title"><input type="text" name="s_name" value="${store_info.s_name }" style="border: none; background: transparent; text-align: center;" readonly="readonly"></input></h4>
			</div>
			
			<div align="right">
			<a href="store_info_detail?u_s_id=${u_s_id}">가게 상세정보/메모</a>
			</div>
			
		</div>
	</div>
	<div class="tab-content">
		<div class="tab-pane fade show active">
			<div class="row">
			
			<!-- 시작 -->
			<c:forEach var="m_list" items="${menu_list}">
				<c:if test="${m_list.m_state eq 1}">
				<div class="col-lg-4 col-md-6">
					<div class="discover-item mt-30">
						<div class="discover-thumb text-center">
							<img src="${assetsPath}/images/discover-1.png" alt=""><input type="text" name="m_state" value="판매중" style="border: none; background: transparent; text-align:center;" readonly="readonly"/>
							<!-- <img src="${assetsPath}/images/discover-1.png" alt="pizza"><span><input type="text" name="m_state" value="${m_list.m_state }" style="border: none; background: transparent; text-align:center;" readonly="readonly"></span> -->
						</div>
						<div class="discover-content">
							<h4 class="title"><input type="text"  name="m_name" value="${m_list.m_name }" style="border: none; background: transparent;" readonly="readonly"></input></h4>
						</div>
							
							<!-- <form action="${contextPath}/cart/ins_cartList" method="post"> -->
							<div class="js-qty quantity-selector">
							
								<div class="count-wrap_count">
								<a>수량 :  </a>
								<button onclick="plus()">+</button>
								<input type="text" name="ct_count" id="ct_count" value="1" readonly="readonly" />
								<button onclick="minus()">-</button>
								</div>
								
        					</div>
						
						<div class="button_set">
							<input type="text" name="m_price" value="${m_list.m_price }" size="3" readonly="readonly"  style="border: none; background: transparent;">원</input>
							<!-- <input type="submit" value="장바구니 추가"> -->
							<a href="http://localhost:8080/eodeatzy/cart/sel_cartList?u_s_id=${u_s_id}" class="btn_cart">장바구니 추가</a>
						</div>
						<!-- </form> -->
						</div>
					</div>				
				</c:if>
			</c:forEach>
			<!-- 끝 -->
			
			</div>
		</div>
	</div>
	
	<!-- <br><div align="center">
		<a href="http://localhost:8080/eodeatzy/cart/sel_cartList?u_s_id=${u_s_id}"><h3>장바구니</h3></a>
	</div> -->	
	
</div>
</section>
<!--====== DISCOVER PART ENDS ======-->

<!-- footer -->
<%@ include file="include/footer.jsp" %>
</body>
</html>