<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
a:link{color:black;text-decoration: none}
a:visited{color:black;text-decoration: none}
a:hover{color:gray}
</style>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<script>
	
</script>
</head>

<body>
<jsp:include page="TopNavi.jsp"></jsp:include><Br>

<div class="container">
        <table class="table table-striped table-hover">
        <thead>
			<tr>
				<td>글번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.bnum }</td>
					<td><a href="<c:url value="/contentView">  
									<c:param name="bnum" value="${dto.bnum }"></c:param>
  								</c:url>">${dto.subject }</a></td>
					<td>${dto.writer }</td>
					<td>${dto.datetime }</td>
					<td>${dto.hit }</td>
				</tr>
			</c:forEach>
		</tbody>
		
	</table>
	<div style="">
		<div style="display:inline-block;text-align: left;width:9%;">
			<button>목록</button>
		</div>
		<div style="display:inline-block;width:80%;text-align: center;">
			<c:if test="${pageMaker.firstPage == true}">
				<a href="board<c:if test="${not empty bc.searchKeyword}">?searchType=${bc.searchType }&searchKeyword=${bc.searchKeyword }</c:if>">첫페이지</a>
			</c:if>
			<a href="board?<c:if test="${not empty bc.searchKeyword}">searchType=${bc.searchType }&searchKeyword=${bc.searchKeyword }&</c:if>pageNum=
			<c:choose>
				<c:when test="${bc.pageNum < 11}">
					1
				</c:when>
				<c:otherwise>
					${bc.pageNum - 10 }
				</c:otherwise> 
			</c:choose>
			">&lt;이전</a>
			<c:forEach var="pn" begin="${pageMaker.startPageNum }" end="${pageMaker.endPageNum }" step="1">
				<a href="board?<c:if test="${not empty bc.searchKeyword}">searchType=${bc.searchType }&searchKeyword=${bc.searchKeyword }&</c:if>pageNum=${pn }">${pn }</a>
			</c:forEach>
			<a href="board?<c:if test="${not empty bc.searchKeyword}">searchType=${bc.searchType }&searchKeyword=${bc.searchKeyword }&</c:if>pageNum=
			<c:choose>
				<c:when test="${bc.pageNum > pageMaker.endNum-10 }">
					${pageMaker.endNum}
				</c:when>
				<c:otherwise>
					${bc.pageNum + 10 }
				</c:otherwise> 
			</c:choose>
			">다음&gt;</a>
			<%-- 	<a href="board?<c:if test="${not empty bc.searchKeyword}">searchKeyword=${bc.searchKeyword }&searchType=${bc.searchType }&</c:if>pageNum=${pageMaker.endNum }">끝페이지</a> --%>
		</div>
		<div style="display:inline-block;text-align: right;width:10%;">
			<button onclick="location.href='./writeform'" class="btn btn-success">글쓰기</button>
		</div>
		<div style="width:100%;text-align: center;">
		<form action="/board">
			<select name="searchType">
				<option value="subject">제목</option>
				<option value="writer">작성자</option>
				<option value="content">내용</option>
			</select> 
			<input type="text" name="searchKeyword">
			<input type="submit" value="검색"/>
		</form>
		</div>
	</div>
	</div>
	<script src="//code.jquery.com/jquery-latest.min.js"></script> 
<script type="text/javascript" src="../../resources/js/bootstrap.js"></script>
</body>
</html>