<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<!DOCTYPE html>

<html>
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
				<h3 class="title">Order List</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index-2.html">Payment</a></li>
					<li class="breadcrumb-item active" aria-current="page">Order List</li>
				</ol>
				</nav>
			</div>
		</div>
	</div>
</div>
</section>
<!--====== PAGE TITLE PART ENDS ======-->

<section class="how-it-work-area bg_cover pt-150 pb-150 parallaxie" style="background-image: url(assets/images/how-it-work-bg.jpg);">
<div class="container">
<div class="bs-component">
              <div class="card mb-3">
                <h3 class="card-header" style="text-align:center;">영수증</h3>
                <div class="card-body">
                <b>가게명 :</b> <input type="text" name="s_name" value="Dallas Pizza- USA" style="border: none; background: transparent; font-weight : bold ;"><br>
                가게주소 : <input type="text" name="s_address" value="nado molla" style="border: none; background: transparent;">
                </div>
				
                
                <ul class="list-group list-group-flush"><br>
                <!-- 주문내역 Start -->
                <div align="center">
                <p>주문번호 : <input type="text" name="o_number" value="${o_number }" style="border: none; background: transparent;"></p>
                
                <table>
                	<thead>
                		<tr class="table-active" align="center">
                    		<th scope="row" colspan="3">주문 내역</th>                 		
                  		</tr>
                	</thead>
                	<tbody>
                	<tr align="center">
                    	<td>메뉴</td>
                    	<td>수량</td>
                   	 	<td>가격</td>               	                  		
                  	</tr>
                  	<c:forEach var="order_detail" items="">
                	<tr align="center">
                		<td>${order_detail.m_id}</td>
                		<td>${order_detail.o_cnt }</td>
                		<td><input type="text" name="m_price" value="18000" style="border: none; background: transparent; text-align:center;"></td>                   		
                  	</tr>
                  	</c:forEach>
                	<tr>
                		<td><input type="text" name="m_name" value="불고기 피자" style="border: none; background: transparent; text-align:center;"></td>
                		<td><input type="text" name="o_cnt" value="1" style="border: none; background: transparent; text-align:center;"></td>
                		<td><input type="text" name="m_price" value="18000" style="border: none; background: transparent; text-align:center;"></td>                   		
                  	</tr>
                	<tr>
                		<td><input type="text" name="m_name" value="포테이토 피자" style="border: none; background: transparent; text-align:center;"></td>
                		<td><input type="text" name="o_cnt" value="1" style="border: none; background: transparent; text-align:center;"></td>
                		<td><input type="text" name="m_price" value="18000" style="border: none; background: transparent; text-align:center;"></td>                   		
                  	</tr>               	                  	                  	
                	</tbody>
                	<tfoot>
                		<td></td>
                		<td align="center"><text>총가격</text></td>
                		<td><input type="text" name="o_amt_total" value="54000" style="border: none; background: transparent; text-align:center;"></td>                  	
                	</tfoot>
                </table>
                </div>
                <!-- 주문내역 End -->
                </ul>
                
                <div class="card-body">
                  <!-- <a href="orderlist">결제정보/주문내역</a> -->
                </div>
              </div>
</div>



</section>

<!-- footer -->
<%@ include file="include/footer.jsp" %>
</body>
</html>