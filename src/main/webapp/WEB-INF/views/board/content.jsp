<%@  page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../include/header.jsp" />
<style>
header.masthead {
	
	display: none;
}	
</style>

<script>
//수정 완료 알림창 처리
const msg = "${msg}";
if(msg === "modSuccess") {
	alert("게시물 수정 완료!");
}

//제이쿼리의 시작
$(function() {
	
	
	const formElement = $("#formObj");
	
	//목록버튼 클릭이벤트 처리
	$("#list-btn").click(function () {
		console.log("목록 버튼이 클릭됨!");
		location.href= '/board/list?page=${p.page}' 
						+ '&countPerPage=${p.countPerPage}'
						+ '&keyword=${p.keyword}'
						+ '&condition=${p.condition}';
	});
	
	//수정버튼 클릭이벤트 처리
	var modifyBtn = $("#modBtn"); //jQuery
	
	modifyBtn.click(function() {
		console.log("수정 버튼이 클릭됨!");
		formElement.attr("action", "/board/modify");
		formElement.attr("method", "get");
		formElement.submit();
	});
	
	listReply("1");
	$("#btnReply").click(function(){
		reply();
	});
	
});//제이쿼리의 끝

function reply(){
	var replyContent=$("#replyContent").val();
	if(!replyContent.replace(/(^\s*)|(\s*$)/gi, "")){
		alert("빈 댓글은 작성할 수 없습니다.");
		replyContent.focus();
	}else{
	var boardNo="${article.boardNo}";
	var param={"replyContent":replyContent, "boardNo": boardNo};
	$.ajax({
		type: "post",
		url: "/reply/insert",
		data: param,
		success: function(){
			alert("댓글이 작성되었습니다.");
			listReply("1");
		}
	});
	}
}

function listReply(num){
	$.ajax({
		type: "post",
		url: "/reply/list?boardNo=${article.boardNo}&curPage="+num,
		success: function(result){
			console.log(result);
			$("#listReply").html(result);
		}
		
	});
}
</script>
<br/><br/>
<!-- 게시글 상세 정보 페이지 -->
<div class="container">
	<h4>
		<span style="color:#00008B;">Totenham</span>&people 게시물
	</h4>
 	<div align="right">
       <form id="formObj" role="form" action="<c:url value='/board/delete'/>" method="post">  
          
          <input type="hidden" name="boardNo" value="${article.boardNo}">
          <input type="hidden" name="page" value="${p.page}">
          <input type="hidden" name="countPerPage" value="${p.countPerPage}">
          
          <input type="button" value="목록" class="btn" id="list-btn"
		style="background-color: #0000FF; margin-top: 0; height: 40px; color: white; border: 0px solid #388E3C; opacity: 0.8">&nbsp;&nbsp;
          
          
          <c:if test="${login.name == article.writer}">
	          <input id="modBtn" type="button" value="수정" class="btn btn-warning" style="color:white;">&nbsp;&nbsp;
	          
	          <input type="submit" value="삭제" class="btn btn-danger" onclick="return confirm('정말로 삭제하시겠습니까?')">&nbsp;&nbsp;
          </c:if>
        </form>
	</div>
<div class="row">
  <div class="col-lg-12">
    <div class="card" style="border: solid #00008B;">
      <div class="card-header text-white" style="background-color: #00008B;"><b>${article.title}</b>
      <br>
      <span style="font-size: 10px">작성자: ${article.account } &nbsp;&nbsp; 작성일자: <fmt:formatDate value="${article.regDate }" pattern="yyyy년 MM월 dd일 hh:mm"/> </span>
      </div>
      <textarea rows="10" cols="90" name='content' style="background-color:white" readonly>${article.content}</textarea>
    </div>
  </div>
</div>
</div>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<div class="card" style="border: solid #00008B;">
				<c:if test="${login!=null }">
					<textarea rows="5" cols="80" id="replyContent">
					</textarea>
					<button type="button" id="btnReply">댓글작성</button>
				</c:if>
			</div>
		</div>
	</div>
</div>
<div id="listReply"></div>

<jsp:include page="../include/footer.jsp" />









