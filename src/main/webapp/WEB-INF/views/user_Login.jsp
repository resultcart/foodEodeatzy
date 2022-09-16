<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<c:set var="assets_wPath" value="${pageContext.request.contextPath }/resources/assets_w" />
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!doctype html>
<html lang="en">
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
                        <h3 class="title">LOGIN</h3>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">user - Login</li>
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


                    </div>
                </div>
                <!-- side bar -->

                <head>
                    <meta charset="UTF-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                    <title>개인사용자 로그인</title>
                    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
                    <link rel="stylesheet" href="${assets_wPath}/css/tailwind.output.css" />
                    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
                    <script src="${assets_wPath}/js/init-alpine.js"></script>
                </head>

                <body>
                    <div class="flex items-center min-h-screen p-6 bg-gray-50 dark:bg-gray-900">
                        <div class="flex-1 h-full max-w-4xl mx-auto overflow-hidden bg-white rounded-lg shadow-xl dark:bg-gray-800">
                            <div class="flex flex-col overflow-y-auto md:flex-row">
                                <div class="h-32 md:h-auto md:w-1/2">
                                    <img aria-hidden="true" class="object-cover w-full h-full dark:hidden" src="${assets_wPath}/img/login-office.jpeg" alt="Office" />
                                    <img aria-hidden="true" class="hidden object-cover w-full h-full dark:block" src="${assets_wPath}/img/login-office-dark.jpeg" alt="Office" />
                                </div>
                                <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
                                    <div class="w-full">
                                        <h1 class="mb-4 text-xl font-semibold text-gray-700 dark:text-gray-200">
                                            개인사용자 로그인
                                        </h1>
                                        <form name="f1" action="post">
	                                        <label class="block text-sm">
	                                            <span class="text-gray-700 dark:text-gray-400">ID</span>
	                                            <input type="text" name="u_p_id" placeholder="id를 입력하세요" value="${login.u_p_id}" onKeyDown="if(event.keyCode == 13) loginChk()"
	                                             	   class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"  />
	                                        </label>
	                                        <label class="block mt-4 text-sm">
	                                            <span class="text-gray-700 dark:text-gray-400">Password</span>
	                                            <input type="password" name="u_p_pw" placeholder="pw를 입력하세요" value="${login.u_p_pw}" onKeyDown="if(event.keyCode == 13) loginChk()" 
	                                            	   class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" />
	                                        </label>
	
	                                        <!-- You should use a button here, as the anchor is only used for the example  -->
	                                        <br> <button type="button" class="btn btn-outline-warning btn-fw" onclick="loginChk()">로그인</button>
	                                        <a class="btn btn-outline-warning btn-fw" href=home onclick="loginChk()">
	                                            Log in
	                                        </a>
                                        </form>

										<script>
											function loginChk() {
											var form = document.f1;
												if (!form.u_p_id.value) {
													alert("아이디를 입력해 주십시오.");
													form.u_p_id.focus();
												return;
												}
												if (!form.u_p_pw.value) {
													alert("비밀번호를 입력해 주십시오.");
													form.u_p_pw.focus();
												return;
												}	
												form.method = "post";
												form.action = "${contextPath}/login/user_Login";
												form.submit();
											}
										</script>
										
                                        <hr class="my-8" />

                                        <p class="mt-4">
                                            <a class="text-sm font-medium text-purple-600 dark:text-purple-400 hover:underline" href=findID>
                                                id찾기
                                            </a>
                                        </p>

                                        <p class="mt-4">
                                            <a class="text-sm font-medium text-purple-600 dark:text-purple-400 hover:underline" href=findPW>
                                                pw찾기
                                            </a>
                                        </p>
                                        <p class="mt-1">
                                            <br> <a class="text-sm font-medium text-purple-600 dark:text-purple-400 hover:underline" href=register_u>
                                                개인사용자회원가입
                                            </a>
                                        </p>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </body>


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