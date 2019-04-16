<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 변경</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<script src="/resources/custom/js/formValidate.js"></script>
	
<script>
	$(function(){
		$('#modifyPasswordForm').bind("submit",function(e){
			e.preventDefault();
			checkz();
			$.post("/checkPassword", $("#modifyPasswordForm").serialize(),function( data ) {
				switch(data){
				case 1:
					function(e){
					 return true; 
					 }
					break;
				case 2:
					alert('현재 비밀번호가 틀립니다.');
					$('#pw').focus();
					break;
				}
				});
			});
		});
		
</script>
</head>
<body>
	<div><jsp:include page="check.jsp"></jsp:include></div>
  <div class="container">
        <div class="page-header">
          <h3>비밀번호 변경 </h3>
        </div>
        <div class="col-md-6 col-md-offset-3">
          <form role="form" action="/modifyPassword" id="modifyPasswordForm">
            <div class="form-group">
              <input type="text" value="${user.id }" name="id" class="form-control" id="id" placeholder="아이디" readonly="readonly">
            </div>
            <div class="form-group">
              <label for="pw">현재비밀번호를 입력해주세요.</label>
              <input type="password" name="password" class="form-control" id="pw" placeholder="비밀번호" required>
            </div>
            <div class="form-group">
              <label for="pw">새로운 비밀번호를 입력해주세요.</label>
              <input type="password" name="newPassword" class="form-control" id="npw" placeholder="비밀번호" required>
            </div>
            <div class="form-group">
              <label for="pw">새로운 비밀번호 확인.</label>
              <input type="password" name="checkNewPassword" class="form-control" id="cnpw" placeholder="비밀번호" required>
            </div>
            <div class="form-group">
            <input type="submit" class="btn btn-info" value="변경" /><i
					class="fa fa-check spaceLeft"></i>
            </div>
          </form>
        </div>
        </div>
</body>
</html>