<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
<script>

</script>
<form>
  <div class="form-group">
    <label for="userId">ID : </label>
    <input type="text" class="form-control" placeholder="Enter ID" id="userId" name="userId">
    <input type="button" id="idCheck" class="btn btn-primary"  value="중복체크" >
  </div>
 
  <div class="form-group">
    <label for="userPassword">Password:</label>
    <input type="password" class="form-control" placeholder="Enter Password" id="userPassword" name="userPassword">
  </div>
  <div class="form-group">
    <label for="userPassword">passwdCheck:</label>
    <input type="password" class="form-control" placeholder="Enter passwdCheck" id="passwdCheck" name="passwdCheck">
  </div>
  <div class="form-group">
    <label for="userName">name:</label>
    <input type="text" class="form-control" placeholder="Enter name" id="userName" name="userName">
  </div>
  <div class="form-group">
    <label for="userEmail">Email:</label>
    <input type="email" class="form-control" placeholder="Enter email" id="userEmail" name="userEmail">
  </div>
  <div class="form-group form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox"> Remember me
    </label>
  </div>
</form>
 <button type="button" class="btn btn-primary" id="btn-userJoin">Submit</button>
</div>

<!--  <script src="/js/user/user.js"></script> -->
<script type="text/javascript">
$(document).ready(function(){  

	function checkform(){
			var userIdCheck = RegExp(/^[A-Za-z0-9]{8,20}$/);
			var userPwCheck = RegExp(/^(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{8,20}$/);
			var userNameCheck = RegExp(/^[ㄱ-ㅎ|가-힣|a-z|A-Z]+$/);
			var userPassword = $("#userPassword").val();
			var passwdCheck = $("#passwdCheck").val();
			var userName = $("#userName").val();
			var userEmail = $("#userEmail").val();
			

			if(userPassword==""){
				alert("패스워드를 입력해주세요");
				return false;
			}
			if(!userPwCheck.test(userPassword)){
				alert("(패스워드 양식 오류) - [영어 대문자 시작+소문자],[영어 소문자, 숫자와 특수기호 필히 입력],[8~20 자리]")
				return false;
			}
			
			if(passwdCheck==""){
				alert("패스워드 확인을 입력해주세요");
				return false;
			}
			if(passwdCheck != userPassword){
				alert("(패스워드가 동일하지 않습니다.")
				return false;
			}
			if(userName==""){
				alert("이름을 입력하세요");
				return false;
			}
			if(!userNameCheck.test(userName)){
				alert("(이름 양식 오류) - [한글/영어로 된 이름을 입력하세요]");
				return false;
			}
			if(userEmail==""){
				alert("이메일을 입력해주세요")
				return false;
			}
			

			else if (idx == false) {
				alert("아이디 중복체크를 해주세요.");
				return;
			} else {
				$('#joinfrm').submit();
			}
			return true;	
		}

	
	
	$("#idCheck").click(function(){
		var userIdCheck = RegExp(/^[A-Za-z0-9]{8,20}$/);	
		var userId = $('#userId').val();
		if(userId==""){
			alert("아이디을 입력해주세요");
		}
		else if(!userIdCheck.test(userId)){
			alert("(아이디 양식 오류) [아이디는 영문, 숫자로만 입력해주세요],[8~20 자리]")
		}
		else{
			$.ajax({
				url: "/auth/user/idCheck",
				type: "post",
				data: {userId:userId}, 
				success: function(result){
					if(result == "0"){
						$('#idCheck').attr("readonly",true);
						alert('사용가능한 아이디입니다!');
					}else{
						alert('중복된 아이디입니다.');
					}
				},
				error: function(){
					alert("서버에러");
				}
			});
		}
	});


	
})
	

</script>
<%@ include file="../layout/footer.jsp"%>

