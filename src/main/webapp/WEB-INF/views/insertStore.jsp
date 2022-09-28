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
	
	var numchk = /(02|0[3-9]{1}[0-9]{1})-[1-9]{1}[0-9]{2,3}-[0-9]{4}$/;
	
	var pattern= /^\d{3,3}-\d{2,2}-\d{5,5}$/;


	if($("#u_s_id").val() == ""){
		event.preventDefault();
        alert("가게 Id를 입력해주세요.");
        $("#u_s_id").focus();
        return false;
      }
	
	if($("#u_b_id").val() == ""){
		event.preventDefault();
        alert("사업자 Id를 입력해주세요.");
        $("#u_b_id").focus();
        return false;
      }
	
	if($("#s_regi_num").val() == ""){
		event.preventDefault();
        alert("사업자 등록번호를 입력해주세요.");
        $("#s_regi_num").focus();
        return false;
      }
	
	if($("#s_name").val() == ""){
		event.preventDefault();
        alert("가게명을 입력해주세요.");
        $("#s_name").focus();
        return false;
      }
	
	if($("#s_number").val() == ""){
		event.preventDefault();
        alert("가게 연락처를 입력해주세요.");
        $("#s_number").focus();
        return false;
      }
	
	if($("#c_id").val() == ""){
		event.preventDefault();
        alert("메뉴 카테고리를 입력해주세요.");
        $("#c_id").focus();
        return false;
      }
	
	if($("input[name=s_state]:radio:checked").length < 1){
		event.preventDefault();
		alert("가게오픈여부를 선택해 주세요.");
		return false;

		}
	
	if($("#s_time").val() == ""){
		event.preventDefault();
        alert("사업장별 대기시간을 입력해주세요.");
        $("#s_time").focus();
        return false;
      }
	
	if($("#u_b_img_upload").val() == ""){
		event.preventDefault();
        alert("사업자 등록증 파일을 업로드해주세요.");
        $("#u_b_img_upload").focus();
        return false;
      }
	
	if($("#s_desc").val() == ""){
		event.preventDefault();
        alert("가게 정보를 입력해주세요.");
        $("#s_desc").focus();
        return false;
	
		}
	
		if(!idcheck.test($('#u_s_id').val())) {  
			event.preventDefault();          
			alert("아이디는 영문 대소문자와 숫자 4~12자리로 입력해야합니다.");            
			$('#u_s_id').val();            
			$('#u_s_id').focus();            
			return false;        
	
		}
		else if(!numchk.test($('#s_number').val())) {  
			event.preventDefault();          
			alert("가게연락처를 000-0000-0000 다음과 같은 형식으로 입력해주세요.");            
			$('#s_number').val();            
			$('#s_number').focus();            
			return false; 
			
		}
		else if(!pattern.test($('#s_regi_num').val())) {  
			event.preventDefault();          
			alert("사업자 등록 번호를 000-00-00000 다음과 같은 형식으로 입력해주세요.");            
			$('#s_regi_num').val();            
			$('#s_regi_num').focus();            
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
$(document).ready(function(){
    $('#storeCheck').on('click', function(){
    	$('#check').attr("check_result", "Ok");
    	
    	var url = "${pageContext.request.contextPath}/storeCheck";
    	var u_s_id = $('#u_s_id').val();
    	var paramData = {
    			"u_s_id" : u_s_id
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
				<h3 class="title">Register</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index-2.html">Register</a></li>
					<li class="breadcrumb-item active" aria-current="page">Store</li>
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
    <title>Register Bussiness</title>
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
          <form method ="post" onsubmit="validate();">
		   <h1 class="mb-4 text-xl font-semibold text-gray-700 dark:text-black-200">
               사업장 등록
              </h1>
              <label class="block text-sm">
                <span class="text-gray-700 dark:text-gray-400">가게Id<br>※4~12자의 영문 대소문자와 숫자로만 입력</span>
                <input class="block w-full mt-2 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                  placeholder="Id를 입력해주세요" id="u_s_id" name="u_s_id"/>
                  <input type="hidden" name="check" id = "check" check_result="fail">
                 <div id="checkMsg"></div>
				 <button id="storeCheck" type="button" class ="btn btn-outline-warning btn-fw">중복확인</button><br>
              </label>
                                        
              <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400">사업자 아이디</span>
                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                  placeholder="사업자 아이디을 입력해주세요"
                  type="text" name="u_b_id" id="u_b_id" value="${regib_dto.u_b_id }"/>
              </label>
              
              <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400">가게명</span>
                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                  placeholder="가게명을 입력해주세요"
                  type="text" name="s_name"  id="s_name"/>
              </label>
              
               <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400">사업자 등록번호<br>(000-00-00000 형식에 맞추어 기입하세요.)</span>
                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                  placeholder="사업자 등록번호를 입력해주세요"
                  name="s_regi_num" id="s_regi_num"/>
              </label>
              
              <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400">가게연락처<br>(000-0000-0000 형식에 맞추어 기입하세요.)</span>
                <input class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                  placeholder="가게연락처를 입력해주세요"
                  name="s_number"  id="s_number"/>
              </label>
              
        	  <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400">메뉴 카테고리</span>
                <select name="c_id"  id="c_id" class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">
       			<option value="">-- 선택 --</option>
        		<option value="10000">한식</option>
        		<option value="20000">중식</option>
        		<option value="30000">일식</option>
        		<option value="40000">양식</option>
       			<option value="50000">퓨전</option>
        		<option value="60000">디저트</option>
       		    <option value="70000">분식</option>
        		<option value="70001">떡볶이</option>
    		  </select>
              </label>

                <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400">가게오픈여부</span>
                <label for="1" class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">오픈</label>
      			<input type="radio" name="s_state" value="1" id="s_state">
      			<label for="0" class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input">비오픈</label>
      			<input type="radio" name="s_state" value="0" id="s_state"> 
                </label>

				<label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400">사업장별 대기시간<br>(분단위로 기입하세요.)</span>
                <input type="text" name="s_time" id="s_time" class= "block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"placeholder="사업장별 대기시간">
                </label>
                
                <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400">사업자 등록증 파일</span>
               <input type="file" name="u_b_img_upload"  id="u_b_img_upload" class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"value="사업자 등록증 파일 업로드">
              </label>
              
              <label class="block mt-4 text-sm">
                <span class="text-gray-700 dark:text-gray-400">가게정보</span>
                <input type="text" name="s_desc" id="s_desc" row = "10" class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input" placeholder="가게정보 입력">
              </label>

              <hr class="my-8" />
              <!-- You should use a button here, as the anchor is only used for the example  -->
              <button type="submit" class="block w-full px-4 py-2 mt-4 text-sm font-medium leading-5 text-center text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
               href="registerok">
              Create
              </button>

				</form>
              
             
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