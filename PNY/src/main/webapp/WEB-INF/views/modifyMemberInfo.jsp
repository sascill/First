<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>정보 수정</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<div class="page-header">
		<h1>회원정보 수정</h1>
	</div>
	<div class="col-md-6 col-md-offset-3">
		<form role="form" action="modify_member">
			<div class="form-group">
				<label for="id">아이디</label>
				<input type="text" style="background-color:transparent;border:0 solid black;" name="id"
					class="form-control" id="id" value="sascill" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="password">현재 비밀번호</label> <input type="text" name="password"
					class="form-control" id="password" placeholder="보안을 위해 현재 비밀번호를 입력해 주세요.">
			</div>
			<div class="form-group">
				<label for="nickName">별명</label> <input type="text" name="nickName"
					class="form-control" id="nickName" placeholder="이름을 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="email">이메일</label> <input type="text" name="email"
					class="form-control" id="email" placeholder="변경할 메일 주소를 입력해 주세요">
			</div>
			<div class="form-group">
            	<label for="checkMailing">메일 수신 </label>
            	<input type="checkbox" id="checkMailing" name="checkMailing" value="Y">
            </div>
			<div class="form-group text-center">
				<input type="submit" class="btn btn-info" value="정보 수정" /><i
					class="fa fa-check spaceLeft"></i>
				<button type="submit" class="btn btn-warning">
					취소<i class="fa fa-times spaceLeft"></i>
				</button>
			</div>
		</form>
	</div>
</body>
</html>