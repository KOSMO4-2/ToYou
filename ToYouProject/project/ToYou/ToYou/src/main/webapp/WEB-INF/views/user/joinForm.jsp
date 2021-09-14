<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../layout/header.jsp"></jsp:include>
<div class="container">
<form>
  <div class="form-group">
    <label for="user_id">ID : </label>
    <input type="text" class="form-control" placeholder="Enter ID" id="user_id" name="user_id">
  </div>
  <div class="form-group">
    <label for="user_password">Password:</label>
    <input type="password" class="form-control" placeholder="Enter password" id="user_password" name="user_password">
  </div>
  <div class="form-group">
    <label for="user_name">name:</label>
    <input type="text" class="form-control" placeholder="Enter name" id="user_name" name="user_name">
  </div>
  <div class="form-group">
    <label for="user_email">Email:</label>
    <input type="email" class="form-control" placeholder="Enter email" id="user_email" name="user_email">
  </div>
  <div class="form-group form-check">
    <label class="form-check-label">
      <input class="form-check-input" type="checkbox"> Remember me
    </label>
  </div>
</form>
 <button type="button" class="btn btn-primary" id="btn-save">Submit</button>
</div>
<script src="/js/user/user.js"></script>
