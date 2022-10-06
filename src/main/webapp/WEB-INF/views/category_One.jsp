<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<!DOCTYPE html>

<html>
<!-- head-->
<%@ include file="include/head.jsp" %>

<script>
function count(type) {
	const resultElement = document.getElementById('result');
	var number = resultElement.innerText;
        						
	if(type == 'plus'){
		number == parseInt(number)+1;
		}else if(type=='minus'){
			number = parseInt(number)-1;
			}
	resultElement.innerText = number;
	}
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
   <div class="container">
      <div class="page-title-box text-center">  <br> <br>
      	 <h2 class="title">${category_name }</h2> <br>
	   </div>
    </div>
  <br>
	
	<div class="tab-content">
		<div class="tab-pane fade show active">
			<div class="row">
			

		  <!-- 가게조회 -->
			<div class="card-body">
		         <div class="table-responsive">
                    
	                  <table class="table">
	                        <tr>
	                          <th>가게명</th>
	                          <th>전화번호</th>
	                          <th>오픈 여부</th>
	                          <th>
	                          
	                        </tr>
	                      
						<c:forEach var="ca" items="${catego_one}">
							<tr>
								<td><a href="${contextPath }/store/menu_list?u_s_id=${ca.u_s_id }">${ca.s_name }</a></td>
								<td>${ca.s_number }</td>
									<c:if test="${ca.s_state eq '1'}">
										<td><label class="badge badge-warning">OPEN</label></td>
									</c:if>
									
									<c:if test="${ca.s_state eq '2'}">
										<td><label class="badge badge-danger">CLOSE</label></td>
									</c:if>
							</tr>
						</c:forEach>
	                      
	                    </table>
                    
               
                  </div>
                </div>	
			 <!-- 가게조회 끝 -->

			</div>
		</div>
	</div>
</div>
</section>
<!--====== DISCOVER PART ENDS ======-->

<!-- footer -->
<%@ include file="include/footer.jsp" %>
</body>
</html>