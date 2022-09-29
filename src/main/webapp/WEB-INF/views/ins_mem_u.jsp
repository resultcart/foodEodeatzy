<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<c:set var="assets_wPath" value="${pageContext.request.contextPath }/resources/assets_w" />

 <!DOCTYPE html>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
  
 <!-- 유효성 검사 -->
 <script>
 function validate() { 
		
		var idcheck = /^[a-zA-z0-9]{4,12}$/;   
		
		var emailch = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
		
		var numchk = /^\d{2,3}-\d{3,4}-\d{4}$/;
		
		var juminchk = /^\d{6}-\d{7}$/;
		
		var cnt1=0;
		var u_p_ad_yn = document.getElementsByName("u_p_ad_yn");
		
		var cnt2=0;
		var u_p_ad_media = document.getElementsByName("u_p_ad_media");
		
		
		if($("#u_p_id").val() == ""){
			event.preventDefault();
	        alert("아이디 입력해주세요.");
	        $("#u_p_id").focus();
	        return false;
	      }
		
		if($("#u_p_pw").val() == ""){
			event.preventDefault();
	        alert("비밀번호 입력해주세요.");
	        $("#u_p_pw").focus();
	        return false;
	      }
		
		if($("#u_p_pwChk").val() == ""){
			event.preventDefault();
	        alert("비밀번호 확인란 입력해주세요.");
	        $("#u_p_pwChk").focus();
	        return false;
	      }
		
		if($("#u_p_name").val() == ""){
			event.preventDefault();
	        alert("이름을 입력해주세요.");
	        $("#u_b_name").focus();
	        return false;
	      }
		
		if($("#u_p_regi_num").val() == ""){
			event.preventDefault();
	        alert("주민번호를 입력해주세요.");
	        $("#u_p_regi_num").focus();
	        return false;
	      }
		
		if($("#u_p_number").val() == ""){
			event.preventDefault();
	        alert("연락처를 입력해주세요.");
	        $("#u_p_number").focus();
	        return false;
	      }

		for(var i =0; i< u_p_ad_yn.length; i++){
			if(u_p_ad_yn[i].checked == true){
				cnt1++;
				break;
			}
		} if(cnt1 == 0){
			event.preventDefault();
			alert('광고약관여부를 선택해주세요.');
			return false;
		}
		
		for(var i =0; i< u_p_ad_media.length; i++){
			if(u_p_ad_media[i].checked == true)	{
				cnt2++;
				break;
			}
		} if(cnt2 == 0){
			event.preventDefault();
			alert('광고수신전송매체를 선택해주세요.');
			return false;
		}
		
		
		if($("#u_p_email").val() == ""){
			event.preventDefault();
	        alert("이메일을 입력해주세요.");
	        $("#u_p_email").focus();
	        return false;
	      }
		
		if($("#u_p_email").val() == ""){
			event.preventDefault();
	        alert("이메일을 입력해주세요.");
	        $("#u_p_email").focus();
	        return false;
	      }
		
		if(!idcheck.test($('#u_p_id').val())) {  
			event.preventDefault();          
			alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다.");            
			$('#u_p_id').val();            
			$('#u_p_id').focus();            
			return false;    
			    
		}else if (!idcheck.test($('#u_p_pw').val())) {   
			event.preventDefault();          
			alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다.");  
			$('#u_p_pw').val();                      
			$('#u_p_pw').focus();            
			return false;        
		
		}else if($('#u_p_pw').val() != $('#u_p_pwChk').val()){
			event.preventDefault(); 
			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			$('#u_p_pw').val();
			$('#u_p_pwChk').val();
			$('#u_p_pwChk').focus();
			return false;
			
		}else if (!juminchk.test($('#u_p_regi_num').val())) {       
			event.preventDefault();      
			alert("주민번호를 990101-1234567 다음과 같은 형식으로 입력해주세요.");            
			$('#u_p_regi_num').val();            
			$('#u_p_regi_num').focus();            
			return false;        
			
		}else if (!numchk.test($('#u_p_number').val())) {       
			event.preventDefault();      
			alert("연락처를 000-0000-0000 다음과 같은 형식으로 입력해주세요.");            
			$('#u_p_number').val();            
			$('#u_p_number').focus();            
			return false;        
			
		}else if (!emailch.test($('#u_p_email').val())) {       
			event.preventDefault();      
			alert("이메일을 abc@abc.com 다음과 같은 형식으로 입력해주세요.");            
			$('#u_p_email').val();            
			$('#u_p_email').focus();            
			return false;  
			      
		}
		
		if ($('#check').attr("check_result") == "fail"){
			event.preventDefault();  
		    alert("아이디 중복체크를 해주시기 바랍니다.");
		    $('#check').focus();
		    return false;
		  }
		
		alter("회원가입이 완료되었습니다.")
		return true;
	}
 
