<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 부트스트랩,JQuery -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<!-- 네이버 스마트 에디터 2 -->
<script type="text/javascript" src="/resources/naverEditor/workspace/js/service/HuskyEZCreator.js" charset="utf-8"></script>
<!-- custom css -->
<link href="/resources/custom/css/boardStyle.css" rel="stylesheet" type="text/css" media="screen">
<script type="text/javascript" src="/resources/custom/js/write.js"></script>
<script>
	$(function(){
		$("#back").click(function(e){
			if (confirm("돌아 가시겠습니까?")){
				history.back();
					} else {
					return;
					}
			})
		});
</script>
</head>
<jsp:include page="TopNavi.jsp"></jsp:include>
<body id="body2">
	<div class="container-fluid text-center">
		<div class="row">
			<div class="col-sm-12 text-left">
				<h1>자유게시판</h1>
				<div class="row">
					<div class="panel-group col-sm-10">
						<div class="panel">
							<div class="panel-body">
								<div class="row">
									<form id="update" action="/update" method="get">
										<!-- hidden value -->
										<input type="hidden" id="bnum" name="bnum" value="${contentList.bnum}">
										<input type="hidden" id="writer" name="writer" value="${contentList.writer}">
										<div class="input-group">
											<span class="input-group-addon"></span>
											<input id="subject" type="text" class="form-control" name="subject" placeholder="글 제목" value="${contentList.subject}">
										</div>
										<!-- 네이버 스마트 에디터 -->
										<div class="input-gruop">
										<textarea name="content" id="content" rows="10" cols="128" style="width:99%;">${contentList.content}</textarea>
										<div>
										<button id="updateSubmit" type="button" class="btn btn-success pull-right">글 수정하기</button>
										</div>
										<div class="text-right">
										<button type="button" id="back" class="btn btn-primary pull-left">돌아가기</button>
										</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>