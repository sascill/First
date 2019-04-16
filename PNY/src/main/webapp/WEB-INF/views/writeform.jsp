<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
</head>
<body>
<jsp:include page="TopNavi.jsp"></jsp:include>
	<body id="body2">
	<div class="container-fluid text-center">
		<div class="row">
			<!-- 메인 -->
			<div class="col-sm-12 text-left">
				<h1>자유게시판</h1>
				<div class="row">
					<div class="panel-group">
						<div class="panel panel-default">
							<!-- 작성글 헤더(글 제목, 글 정보) -->
							<div class="panel-heading">
								<h4>글 쓰기</h4>
							</div>
							<!-- 작성글 바디(글 내용) -->
							<div class="panel-body">
								<!-- 글 작성 폼 -->
								<div class="row">
									<form id="write" action="/write" method="get">
										<div class="input-group">
											<span class="input-group-addon">
												<i class="glyphicon glyphicon-user"></i>
											</span>
											<input type="hidden" name="bcode" value="1">
											<input readonly id="writer" type="text" class="form-control" name="writer" value="${user.nickName}">
										</div>
										<div class="input-group">
											<span class="input-group-addon">제목</span>
											<input id="title" type="text" class="form-control" name="subject" placeholder="글 제목">
										</div>
										<!-- 네이버 스마트 에디터 -->
										<div class="input-gruop">
										<textarea name="content" id="content" rows="10" cols="128" style="width:99%;"></textarea>
										<div>
										<button id="writeSubmit" type="button" class="btn btn-success pull-right">글쓰기</button>
										</div>
										<div class="text-right">
										<button type="button" id="back" class="btn btn-primary pull-left">돌아가기</button>
										</div>
										</div>
									</form>
								</div>
							</div>
							<!-- 작성글 푸터(댓글) -->
							<div class="panel-footer"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>