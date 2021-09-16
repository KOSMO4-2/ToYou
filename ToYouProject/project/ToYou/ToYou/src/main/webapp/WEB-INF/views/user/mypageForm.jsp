<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="../layout/header.jsp"%>

<div class="container">
<form>
	<input type="hidden" value="${principal.user.userNo }" id="userNo"/>
	<div class="form-group">
	    <label for="userId">ID : </label>
	    <input type="text" value="${principal.user.userId}" class="form-control" placeholder="Enter ID" id="userId" name="userId" readonly>
	</div>
	<c:if test="${empty principal.user.oauth }">
	<div class="form-group">
	    <label for="userPassword">Password:</label>
	    <input type="password" class="form-control" placeholder="Enter Password" id="userPassword" name="userPassword">
	</div>
	</c:if>
	<div class="form-group">
	    <label for="userName">name:</label>
		<input type="text" value="${ principal.user.userName }"  class="form-control" placeholder="Enter name" id="userName" name="userName" readonly>
	</div>
	<div class="form-group">
	    <label for="userEmail">Email:</label>
	    <input type="email" value="${principal.user.userEmail}"  class="form-control" placeholder="Enter email" id="userEmail" name="userEmail">
	</div>
	<div class="form-group form-check">
	    <label class="form-check-label">
	      <input class="form-check-input" type="checkbox"> Remember me
		</label>
	</div>
</form>
 <button type="button" class="btn btn-primary" id="btn-userUpdate">회원정보 수정</button>
</div>

<script src="/js/user/user.js"></script>
<%@ include file="../layout/footer.jsp"%>

