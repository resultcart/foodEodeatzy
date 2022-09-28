<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<c:set var="contextPath" value="${pageContext.request.contextPath }" />


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
<!--====== PAGE TITLE PART START ======-->
<section class="page-title-area bg_cover" style="background-image: url(${assetsPath}/images/page-bg-2.jpg);">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="page-title-item text-center">
				<h3 class="title">Cart</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${contextPath}/">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Cart</li>
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
	<div class="row">
		<div class="col-lg-12">
			<div class="checkout-style-1 ">
				<div class="checkout-table table-responsive">
					<table class="table">
					<thead>
					<tr>
						<th class="product">
							Product
						</th>
						<th class="quantity">
							Quantity
						</th>
						<th class="price">
							Price
						</th>
						<th class="action">
							Delete
						</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>
							<div class="product-cart d-flex">
								<div class="product-thumb">
									<img src="${assetsPath}/images/food-menu-1.jpg" alt="Product">
								</div>
								<div class="product-content media-body">
									<h5 class="title"><a href="product-details-page.html">Menu Link</a></h5>
									<span>어쩌구저쩌구</span>
								</div>
							</div>
						</td>
						<td>
							<div class="quantity">
			 					<div class="input-group mb-1" style="max-width: 120px;">
			                        <div class="input-group-prepend">
			                          <button class="btn btn-outline-primary js-btn-minus" type="button">−</button>
			                        </div>
			                        <input type="text" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
			                        <div class="input-group-append">
			                          <button class="btn btn-outline-primary js-btn-plus" type="button">+</button>
			                        </div>
			                    </div>                
							</div>
						</td>
						<td>
							<p class="price">
								36.00원
							</p>
						</td>
						<td>
							<ul class="action">
								<a href="#" class="btn btn-primary btn-sm">X</a>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
							<div class="product-cart d-flex">
								<div class="product-thumb">
									<img src="${assetsPath}/images/food-menu-1.jpg" alt="Product">
								</div>
								<div class="product-content media-body">
									<h5 class="title"><a href="product-details-page.html">Menu Link</a></h5>
									<span>어쩌구저쩌구</span>
								</div>
							</div>
						</td>
						<td>
							<div class="quantity">
			 					<div class="input-group mb-1" style="max-width: 120px;">
			                        <div class="input-group-prepend">
			                          <button class="btn btn-outline-primary js-btn-minus" type="button">−</button>
			                        </div>
			                        <input type="text" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
			                        <div class="input-group-append">
			                          <button class="btn btn-outline-primary js-btn-plus" type="button">+</button>
			                        </div>
			                    </div>                
							</div>
						</td>
						<td>
							<p class="price">
								36.00원
							</p>
						</td>
						<td>
							<ul class="action">
								<a href="#" class="btn btn-primary btn-sm">X</a>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
							<div class="product-cart d-flex">
								<div class="product-thumb">
									<img src="${assetsPath}/images/food-menu-1.jpg" alt="Product">
								</div>
								<div class="product-content media-body">
									<h5 class="title"><a href="product-details-page.html">Menu Link</a></h5>
									<span>어쩌구저쩌구</span>
								</div>
							</div>
						</td>
						<td>
							<div class="quantity">
			 					<div class="input-group mb-1" style="max-width: 120px;">
			                        <div class="input-group-prepend">
			                          <button class="btn btn-outline-primary js-btn-minus" type="button">−</button>
			                        </div>
			                        <input type="text" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
			                        <div class="input-group-append">
			                          <button class="btn btn-outline-primary js-btn-plus" type="button">+</button>
			                        </div>
			                    </div>                
							</div>
						</td>
						<td>
							<p class="price">
								36.00원
							</p>
						</td>
						<td>
							<ul class="action">
								<a href="#" class="btn btn-primary btn-sm">X</a>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
							<div class="product-cart d-flex">
								<div class="product-thumb">
									<img src="${assetsPath}/images/food-menu-1.jpg" alt="Product">
								</div>
								<div class="product-content media-body">
									<h5 class="title"><a href="product-details-page.html">Menu Link</a></h5>
									<span>어쩌구저쩌구</span>
								</div>
							</div>
						</td>
						<td>
							<div class="quantity">
			 					<div class="input-group mb-1" style="max-width: 120px;">
			                        <div class="input-group-prepend">
			                          <button class="btn btn-outline-primary js-btn-minus" type="button">−</button>
			                        </div>
			                        <input type="text" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
			                        <div class="input-group-append">
			                          <button class="btn btn-outline-primary js-btn-plus" type="button">+</button>
			                        </div>
			                    </div>                
							</div>
						</td>
						<td>
							<p class="price">
								36.00원
							</p>
						</td>
						<td>
							<ul class="action">
								<a href="#" class="btn btn-primary btn-sm">X</a>
							</ul>
						</td>
					</tr>
					<tr>
						<td>
							<div class="product-cart d-flex">
								<div class="product-thumb">
									<img src="${assetsPath}/images/food-menu-1.jpg" alt="Product">
								</div>
								<div class="product-content media-body">
									<h5 class="title"><a href="product-details-page.html">Menu Link</a></h5>
									<span>어쩌구저쩌구</span>
								</div>
							</div>
						</td>
						<td>
							<div class="quantity">
			 					<div class="input-group mb-1" style="max-width: 120px;">
			                        <div class="input-group-prepend">
			                          <button class="btn btn-outline-primary js-btn-minus" type="button">−</button>
			                        </div>
			                        <input type="text" class="form-control text-center" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
			                        <div class="input-group-append">
			                          <button class="btn btn-outline-primary js-btn-plus" type="button">+</button>
			                        </div>
			                    </div>                
							</div>
						</td>
						<td>
							<p class="price">
								36.00원
							</p>
						</td>
						<td>
							<ul class="action">
								<a href="#" class="btn btn-primary btn-sm">X</a>
							</ul>
						</td>
					</tr>				
					
	
					</tbody>
					</table>
				</div>
				<div class="checkout-btn d-sm-flex justify-content-between">
					<div class="single-btn">
						<a href="javascript:void(0)" class="main-btn primary-btn-border">continue shopping</a>
					</div>
					<div class="single-btn">
						<a href="checkout-page.html" class="main-btn primary-btn">Pay now</a>
					</div>
				</div>
			</div>
		</div>
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