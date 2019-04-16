<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
</head>
<body>
	<div>
	<jsp:include page="../TopNavi.jsp"></jsp:include><br>
	</div>
	<div class="container">
		<div class="btn-group btn-group-justified">
		  <a href="/modifyInfoForm" class="btn btn-primary">정보 수정</a>
		  <a href="/modifyPasswordForm" class="btn btn-primary">비밀번호 변경</a>
		  <a href="/deleteInfoForm" class="btn btn-primary">회원탈퇴</a>
		</div>		
	</div>
</body>
</html>