<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<style>
.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}
</style>
<script>
	$(document).ready(function() {
		$('#login_form').submit(function(e) {
			e.preventDefault();
			if ($('#tid').val() == "") {
				alert('아이디를 입력해 주세요.');
				$('#tid').focus();
				return false;
			}
			if ($('#tpw').val() == "") {
				alert('비밀번호를 입력해 주세요.');
				$('#tpw').focus();
				return false;
			}
			const
			params = $("#login_form").serialize();
			$.ajax({
				url : '/login',
				type : 'POST',
				data : params,
				success : function(data) {
					switch (data) {
					case 1:
						location.reload();
						break;
					case 2:
						alert('비밀번호가 틀렸습니다.');
						$('#tpw').val('');
						$('#tpw').focus();
						return false;
						break;
					case 3:
						alert('없는 아이디 입니다.');
						$('#tid').val('');
						$('#tpw').val('');
						$('#tid').focus();
						return false;
						break;
					}
				}
			})
		})
	});
</script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/index">position</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li>
						<ul class="nav navbar-nav">
							<li class="dropdown"><a id="dLabel" data-target="#"
								data-toggle="dropdown" aria-haspopup="true" role="button"
								aria-expanded="false">Board <b class="caret"></b></a>
								<ul class="dropdown-menu">
								<c:forEach items="${group}" var="group">
									<li><a href="board?bcode=${group.bocde}">${group.title }</a></li>
								</c:forEach>	
								</ul></li>
						</ul>
					</li>
				</ul>
				<div class="navbar-text pull-right">
					<c:choose>
						<c:when test="${empty user }">
							<form action="" method="post" id="login_form">
								<input type="text" id="tid" name="id" placeholder="아이디" style="width:100px;"/> <input type="password"
									id="tpw" name="password" placeholder="비밀번호" style="width:100px;"/> <input type="submit"
									class="navbar-link" id="click_l" value="로그인"/> <input type="checkbox"
									value="Y" name="keepLogin" id="keepA" /> <label for="keepA">유지</label>
								<input type="checkbox" value="Y" name="securityLogin"
									id="security_l" /> <label for="security_l">보안</label> <span><a
									href="/joinForm" style="">&nbsp;회원 가입&nbsp;</a></span> <span><a
									href="/findUserForm" style=""> 아이디 / 비밀번호 찾기</a></span>
							</form>
						</c:when>
						<c:otherwise>
							<p>
								<a href="/myInfo" class="navbar-link"> 접속자 :
									${user.nickName} </a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="/myInfo"
									class="navbar-link"> 마이페이지 &nbsp;&nbsp;</a> <a href="/logout"
									class="navbar-link"> /&nbsp;&nbsp; 로그아웃 </a> <a></a>
							</p>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
	</nav>
</body>
</html>