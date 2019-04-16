<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<script src="/resources/custom/js/formValidate.js"></script>
<script>
	$(function(){
		$('#findUserForm').bind("submit",function(e){
				alert('a');
			e.preventDefault();
			checkz();
			$.post("/checkUser", $("#findUserForm").serialize(),function( data ) {
				switch(data){
				case 1:
					location.href="/findUser?email="+$('#email').val();
					break;
				case 2:
					alert('입력하신 이메일로 등록된 계정정보가 없습니다.');
					$('#email').focus();
					break;
				}
				});
			});
		});
</script>
<title>Insert title here</title>
</head>
<body>
	<div>
	<jsp:include page="../TopNavi.jsp"></jsp:include><br>
	</div>
	<div class="container">
		<p>
		아이디/비밀번호는 가입시 등록한 메일 주소로 알려드립니다.
		</p>
		<div class="btn-group btn-group-justified">
		<form action="" id="findUserForm">
		  <label>이메일 주소</label>
		  <input type="text" id="email" name="email" required>
		  <input type="submit" value="아이디/비밀번호 찾기">
		 </form>
		</div>		
	</div>
</body>
</html>