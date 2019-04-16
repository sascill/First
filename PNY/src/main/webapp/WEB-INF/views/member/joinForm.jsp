<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 가입</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<script src="/resources/custom/js/formValidate.js"></script>
<style>
		input.error, textarea.error{
  border:1px dashed red;
}
label.error{
  margin-left:10px;
  color:red;
</style>

<script>
$(document).ready(function(){
	$("#formSubmit").click(function(e){
		checkz();
		 $.post("/checkDuplicate", $("#joinForm").serialize(),function( data ) {
			switch(data){
			case 1:
				alert('중복된 아이디가 존재 합니다.');
				$('#id').focus();
				break;
			case 2:
				alert('중복된 닉네임이 존재 합니다.');
				$('#nickName').focus();
				break;
			case 3:
				alert('중복된 이메일이 존재 합니다.');
				$('#email').focus();
				break;
			case 4:
			   $('#joinForm').submit();
				break;
			}
			});
		})
	});
</script>
</head>
<body>
 <jsp:include page="../TopNavi.jsp"></jsp:include><br>
  <div class="container">
        <div class="page-header">
          <h3>회원가입 </h3>
        </div>
        <div class="col-md-6 col-md-offset-3" >
          <form id="joinForm" role="form" action="/addUser" method="get">
            <div class="form-group">
              <label for="id">아이디 *</label>
              <input type="text" name="id" class="form-control" id="id" placeholder="아이디" required>
              <span>아이디는 영문과 숫자만 입력 가능하며  4~12자로 되어야 합니다.</span>
            </div>
            <div class="form-group">
              <label for="pw">비밀번호 *</label>
              <input type="password" name="password" class="form-control" id="pw" placeholder="비밀번호" required>
              <span>비밀번호는 영문,숫자를 혼합하여 6~20자로 되어야 합니다. </span>
            </div>
            <div class="form-group">
              <label for="pw2">비밀번호 확인 *</label>
              <input type="password" class="form-control" id="cpw" placeholder="비밀번호 확인" required>
            </div>
            <div class="form-group">
              <label for="username">닉네임 *</label>
              <input type="text" name="nickName" class="form-control" id="nickName" placeholder="이름을 입력해 주세요" required>
              <span>닉네임은 2~8자로 되어야 합니다.</span>
            </div>
            <div class="form-group">
              <label for="email">이메일 *</label>
                <input type="tel" class="form-control" name= "email" id="email" placeholder="이메일 주소를 입력하세요" required>
            </div>
            <div class="form-group">
              <label for="email">이메일주소 확인 *</label>
                <input type="tel" class="form-control" id="emailCheck" placeholder="이메일 주소를 입력하세요" required>
            </div>
            <div class="form-group">
            	<label for="checkMailing">메일 수신</label>
            	<input type="checkbox" id="checkMailing" name="checkMailing" value="Y">
            	<span>체크시 단체메일을 수신하게 됩니다.</span>
            </div>
            <div class="form-group text-center">
              <input type="button" id="formSubmit" class="btn btn-info" value ="회원가입"/><i class="fa fa-check spaceLeft"></i>
              <button type="reset" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
            </div>
          </form>
        </div>
        </div>
</body>
</html>