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
	<div><jsp:include page="check.jsp"></jsp:include></div>
			<div class="container">
	<div class="page-header">
		<h3>회원정보</h3>
	</div>
	<div class="col-md-6 col-md-offset-3">
			<div class="form-group">
				<label for="id">아이디</label>
				${user.id }
			</div>
			<div class="form-group">
				<label for="nickName">별명</label> 
					${user.nickName }
			</div>
			<div class="form-group">
			<label>이메일주소</label>
					${user.email }
			</div>
	</div>
	</div>
</body>
</html>