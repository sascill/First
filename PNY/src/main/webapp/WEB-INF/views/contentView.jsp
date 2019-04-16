<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	<link href="/resources/custom/css/boardStyle.css" rel="stylesheet" type="text/css" media="screen">
<script>
$(function(){
	$("#replySubmit").bind("click",function(e){
		$.post("/addReply", $("#addReplyForm").serialize(),function(data){
			});
		});
});
</script>
</head>
<jsp:include page="TopNavi.jsp"></jsp:include>
<body id="body2">
	<div class="container-fluid text-center" id="mainDiv">
		<!-- 그리드 분배 9, 3-->
		<div class="row">
			<!-- 메인 -->
			<div class="col-sm-12 text-left">
				<h3>board${contentList.bcode }</h3>
				<div class="row">
					<div class="panel-group">
						<div class="panel panel-default">
							<!-- 작성글 헤더(글 제목, 글 정보) -->
							<div class="panel-heading">
								<h3>${contentList.subject }</h3>
								<div id="boardInfo" class="text-right">
									${contentList.writer }
									<span class="bar"> </span>
									${contentList.datetime }
									<span class="bar"> </span>
									조회 ${contentList.hit }
								</div>
							</div>

							<!-- 작성글 바디(글 내용) -->
							<div class="panel-body">
								<p>${contentList.content }</p>
								<!-- 글 수정,삭제 버튼 -->
								<c:if test="${contentList.writer eq user.nickName}">
									<a href="/delete?bnum=${contentList.bnum }" class="btn btn-success pull-right">삭제</a>
									<a href="/updateform?bnum=${contentList.bnum }" class="btn btn-success pull-right">수정</a>
								</c:if>
							</div>

							<!-- 댓글 -->
							<div class="panel-footer" id="replyForm">
								<h4>전체 댓글</h4>
								<div id="replyList">
									<table id="reply_table" class="table table-hover text-center">
										<c:forEach items="${reply}" var="replyList">
											<tr>
												<td>
												</td>
												<td>${replyList.br_writer}</td>
												<td>
															${replyList.br_content}
												</td>
												<td>
													${replyList.br_date}
												</td>
												<c:if test="${replyList.br_writer eq user.nickName}">
													<td>
														<button type="button" class="btn btn-danger">삭제</button>
														<button type="button" class="btn btn-success">수정</button>
													</td>
												</c:if>
											</tr>
										</c:forEach>
									</table>
								</div>
								<!-- 댓글 페이징 -->
								<div class="row text-center">
									<ul class="pagination">
										<c:if test="${replyPageMaker.replyPrev}">
											<li><a href="index${replyPageMaker.replyMakeQuery(replyPageMaker.replyStartPage-1)}"><span class="glyphicon glyphicon-menu-left"></span></a></li>
										</c:if>
										 <c:forEach begin="${replyPageMaker.replyStartPage}" end="${replyPageMaker.replyEndPage}" var="replyPageIndex">
											<c:choose>
												<c:when test="${param.replyPage eq replyPageIndex}">
													<li class="active"><a href="view${replyPageMaker.replyMakeQuery(replyPageIndex)}&b_num=${v_content.b_num}&page=${page}&perPageNum=${perPageNum}">${replyPageIndex}</a></li>
												</c:when>
												<c:otherwise>
													<li><a href="view${replyPageMaker.replyMakeQuery(replyPageIndex)}&b_num=${v_content.b_num}&page=${page}&perPageNum=${perPageNum}">${replyPageIndex}</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach> 
										<c:if test="${replyPageMaker.replyNext}">
											<li><a href="index${replyPageMaker.replyMakeQuery(replyPageMaker.replyEndPage+1)}"><span class="glyphicon glyphicon-menu-right"></span></a></li>
										</c:if>
									</ul>
								</div>
								<!-- 댓글 폼(로그인 세션 없을 시 보이지 않음) -->
								<c:if test="${user.nickName != null}">
									<div class="row">
										<form id="addReplyForm" method="post">
												<input name="bnum" type="hidden" value="${contentList.bnum}">
											<div id="replyInfo" class="col-sm-12">
													<input id="reply_id" name="writer" type="hidden" class="form-control" value="${user.nickName}" readonly>
													<textarea id="reply_content" name="content" class="form-control" rows="4" placeholder="댓글 내용을 작성하세요"></textarea>
											</div>
											<button id="replySubmit" type="button" class="btn btn-primary pull-right">댓글 등록</button>
										</form>
									</div>
								</c:if>
							</div>
						</div>
					</div>
				</div>
				<!-- 글목록 버튼 -->
				<button onclick="location.href='../index?page=${page}&perPageNum=${perPageNum}'" type="button" class="btn btn-primary pull-right">글목록</button>
			</div>
		</div>
	</div>

</body>
</html>