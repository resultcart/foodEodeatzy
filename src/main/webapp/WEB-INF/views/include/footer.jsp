<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />

<footer class="footer-area"  style="background-image: url(${assetsPath}/images/footer-bg.jpg);">
<div class="container">
	<div class="row">
		<div class="col-lg-4 col-md-6">
			<div class="footer-widget mt-30">
				<div class="footer-title">
					<img src="${assetsPath}/images/shape/title-shape-2.png" alt="">
					<h4 class="title">eodeatzy</h4>
				</div>
				<div class="footer-about-info mt-30">
					<p>
						얻eat지는 푸드트럭 소비 문화의 편의성을 제공, 체계화하여 활성화하고자 합니다.

					</p>
					<ul>
						<li><i class="fal fa-map-marker-alt"></i>경기 수원시 팔달구 덕영대로 899 3F 304호</li>
						<li><i class="fas fa-map-marker-alt"></i>사업자등록번호 999-00-01234 </li>
						<li><i class="fal fa-phone"></i>031-111-2345</li>
						<li><i class="fal fa-envelope"></i>eodeatzy@naver.com</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="footer-widget mt-30">
				<div class="footer-title">
					<img src="${assetsPath}/images/shape/title-shape-2.png" alt="">
					<h4 class="title">고객센터 운영시간</h4>
				</div>
				<div class="footer-list mt-20">
					<ul>
						<li><span>Monday</span>
							<p>
								10:00 - 18:00
							</p>
						</li>
						
						<li><span>Tuesday</span>
							<p>
								10:00 - 18:00
							</p>
						</li>
						
						<li><span>Wednesday</span>
							<p>
								10:00 - 18:00
							</p>
						</li>
						
						<li><span>Thursday</span>
							<p>
								10:00 - 18:00
							</p>
						</li>
						
						<li><span>Friday</span>
							<p>
								10:00 - 18:00
							</p>
						</li>
						
						<li><span>Saturday</span>
							<p>
								10:00 - 13:00
							</p>
						</li>
						
						<li><span>Sunday</span>
							<p>
								10:00 - 13:00
							</p>
						</li>
						
						<li><span>점심시간</span>
							<p>
								13:00 - 14:00
							</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="footer-widget mt-30">
				<div class="footer-title">
					<img src="${assetsPath}/images/shape/title-shape-2.png" alt="">
					<h4 class="title">We Are On Instagram</h4>
				</div>
				<div class="footer-instagram mt-25">
					<ul>
						<li><a href="https://map.naver.com/v5/search/%EC%88%98%EC%9B%90%EC%97%AD%20%EB%A7%9B%EC%A7%91?c=14136646.3139353,4476283.9234403,15,0,0,0,dh"><img src="${assetsPath}/images/ins-1.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
						<li><a href="https://map.naver.com/v5/search/%EC%84%9C%EC%9A%B8%EC%97%AD%20%EB%A7%9B%EC%A7%91?c=14133376.9940741,4516756.2469226,15,0,0,0,dh"><img src="${assetsPath}/images/ins-2.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
						<li><a href="https://map.naver.com/v5/search/%EB%B6%80%EC%82%B0%EC%97%AD%20%EB%A7%9B%EC%A7%91?c=14363980.7405116,4179550.1130851,15,0,0,0,dh"><img src="${assetsPath}/images/ins-3.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
					</ul>
					<ul>
						<li><a href="https://map.naver.com/v5/search/%EC%A0%9C%EC%A3%BC%EC%8B%9C%20%EB%A7%9B%EC%A7%91?c=14055533.1888576,3961802.5477999,10,0,0,0,dh"><img src="${assetsPath}/images/ins-4.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
						<li><a href="https://map.naver.com/v5/search/%EC%86%8D%EC%B4%88%20%EB%A7%9B%EC%A7%91?c=14307315.9804881,4608733.3241002,12,0,0,0,dh"><img src="${assetsPath}/images/ins-5.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
						<li><a href="https://map.naver.com/v5/search/%EC%A0%84%EC%A3%BC%20%EB%A7%9B%EC%A7%91?c=14146594.0128757,4276454.4662773,12,0,0,0,dh"><img src="${assetsPath}/images/ins-6.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="footer-copyright d-block d-sm-flex justify-content-between align-items-center">
				<p>
					Copyright © 2022. <a href="${contextPath}/">EODEATZY</a> All Right Reserved</a>
				</p>
				<a href="${contextPath }/login"><img src="${assetsPath}/images/payment.png" alt=""></a>
			</div>
		</div>
	</div>
</div>
</footer>
<!--====== FOOTER PART ENDS ======-->
<!--====== GO TO TOP PART START ======-->
<div class="go-top-area">
	<div class="go-top-wrap">
		<div class="go-top-btn-wrap">
			<div class="go-top go-top-btn">
				<i class="fa fa-angle-double-up"></i><i class="fa fa-angle-double-up"></i>
			</div>
		</div>
	</div>
</div>
<!--====== GO TO TOP PART ENDS ======-->
<!--====== jquery js ======-->
<script src="${assetsPath}/js/vendor/modernizr-3.6.0.min.js"></script>
<script src="${assetsPath}/js/vendor/jquery-3.5.1.min.js"></script>
<!--====== Bootstrap js ======-->
<script src="${assetsPath}/js/bootstrap.min.js"></script>
<script src="${assetsPath}/js/popper.min.js"></script>
<!--====== Slick js ======-->
<script src="${assetsPath}/js/slick.min.js"></script>
<!--====== Isotope js ======-->
<script src="${assetsPath}/js/isotope.pkgd.min.js"></script>
<!--====== Images Loaded js ======-->
<script src="${assetsPath}/js/imagesloaded.pkgd.min.js"></script>
<!--====== parallaxie js ======-->
<script src="${assetsPath}/js/parallaxie.js"></script>
<!--====== nice select js ======-->
<script src="${assetsPath}/js/jquery.nice-select.min.js"></script>
<!--====== odometer js ======-->
<script src="${assetsPath}/js/odometer.min.js"></script>
<script src="${assetsPath}/js/jquery.appear.min.js"></script>
<!--====== Magnific Popup js ======-->
<script src="${assetsPath}/js/jquery.magnific-popup.min.js"></script>
<!--====== Main js ======-->
<script src="${assetsPath}/js/main.js"></script>