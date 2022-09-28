<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
<c:set var="assetsPath" value="${pageContext.request.contextPath }/resources/assets" />
<c:set var="assetsPath_w" value="${pageContext.request.contextPath }/resources/assets_w" />
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!-- head-->
<%@ include file="include/head.jsp" %>
<script>
$(document).ready(function(){
	commentlist();
	
	//댓글저장
	$(document).on('click','#btnCommentSave',function(){
		var bc_content = $("#bc_content").val();
		
		var url = "${pageContext.request.contextPath}/board/commentInsert";	//ajax 사용
		var paramData = {
				"b_id" : "${boardB.b_id}",
				"bc_content" : bc_content
			}
		
		$.ajax({
			url: url,
			data: paramData,
			dataType: 'json',
			type: 'POST',
			success:function(result){
				commentlist();
				$("#bc_content").val('');
			},
			error:function(result){
				alert('에러가 발생했습니다.');
			}
		});
	});
	
	//제보게시글 수정
	$(document).on('click','#btn-boardUpdate',function(){
		var bId = document.getElementById("hidden_bId").value;
		location.href="boardUpDel?hidden_bId="+bId+"&btnGb="+2;
	});
	
	//제보게시글 삭제
	$(document).on('click','#btn-boardDelete',function(){
		var bId = document.getElementById("hidden_bId").value;
		location.href="boardUpDel?hidden_bId="+bId+"&btnGb="+3;
	});
	
	//제보게시글 리스트
	$(document).on('click','#btn-boardList',function(){
		location.href="boardList";
	});
	
});

//댓글리스트
function commentlist(){
	const url = "${pageContext.request.contextPath}/board/commentList";
	var paramData = {
			"b_id" : "${boardB.b_id}"
	};
	
	$.ajax({
		url:url,
		data:paramData,
		dataType:'json',
		type:'POST',
		success: function(result){

			var htmls = "";	//문서꾸미기
			if(result.length < 1) {
				htmls += '<h3>댓글이 없습니다</h3>';
			} else {
				$(result).each(function(){
					htmls = htmls + '<div class="" id="bc_id' +this.bc_id + '">';	
					//ajax에서는 div별로 개별 아이디가 부여되어야함.!!!!!!!!!!!!!!!!!!! 
                    //<div id="reno12"> <div id="reno13">
			       htmls += '<span class="d-block">';
			       htmls += this.bc_id + ' - ';
			       htmls += '<strong class="text-gray-dark">' + this.bc_writer + '</strong>';
			       htmls += '<span style="padding-left: 7px; font-size: 9pt">';
			       htmls += '<a href="javascript:void(0)" onclick="fn_editComment(' + this.bc_id + ', \'' + this.bc_writer + '\', \'' + this.bc_content + '\' )" style="padding-right:5px">수정</a>';
			       htmls += '<a href="javascript:void(0)" onclick="fn_deleteComment(' + this.bc_id + ')" >삭제</a>';
			       htmls += '</span>';
			       htmls += '</span><br>';
			       htmls += this.bc_content;
			       htmls += '</p>';
			       htmls += '</div><br>';   
				});
			}
			$("#commentlist").html(htmls);	//댓글위치에 html로 보여주기
		},
		error:function(result){
			alert("실패");
		}
		
	});
	
}

//댓글 수정하기(form)
function fn_editComment(bc_id, bc_writer, bc_content) {
	var htmls = "";
	htmls = htmls + '<div class="" id="bc_id' +bc_id + '">';	
	htmls += '<span class="d-block">';
	htmls += bc_id + ' - ';
	htmls += '<strong class="text-gray-dark">' + bc_writer + '</strong>';
	htmls += '<span style="padding-left: 7px; font-size: 9pt">';
	htmls += '<a href="javascript:void(0)" onclick="fn_updateCommentSave(' + bc_id + ', \'' + bc_writer + '\')" style="padding-right:5px">저장</a>';
	htmls += '<a href="javascript:void(0)" onclick="commentlist()" >취소</a>';
	htmls += '</span>';
	htmls += '</span><br>';
	htmls += '<textarea id="edit_bc_content" name="edit_bc_content" rows="3">';
	htmls += bc_content;
	htmls += '</textarea>';
	htmls += '</p>';
	htmls += '</div>';
	//선택한 요소를 다른것으로 바꿉니다.(변경)
	$('#bc_id'+bc_id).replaceWith(htmls);
	$('#bc_id'+bc_id+'#edit_bc_content').focus();
}

