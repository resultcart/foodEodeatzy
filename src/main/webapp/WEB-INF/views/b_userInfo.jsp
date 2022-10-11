<%@page import="org.springframework.web.multipart.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="assetsPath" value="${pageContext.request.contextPath}/resources/assets" />

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
				<h3 class="title">businessMY</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index-2.html">사업자 마이페이지</a></li>
					<li class="breadcrumb-item active" aria-current="page">사업자 정보 수정</li>
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
						<h3 class="title">사업자 정보 조회</h3>
					</div>				
				
					<div class="blog-details-form-item">
						<form role="form" action="${pageContext.request.contextPath }/b_userInfo" id="b_userform" name="b_userform" method="post">
							<div class="row">
								<div class="col-lg-6">
									<section class="content container-fluid">									
									<div class="input-box mt-30">
										<label>계정 아이디</label>
										<br> 변경 불가능
										<input type="text" id="id" name="u_b_id" value="${b_userInfo.u_b_id}" readonly="true">
									 </div>
									<div class="input-box mt-30">
										<label>비밀번호</label><input type="password" id="password" name="u_b_pw" value="${b_userInfo.u_b_pw}" maxlength='15' required>
									</div>
									<div class="input-box mt-30">
										<label>사업자 이름</label>
										<br> 변경 불가능
										<input type="text" id="name" name="u_b_name" value="${b_userInfo.u_b_name}" readonly="true">
									</div>
									<div class="input-box mt-30">
										<label>전화번호</label>
										<br> 000-0000-0000 형식으로 입력해 주세요.
										<input type="text" id="number" name="u_b_number" value="${b_userInfo.u_b_number}" maxlength='16'>
									</div>
									<div class="input-box mt-30">
										<label>이메일</label><input type="email" id="email" name="u_b_email" value="${b_userInfo.u_b_email}" aria-invalid="false">
									</div>
									<div class="input-box mt-30">
										<label>사업자 등록증</label>
											<div id="uploadResult">
												
												<!-- ★★★★★★★ -->
												
											</div>

										<br> <br> <br>
											
								 	<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>사업자 등록증 바꾸기</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    			<input type="file" id ="fileItem" name='uploadFile' style="height: 30px;">
			                    			
		                    			</div>
		                    		</div>																		
								</div>
									
									<div class="input-box mt-30">
										<label>가입 일자</label>
										<br> 변경 불가능
										<input type="text" id="join" name="u_b_join_dttm" value="${b_userInfo.u_b_join_dttm}" readonly="true">
									</div>
								</div>
								<div class="col-lg-12">
									<div class="input-box mt-30">
										<button type="button" onclick="chkFunction();" id="btn_submit" class="main-btn mt-30" value="수정">수정</button>
									</div>
								</div>						
							</form>
						</div>
	                 </div>
                </div>
			</div>
		</div>
</div>
		<!-- side bar -->
		<%@ include file="include/businessMY_sidebar.jsp" %>
</section>
<!--====== BLOG STANDARD PART ENDS ======-->
<!--====== INSTAGRAM PART START ======-->
<%@ include file="include/instaPart.jsp" %>
<!--====== INSTAGRAM PART ENDS ======-->
<!--====== FOOTER PART START ======-->
<%@ include file="include/footer.jsp" %>
<!--====== FOOTER PART ENDS ======-->
<!--====== GO TO TOP PART ENDS ======-->

	<script>
	function chkFunction(){
		
		// 0) 공백 확인용
		if(($('#password').val()).trim() == ""){
			alert('비밀번호는 비워 둘 수 없습니다.');
			return false;
		}
		if(($('#number').val()).trim() == ""){
			alert('가게명은 비워 둘 수 없습니다.');
			return false;
		}		
		
		// 3) 비밀번호 유효성 검사
			 var pw = $("#password").val();
			 var num = pw.search(/[0-9]/g);
			 var eng = pw.search(/[a-z]/ig);
			 var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			 var hangulcheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		
			 if(pw.length < 8 || pw.length > 20){
			  	alert("비밀번호는 8자리에서 20자리 이내로 입력해 주세요.");
			  	return false;
			  	
				 }else if(pw.search(/\s/) != -1){
				  	alert("비밀번호는 공백 없이 입력해 주세요.");
				  	return false;
				  	
				 }else if(num < 0 || eng < 0 || spe < 0 ){
				  	alert("영문, 숫자, 특수 문자를 혼합하여 입력해 주세요.");
				  	return false;
				  	
				 }else if(hangulcheck.test(pw)){
					alert("비밀번호에 한글을 사용할 수 없습니다."); 
				 	return false;
				 	
				 }
			 
		// 4) 핸드폰 번호 유효성 검사
		var numchk = /^\d{2,3}-\d{3,4}-\d{4}$/;
		if (!numchk.test($('#number').val())) {       
	         event.preventDefault();      
	         alert("전화번호를 000-0000-0000 다음과 같은 형식으로 입력해 주세요.");            
	         return false;        
	         
	      }
	
		// 5) 이메일 유효성 검사
		 var email = $('#email').val();
		 var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
		 if(regex.test(email) === false){
		  alert('잘못된 이메일 형식입니다.');
		  return false;    
		 }
	

		document.getElementById("b_userform").submit();
		alert('수정이 완료되었습니다.');
	}
	
		// 이미지 업로드
			// 1-1) 업로드 파일 접근
			$("input[type='file']").on("change", function(e){
				
				let formData = new FormData();
				let fileInput = $('input[name="uploadFile"]');
				let fileList = fileInput[0].files;
				let fileObj = fileList[0];
				
				// 조건 만족시 alert				
			//	if(!fileCheck(fileObj.name, fileObj.size)){
			//		return false;
			//	}
				
				// 선택 파일 uploadFile 이름으로 추가
				formData.append("uploadFile", fileObj);
				
				$.ajax({
					url: 'businessController/uploadAjaxAction',
			    	processData : false,
			    	contentType : false,
			    	data : formData,
			    	type : 'POST',
			    	dataType : 'json',
			    	success : function(result){
			    		console.log(result[0].uploadPath + '확인: 전달받은 객체 데이터');
			    		showUploadImage(result);
			    	},
			    	error : function(result){
			    		alert("이미지 파일이 아닙니다.");
			    	}			    	
			    	
				});
				
				console.log('55554223');
				
			});
			
			// 1-2) 업로드 파일 형식 및 용량 제한
			let regex = new RegExp("(.*?)\.(jpg|png)$");
			let maxSize = 1048576; //1MB	
			
			function fileCheck(fileName, fileSize){
		
				if(fileSize >= maxSize){
					alert("1MB 이하의 파일만 업로드할 수 있습니다.");
					return false;
				}
					  
				if(!regex.test(fileName)){
					alert("해당 종류의 파일은 업로드할 수 없습니다.");
					return false;
				}
				
				return true;		
				
			}
		
		// 이미지 출력 
		function showUploadImage(uploadResultArr){
			
		}
	
	</script>
	


</body>
</html>