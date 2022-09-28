<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<c:set var="assets_wPath" value="${pageContext.request.contextPath }/resources/assets_w" />

 <!DOCTYPE html>
<html :class="{ 'theme-dark': dark }" x-data="data()" lang="en">
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
				<h3 class="title">ins_mem_u</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index-2.html">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">ins_mem_u</li>
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
    <title>Create account - Windmill Dashboard</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="${assets_wPath}/css/tailwind.output.css" />
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
      defer
    ></script>
    <script src="${assets_wPath}/js/init-alpine.js"></script>
  </head>
  <body>
    <div class="flex items-center min-h-screen p-6 bg-gray-50 dark:bg-gray-900">
      <div
        class="flex-1 h-full max-w-4xl mx-auto overflow-hidden bg-white rounded-lg shadow-xl dark:bg-gray-800"
      >
        <div class="flex flex-col overflow-y-auto md:flex-row">
          <div class="h-32 md:h-auto md:w-1/2">
            <img
              aria-hidden="true"
              class="object-cover w-full h-full dark:hidden"
              src="${assets_wPath}/img/create-account-office.jpeg"
              alt="Office"
            />
            <img
              aria-hidden="true"
              class="hidden object-cover w-full h-full dark:block"
              src="${assets_wPath}/img/create-account-office-dark.jpeg"
              alt="Office"
            />
          </div>
          <div class="flex items-center justify-center p-6 sm:p-12 md:w-1/2">
            <div class="w-full">
              <h1 class="mb-4 text-xl font-semibold text-gray-700 dark:text-gray-200">
                회원가입
              </h1>
				<form action="ins_mem_u" method="post" name="register" onsubmit="return checkAll()">              
	              <label class="block text-sm">
	                <span class="text-gray-700 dark:text-gray-400">Id</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  type="text" name="u_p_id" id="u_p_id" placeholder="Id를 입력해주세요"/>
	              </label>
	              
	              <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">비밀번호</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  type="password" name="u_p_pw" id="u_p_pw" placeholder="비밀번호를 입력해주세요"/>
	              </label>
	              
	              <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">비밀번호 재확인</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  type="password" name="u_p_pw2" id="u_p_pw2" placeholder="비밀번호를 한 번 더 입력해주세요"/>
	              </label>
	              
	              <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">이름</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  type="text" name="u_p_name" id="u_p_name" placeholder="이름을 입력해주세요"/>
	              </label>
	              
	              <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">주민번호</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  type="text" name="u_p_regi_num" id="u_p_regi_num" placeholder="주민번호 앞자리 6자리를 입력해주세요" /> 
	              </label>
	              
	              <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">연락처</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  type="tel" name="u_p_number" id="u_p_number" placeholder="연락처를 입력해주세요"/>
	              </label>
	              
	        	  <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">이메일</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  type="email" name="u_p_email" id="u_p_email" placeholder="이메일를 입력해주세요"/>
	              </label>
	         
	              <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">광고약관동의여부</span> <br><br>
	                <label>
						<input type="radio"  name="u_p_ad_yn" id="u_p_ad_yn" value="1" />
						예
					</label>
					<label>
						<input type="radio" name="u_p_ad_yn" id="u_p_ad_yn" value="2" />
						아니요
					</label>
	              </label>	       

	              <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">광고수신전송매체</span> <br><br>
	                <label>
						<input type="radio" name="u_p_ad_media" id="u_p_ad_media" value="1" />
						핸드폰
					</label>
					<label>
						<input type="radio" name="u_p_ad_media" id="u_p_ad_media" value="2" />
						메일
					</label>
					<label>
						<input type="radio" name="u_p_ad_media" id="u_p_ad_media" value="3" />
						기타
					</label>
	              </label>

	              <hr class="my-8" />
	              
	              <p class="mt-4">
	                <input type="submit" value="회원가입" class="btn btn-outline-warning btn-fw" >
	                </a>
	              </p>
              </form>
              
       
					<script>
					function checkAll() {
						var form = document.register;        

						if (!checkU_p_id(form.u_p_id.value)) {            
							return false;        
						} else if (!checkU_p_pw(form.u_p_id.value, form.u_p_pw.value, form.u_p_pw2.value)) {            
							return false;       
						} else if (!checkU_p_name(form.u_p_name.value)) {            
							return false;        
						} else if (!checkU_p_regi_num(form.u_p_regi_num.value)) {            
							return false;        
						} else if (!checkU_p_number(form.u_p_number.value)) {            
							return false;        
						} else if (!checkU_p_email(form.u_p_email.value)) {            
							return false;        
						}         
						alert("회원가입 성공");	
						form.submit();
						return true;   
					}
					
					
					// 공백확인 함수    
					function checkExistData(value, dataName) {        
						if (value == "") {            
							alert(dataName + " 입력해주세요.");            
							return false;        
						}       
						return true;    
					}
					
					
					// 아이디 검사
					function checkU_p_id(u_p_id) {        
						//Id가 입력되었는지 확인하기        
						if (!checkExistData(u_p_id, "아이디를"))            
						return false;        
						
						var u_p_idRegExp = /^[a-zA-z0-9]{1,15}$/; //아이디 유효성 검사        
						if (!u_p_idRegExp.test(u_p_id)) {            
							alert("아이디는 영문 대소문자와 숫자 1~15자리로 입력해야합니다.");            
							form.u_p_id.value = "";            
							form.u_p_id.focus();            
							return false;        
						}        
						return true; //확인이 완료되었을 때    
					}
					
					// 비밀번호 검사
					function checkU_p_pw(u_p_id, u_p_pw, u_p_pw2) {        
						//비밀번호가 입력되었는지 확인하기        
						if (!checkExistData(u_p_pw, "비밀번호를"))            
							return false;        
						//비밀번호 확인이 입력되었는지 확인하기        
						if (!checkExistData(u_p_pw2, "비밀번호 재확인을"))            
							return false;         
							
						var u_p_pwRegExp = /^[a-zA-z0-9]{1,15}$/; //비밀번호 유효성 검사        
						if (!u_p_pwRegExp.test(u_p_pw)) {            
							alert("비밀번호는 영문 대소문자와 숫자 1~15자리로 입력해야합니다.");            
							form.u_p_pw.value = "";            
							form.u_p_pw.focus();            
							return false;        
						}        
						//비밀번호와 비밀번호 확인이 맞지 않다면..        
						if (u_p_pw != u_p_pw2) {            
							alert("두 비밀번호가 맞지 않습니다. 다시 입력해주세요.");            
							form.u_p_pw.value = "";            
							form.u_p_pw2.value = "";            
							form.u_p_pw2.focus();            
							return false;        
						}         
						//아이디와 비밀번호가 같을 때..        
						if (u_p_id == u_p_pw) {            
							alert("아이디와 비밀번호는 같을 수 없습니다.");            
							form.u_p_pw.value = "";            
							form.u_p_pw2.value = "";            
							form.u_p_pw2.focus();            
							return false;        
						}        
						return true; 
						//확인이 완료되었을 때    
					} 
					
					// 이름 검사
					function checkU_p_name(u_p_name) {       
						if (!checkExistData(u_p_name, "이름을"))            
						return false;         
						
						var u_p_nameRegExp = /^[가-힣]{1,6}$/;        
						if (!u_p_nameRegExp.test(u_p_name)) {            
							alert("이름이 올바르지 않습니다. 이름은 한글만 사용가능합니다.");            
							return false;        
						}        
						return true; //확인이 완료되었을 때    
					}
					
					// 주민번호 검사
					function checkU_p_regi_num(u_p_regi_num) {        
						//주민번호 입력되었는지 확인하기        
						if (!checkExistData(u_p_regi_num, "주민번호를 "))          
							return false;         
							
						//주민등록번호 길이 확인하기        
						if (u_p_regi_num < 13) {            
							alert("주민등록번호는 13자리입니다.");           
							form.u_p_regi_num.value = "";            
							form.u_p_regi_num.focus();            
							return false;        
						} 						
						return true; 
						//확인이 완료되었을 때    
					}
					
					// 연락처 검사합수
					function checkU_p_number(u_p_number) {        
						//Id가 입력되었는지 확인하기        
						if (!checkExistData(u_p_number, "연락처를"))            
							return false;        
						
						var u_p_numberRegExp = /^[0-9]*$/;      
						if (!u_p_numberRegExp.test(u_p_number)) {            
							alert("연락처는 숫자로만 입력이 가능합니다.");            
							form.u_p_number.value = "";            
							form.u_p_number.focus();            
							return false;        
						}
						
						//연락처 길이 확인하기        
						if (u_p_number.length < 10) {            
							alert("연락처는 10자리 자리입니다.");           
							form.u_p_number.value = "";            
							form.u_p_number.focus();            
							return false;        
						}                
						return true; //확인이 완료되었을 때    
					}
					
					// 이메일 검사함수
					function checkU_p_email(u_p_email) {        
						//mail이 입력되었는지 확인하기        
						if (!checkExistData(u_p_email, "이메일을"))            
						return false;         
						
						var u_p_emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;      
						if (!u_p_emailRegExp.test(u_p_email)) {            
							alert("이메일 형식이 올바르지 않습니다!");            
							form.u_p_email.value = "";           
							form.u_p_email.focus();            
							return false;        
						}       
						return true; //확인이 완료되었을 때  
					}
			
					
		</script>
              


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