//댓글 수정하기(처리)
function fn_updateCommentSave(bc_id,bc_writer){
	var edit_bc_content = $('#edit_bc_content').val();
	const url = "${pageContext.request.contextPath}/board/commentUpdate";
	var paramData = {
			"bc_id" : bc_id,
			"bc_writer" : bc_writer,
			"bc_content" : edit_bc_content
	};
	
	$.ajax({
		url:url,
		data:paramData,
		dataType: 'json',
		type: 'POST',
		success:function(result){
			console.log(result);
			commentlist();
		},
		error:function(result){
			console.log(result);
			alert("에러가 발생했습니다");
		}
	});
}

//댓글 삭제하기(처리)
function fn_deleteComment(bc_id){
	const url = "${pageContext.request.contextPath}/board/commentDelete";
	var paramData = {
			"bc_id" : bc_id
	};
	
	$.ajax({
		url:url,
		data:paramData,
		dataType: 'json',
		type: 'POST',
		success:function(result){
			console.log(result);
			commentlist();
		},
		error:function(result){
			console.log(result);
			alert("에러가 발생했습니다");
		}
	});
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
<!--====== PAGE TITLE PART START ======-->
<section class="page-title-area bg_cover" style="background-image: url(${assetsPath}/images/page-bg-2.jpg);">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="page-title-item text-center">
				<h3 class="title">게시판</h3>
				<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="${contextPath}/">게시판</a></li>
					<li class="breadcrumb-item active" aria-current="page">공지사항 페이지</li>
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
		<div class="col-lg-16">
			<div class="blog-details mt-30 mr-20">
				<!-- 내용쓰기 -->
			<!-- With avatar -->
			
            <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">공지사항</h4>

			    <div class="box" id="sht_board_dtl">
				<div class="box-header">
					<h4 class="box-title">세부조회</h4><br>
				</div>
				</div>
				<div class="box-body">
					<div class="form-group">
						<input type="hidden" name="hidden_bId" id="hidden_bId" class="form-control" readonly="readonly" value="${boardB.b_id}"/>
						<label>제목</label><input type="text" name="b_title" id="b_title" value="${boardB.b_title}" class="form-control" readonly="readonly"  />
						<label>내용</label><textarea name="b_content" id="b_content" rows="5"class="form-control" readonly="readonly"> ${boardB.b_content}</textarea>
						<label>이미지업로드</label><input type="text" name="b_img_upload" id="b_img_upload" value= "${boardB.b_img_upload}" class="form-control" readonly="readonly"  />
						<label>작성자</label><input type="text" name="b_writer" id="b_writer" value= "${boardB.b_writer}" class="form-control" readonly="readonly"  />
						
					</div>
				</div>
				
				<div class="box-footer">
					<button class="btn btn-warning" id="btn-boardUpdate">수정</button>
					<button class="btn btn-danger" id="btn-boardDelete">삭제</button>
					<button class="btn btn-primary" id="btn-boardList">목록</button>
				</div>
				
				<div>
					<div class="box-body">
						<table>
							<tr>
							<td rowspan="2" width="70%">
							<textarea class="form-control" name="bc_content" id="bc_content" placeholder="댓글을 입력하세요"></textarea>
							</td>
							<td><input type="text" name="bc_writer" id="bc_writer" placeholder="댓글작성자"></td>
							</tr>
							<tr>
							   <td><button type="button" id="btnCommentSave">저장</button></td>
							</tr>
						</table>
				   </div>
				</div>
			    <hr><p></p>
			    <div id="commentlist">
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