</script>
 
<script type="text/javascript">
 //아이디 중복확인 ajax
	$(document).ready(function(){
		
	        $('#upidCheck').on('click', function(){
	        	
	        	$('#check').attr("check_result", "Ok");
	        	
	        	var url = "${pageContext.request.contextPath}/upidCheck";
	        	var u_p_id = $('#u_p_id').val();
	        	var paramData = {
	        			"u_p_id" : u_p_id
	        	};
	        	
	            $.ajax({
	                url : url,
	                data : paramData,
	                dataType : 'text',
	                type : 'POST',
	                
	                success : function(result){
	                	
	                	console.log("성공여부" + result);
	                	
	                    if(result != 'fail'){
	                        $('#checkMsg').html('<p style="color:blue">사용가능합니다.</p>');
	                    }
	                    else{
	                        $('#checkMsg').html('<p style="color:red">사용불가능합니다. 다른 아이디를 입력해주세요.</p>');
	                    }
	                },
	                
	                error : function(result){
	                	
	                	console.log("error" + result);
	                	
	                } //end error
	           
	            });    //end ajax    
	        });    //end on    
	    });

 </script>
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
		     <form method="post" onsubmit="validate();">              
              <h1 class="mb-4 text-xl font-semibold text-gray-700 dark:text-gray-200">
                개인사용자 회원가입
              </h1>
	              <label class="block text-sm">
	                <span class="text-gray-700 dark:text-gray-400">Id<br>※4~12자의 영문 대소문자와 숫자로만 입력</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  placeholder="Id를 입력해주세요" name="u_p_id" id="u_p_id"/>
	                  <input type="hidden" name="check" id = "check" check_result="fail">
					 <div id="checkMsg"></div>
	                 <button id="upidCheck" type="button" class ="btn btn-outline-warning btn-fw">중복확인</button><br>
            	  </label>
	              
	                
					<label class="block mt-4 text-sm">
		              <span class="text-gray-700 dark:text-gray-400">비밀번호<br>※4~12자의 영문 대소문자와 숫자로만 입력</span>
		              <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
		                placeholder="비밀번호를 입력해주세요"
		                type="password" name="u_p_pw" id="u_p_pw"/>
		            </label>
	                  
	              
	              <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">
	                  비밀번호 재확인
	                </span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  placeholder="비밀번호를 한 번 더 입력해주세요"
	                  type="password" name="u_p_pwChk" id="u_p_pwChk"/>
	              </label>
	              
	              <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">이름</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  placeholder="이름을 입력해주세요"
	                  name="u_p_name" id="u_p_name"/>
	              </label>
	              
	              <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">주민번호<br>(ex.990101-1234567 형식에 맞추어 기입하세요.)</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  placeholder="주민번호 13자리를 입력해주세요"
	                  name="u_p_regi_num" id="u_p_regi_num" />
	              </label>
	              
	              <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">연락처<br>(000-0000-0000 형식에 맞추어 기입하세요.)</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  placeholder="연락처를 입력해주세요"
	                  name="u_p_number" id="u_p_number" />
	              </label>
	              
	        	  <label class="block mt-4 text-sm">
	                <span class="text-gray-700 dark:text-gray-400">이메일</span>
	                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
	                  placeholder="이메일를 입력해주세요"
	                  name="u_p_email" id="u_p_email"/>
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
	                <button type="submit" class="btn btn-outline-warning btn-fw" id="signup"> 회원가입 </button>
	              </p>
              </form>
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