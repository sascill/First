<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 수정</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<script src="/resources/custom/js/formValidate.js"></script>
	<script>
	$(function(){
		$("#modifyInfoForm").bind("submit",function(e){
			$.post("/checkDuplicate", $("#modifyInfoForm").serialize(),function( data ) {
				switch(data){
				case 1:
					alert('중복된 이메일이 존재 합니다.');
					$('#email').focus();
					$("#modifyInfoForm").unbind("submit");
					break;
				case 2:
					alert('중복된 닉네임이 존재 합니다.');
					$('#nickName').focus();
					break;
				case 3:
					 $('#modifyInfoForm').submit();
					break;
				}
				});
			});
		});
	</script>
</head>
<body>
<div>
	<jsp:include page="check.jsp"></jsp:include><br>
	</div>
	<div class="container">
	<div class="page-header">
		<h3>회원정보 수정</h3>
	</div>
	<div class="col-md-6 col-md-offset-3">
		<form role="form" id="modifyInfoForm" action="modifyInfo" method="get">
			<div class="form-group">
				<label for="id">아이디</label>
				<input type="text" style="background-color:transparent;border:0 solid black;" name="id"
					class="form-control" id="id" value="${user.id }" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="nickName">별명</label> 
				<input type="text" name="nickName" value="${user.nickName }" class="form-control" id="nickName" required>
					<p>변경할 별명을 입력하세요.</p>
			</div>
			<div class="form-group">
				<label for="email">이메일</label> <input type="text" name="email"
					class="form-control" id="email" value="${user.email }" required>
					<p>변경할 이메일 주소를 입력하세요.</p>
			</div>
			<div class="form-group">
            	<label for="checkMailing">메일 수신 </label>
            	<input type="checkbox" id="checkMailing" name="checkMailing" value="Y">
            </div>
			<div class="form-group text-center">
				<input type="submit" class="btn btn-info" value="정보 수정" /><i
					class="fa fa-check spaceLeft"></i>
				<input type="reset" class="btn btn-warning" value="취소"/>
					<i class="fa fa-times spaceLeft"></i>
			</div>
		</form>
	</div>
	</div>
</body>
</html>