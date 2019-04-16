<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 탈퇴</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<script src="/resources/custom/js/formValidate.js"></script>
	<script>
	$(function(){
		$("#deleteForm").bind("submit",function(e){
			e.preventDefault();
			$.post("/checkPassword", $("#deleteForm").serialize(),function( data ) {
				switch(data){
				case 1:
					return true;
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
          <h3>회원탈퇴 </h3>
        </div>
        <div class="col-md-6 col-md-offset-3">
          <form role="form" action="/deleteUser" id="deleteForm">
            <div class="form-group">
            <label>아이디</label>
              <input type="text" value="${user.id }" name="id" class="form-control" id="id" readonly="readonly">
            </div>
            <div class="form-group">
            <label>닉네임</label>
              <input type="text" value="${user.nickName }" name="nickName" class="form-control" id="nickName" readonly="readonly">
            </div>
            <div class="form-group">
            <label>비밀번호</label>
              <input type="password" name="password" class="form-control" id="pw" placeholder="비밀번호를 입력해주세요." required>
            </div>
            <div class="form-group">
            <p>탈퇴하더라도 작성된 게시물은 삭제되지 않으며, 탈퇴 후엔 해당 아이디로 작성된 게시물의 삭제가 불가능합니다.</p>
            <input type="submit" class="btn btn-info" value="탈퇴" /><i
					class="fa fa-check spaceLeft"></i>
            </div>
          </form>
        </div>
        </div>
</body>
</html>