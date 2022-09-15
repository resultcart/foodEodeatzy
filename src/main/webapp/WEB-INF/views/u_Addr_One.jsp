<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />

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
		<div class="col-lg-8">
			<div class="section-title text-center">
				<img src="${assetsPath}/images/shape/title-shape-2.png" alt="title">
				<a class="mt-4" href="#">RB</a><br>
				<img src="${assetsPath}/images/shape/title-shape-2.png" alt="title">
				<a class="mt-4" href="#">공지사항 하나 보고 클릭하면 보러갈거</a> <br>
			</div>
		</div>
	</div>
</div>


<!--====== CATEGORY START ======-->

<footer class="site-footer border-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <div class="row">
              <div class="col-md-12">
                <br> <h3 class="footer-heading mb-4">MENU CATEㅋㅋㅋGOTY</h3>
              </div>
              <div class="col-md-6 col-lg-4">
                <ul class="list-unstyled">
                  <li><a href="#">한식</a></li>
                  <li><a href="#">중식</a></li>
                  <li><a href="#">일식</a></li>
                  <li><a href="#">양식</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-4">
                <ul class="list-unstyled">
                  <li><a href="#">퓨전</a></li>
                  <li><a href="#">디저트</a></li>
                  <li><a href="#">분식</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-4">
                <ul class="list-unstyled">
                  <li><a href="#">야식</a></li>
                  <li><a href="#">타코야끼</a></li>
                  <li><a href="#">붕어빵</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
         
          
        </div>
      </div>
    </footer>

<!--====== CATEGORY ENDS======-->

<hr>
<div class="download-item-area bg_cover mt-30">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-6">
				<div class="download-item-thumb">
					<img src="${assetsPath}/images/download-thumb.png" alt="thumb">
				</div>
			</div>
			<div class="col-lg-6">
				<div class="download-item-content">
					<h3 class="title">Rondhon Now In Your Hand</h3>
					<p>
						food 
					</p>
	
				</div>
			</div>
		</div>
	</div>
</div>
</section>
<!--====== DOWNLOAD PART ENDS ======-->


<!--====== FOOTER PART START ======-->
<footer class="footer-area bg_cover" style="background-image: url(${assetsPath}/images/footer-bg.jpg);">
<div class="container">
	<div class="row">
		<div class="col-lg-4 col-md-6">
			<div class="footer-widget mt-30">
				<div class="footer-title">
					<img src="${assetsPath}/images/shape/title-shape-2.png" alt="">
					<h4 class="title">About Rondhon</h4>
				</div>
				<div class="footer-about-info mt-30">
					<p>
						There are many variations of passages of Lorem Ipsum.
					</p>
					<ul>
						<li><i class="fal fa-map-marker-alt"></i>21/3 Soi Saladaeng 1,Silom road,New York,USA</li>
						<li><i class="fal fa-phone"></i>515-708-9386</li>
						<li><i class="fal fa-envelope"></i>deliveyinfo@rondhon.com</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-6">
			<div class="footer-widget mt-30">
				<div class="footer-title">
					<img src="${assetsPath}/images/shape/title-shape-2.png" alt="">
					<h4 class="title">Opening Hours</h4>
				</div>
				<div class="footer-list mt-20">
					<ul>
						<li><span>Monday</span>
						<p>
							8.00 - 20.00
						</p>
						</li>
						<li><span>Tuesday</span>
						<p>
							8.00 - 20.00
						</p>
						</li>
						<li><span>Wednesday</span>
						<p>
							8.00 - 20.00
						</p>
						</li>
						<li><span>Thursday</span>
						<p>
							8.00 - 20.00
						</p>
						</li>
						<li><span>Friday</span>
						<p>
							8.00 - 20.00
						</p>
						</li>
						<li><span>Saturday</span>
						<p>
							8.00 - 20.00
						</p>
						</li>
						<li><span>Sunday</span>
						<p>
							closed
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
						<li><a href="#"><img src="${assetsPath}/images/ins-1.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
						<li><a href="#"><img src="${assetsPath}/images/ins-2.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
						<li><a href="#"><img src="${assetsPath}/images/ins-3.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
					</ul>
					<ul>
						<li><a href="#"><img src="${assetsPath}/images/ins-4.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
						<li><a href="#"><img src="${assetsPath}/images/ins-5.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
						<li><a href="#"><img src="${assetsPath}/images/ins-6.jpg" alt="ins"><span class="instagram-overlay"><i class="fab fa-instagram"></i></span></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<div class="footer-copyright d-block d-sm-flex justify-content-between align-items-center">
				<p>
					© 2020 Rondhon All Right <a href="http://www.bootstrapmb.com" title="">Reserved</a>
				</p>
				<a href="#"><img src="${assetsPath}/images/payment.png" alt=""></a>
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
</body>
</html>