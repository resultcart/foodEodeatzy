<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!doctype html>

<%@ include file="include/head.jsp" %>
<div style="display:inline;">
            <script>
               function orderdetail(o_number){
                console.log(o_number);
                document.getElementById("orderClick").style.display ='block';
                
                $('#o_d_result tr').remove();             
                
                var ra = o_number;
                     var url = "${pageContext.request.contextPath }/b_Order2";
                     var paramData = {
                           "o_number" : ra
                       };
                     
                      $.ajax({                      
                          url: url,
                          data: paramData,
                          dataType: 'json',
                          type: 'POST',
                          success: function(result){
                             var content = '';
                             $.each(result, function() {
                        content += '<tr>';
                                content += '<td style= "width: 300px; text-align:center">' + this.o_number + '</td>';
                                content += '<td style= "width: 300px; text-align:center">' + this.m_id + '</td>';                                     
                                content += '<td style= "width: 300px; text-align:center">' + this.o_cnt + '</td>'; 
                        content += '</tr>';
                           });
                     
                           $("#o_d_result").append(content);                     
                          },                
                                                                  
                          error: function(result) {                                      
                          }
                  });
                                                                      
               }
                                                
   </script>
</div>
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
                                        <li class="breadcrumb-item active" aria-current="page">주문 확인</li>
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
                                <!-- 내용쓰기 -->
                                <div class="blog-details-form">
                                        <div class="blog-details-title">
                                                <h3 class="title">주문 확인</h3>
                                                주문 번호를 클릭하면 주문 상세 내역을 확인할 수 있습니다.
                                        </div>                                
                                <br>                
                                
                                        <div class="blog-details-form-item">
                                        <div style="display:inline;"></div>
                                                <form action="#">
                                                        <div class="row">
                                                                <div class="col-lg-500">
                                                                     <section class="content container-fluid">
                                                       <div>${msg}</div>
                                                        <table class="table">
                                                                                   <tr>
                                                                                        <td>주문번호</td>        
                                                                                        <td>가게 내부 ID</td>        
                                                                                        <td>고객 ID</td>        
                                                                                        <td>주문 수량 총합</td>        
                                                                                        <td>주문 메뉴 총액</td>        
                                                                                        <td>총 조리 소요 시간</td>        
                                                                                        <td>주문 상태</td>        
                                                                                        <td>구매자 요청사항</td>        
                                                                                        <td>주문 일시</td>
                                                                                        <td>고객 메모</td>        
                                                                                </tr>
                                                        <style>
	                                                        th, td, tr {
																padding: 30px;
															    }
														     table{
														    width:100px;
														  		}
                                                        </style>
                                        <c:forEach var="orderCheck" items="${orderCheck}">
                                     <tr>
                               <td>                                
                              <a href="javascript:void(0)" onclick="orderdetail('${orderCheck.o_number }')"> ${orderCheck.o_number }</a></td>                               
                                     <td>${orderCheck.u_s_id }</td>
                                     <td>${orderCheck.u_p_id }</td>
                                     <td>${orderCheck.o_cnt_total }</td>
                                     <td><fmt:formatNumber value="${orderCheck.o_amt_total }" maxFractionDigits="0"/>원</td>
                                     <td>${orderCheck.o_ltime_total }</td>
                                     <td>${orderCheck.o_state }</td>
                                     <td>${orderCheck.o_desc }</td>
                                     <td>${orderCheck.o_datetime } </td>
                                     <td><a href="orderMemo?u_s_id=${orderCheck.u_s_id }&u_p_id=${orderCheck.u_p_id}"> ${orderCheck.p_memo } </a></td>
                                     </tr>
                            </c:forEach>                         
                            </table>
                            <br>
                            <br>
                            <br>
                     </form>  
                        </div>
                  
                  <div id="orderClick" style="display:none;">
                  <table border="1" style="table-layout: fixed" >
                  <thead>
                  <tr>
                  <th style= 'width: 300px; text-align:center'>주문번호</th>
                  <th style= 'width: 300px; text-align:center'>메뉴</th>
                  <th style= 'width: 300px; text-align:center'>주문수량</th>
                  </tr>
                  </thead>
                  <tbody id="o_d_result">
                     
                  </tbody>
                  </table>
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