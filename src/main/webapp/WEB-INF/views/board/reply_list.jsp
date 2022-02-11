<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<style>
.page-active {
	background-color: #00008B;
	color: white;
}

.page-deactive{
	background-color:white;
	color:black;
}
</style>
<script>
$(function(){
	const formElement = $("#formObj");
	$("#modReply").click(function(){
		formElement.attr("action", "/reply/modify");
		formElement.attr("method", "get");
		formElement.submit();
	});
});

</script>
<!-- 게시글 댓글 목록 -->
<body>
<c:forEach var="reply" items="${list }">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="card">
						<b>${reply.rePlyer }</b>
				<div style="font-size: 12px">
						<c:choose>
							<c:when test="${reply.regDateForm }">
								<td>
									작성일:<fmt:formatDate value="${reply.regDate}" pattern="hh:mm" />	   
								</td>
							</c:when>
							<c:otherwise>
								작성일:<fmt:formatDate value="${reply.regDate}" pattern="yyyy년 MM월 dd일" />	   
							</c:otherwise>
						</c:choose>
				</div>		
						<br>
						${reply.replyContent}
				
				<div align="right">         		
        		</div>
			</div>
			
		</div>
	</div>
</div>
</c:forEach>
<ul class="pagination justify-content-center">
                       	<!-- 이전 버튼 -->
                       	<c:if test="${pc.prev}">
	                       	<li class="page-item">
								<a class="page-link" href="<c:url value='/reply/list?page=${pc.beginPage-1 }&countPerPage=${pc.paging.countPerPage }' />" 
								style="background-color: #00008B; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">이전</a>
							</li>
						</c:if>
						
						<!-- 페이지 버튼 -->
						<c:forEach var="pageNum" begin="${pc.beginPage}" end="${pc.endPage}">
							<li class="page-item">
							   <a href="<c:url value='/reply/list?page=${pageNum}&countPerPage=${pc.paging.countPerPage }'/>" class=" page-link ${(pc.paging.page == pageNum) ? 'page-active' : 'page-deactive'}" style="margin-top: 0; height: 40px; border: 1px solid #00008B;">${pageNum}</a>
							</li>
					    </c:forEach>
					    
					    <!-- 다음 버튼 -->
					    <c:if test="${pc.next}">
						    <li class="page-item">
						      <a class="page-link" href="<c:url value='/reply/list?page=${pc.endPage+1 }&countPerPage=${pc.paging.countPerPage }' />" 
						      style="background-color: #00008B; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">다음</a>
						    </li>
					    </c:if>
				    </ul>
</body>
</html>