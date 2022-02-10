<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
header.masthead {
	
	display: none;
}	
</style>

<br/><br/>
<div class="row">
<div class="col-md-3"></div>

<div class="col-md-6">

<ul class="nav nav-tabs nav-justified">
   <li class="nav-item" ><a class="nav-link active" href="/user/change_pw" style="font-size: 20px;"><strong>비밀번호 변경</strong></a></li>
   <li class="nav-item"><a class="nav-link" href="/user/user_update" style="font-size: 20px;"><strong>회원정보 수정</strong></a></li>
   <li class="nav-item"><a class="nav-link" href="/user/delete_check" style="font-size: 20px;"><strong>회원 탈퇴하기</strong></a></li>
   
</ul>
<br/><br/>

<h4 style="color: #00008B;">비밀번호 변경 페이지</h4><hr/><br/>
<form action="/user/change_pw_ok" method="post" style="margin-bottom: 0;">
<table style="cellpadding: 0; cellspacing: 0; margin: 0 auto; width: 100%">
	<tr>
		<td style="text-align: left">
			<p><strong>기존 비밀번호를 입력하세요.</strong>&nbsp;&nbsp;&nbsp;<span id="oldCheck"></span></p>
		</td>
	</tr>
	<tr>
		<td><input type="password" size="17" maxlength="20" id="old_pw"
			name="oldPw" class="form-control tooltipstered" 
			maxlength="20" required="required" aria-required="true"
			style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
			placeholder="로그인 당시의 비밀번호"></td>
	</tr>
	<tr>
		<td style="text-align: left">
			<p><strong>새로운 비밀번호를 입력해주세요.</strong>&nbsp;&nbsp;&nbsp;<span id="newCheck"></span></p>
		</td>
	</tr>
	<tr>
		<td><input type="password" size="17" maxlength="20" id="new_pw"
			name="newPw" class="form-control tooltipstered" 
			maxlength="20" required="required" aria-required="true"
			style="ime-mode: inactive; margin-bottom: 25px; height: 40px; border: 1px solid #d9d9de"
			placeholder="변경하고 싶은 비밀번호"></td>
	</tr>
	
	<tr>
		<td style="width: 100%; text-align: center; colspan: 2;"><input
			type="submit" value="변경" class="btn form-control tooltipstered" id="change_pw_btn"
			style="background-color: #00008B; margin-top: 0; height: 40px; color: white; border: 0px solid #f78f24; opacity: 0.8">
		</td>
	</tr>
</table>
</form>
</div>
<div class="col-md-3"></div>
</div>

<br/><br/>

<script>
//글쓰기 완료 시 띄울 알림창 처리
const result = "${msg}";

if(result === "change_fail") {
	alert("전에 등록한 비밀번호와 다릅니다");
}else if(result === "change_success"){
	alert("비밀번호 등록이 완료되었습니다");
}

</script>
<%@ include file="../include/footer.jsp" %>