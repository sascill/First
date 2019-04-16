<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//Dli HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dli">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="TopNavi.jsp"></jsp:include><br>
	<div class="container" style="width: 100%">
		<div class="row">
			<div class="col-md-2 ac">좌측 내용</div>
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-6">
						<h4>board1</h4><hr>
						<ul>
						<c:set var="doneLoop" value="0" />
							<c:forEach items="${mlist}" var="dto" varStatus="status">
								<c:if test="${dto.bcode == 1 }">
									<li><a href="<c:url value="/contentView">  
										<c:param name="bnum" value="${dto.bnum }"></c:param>
  									</c:url>">${dto.subject }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					<div class="col-md-6">
						<h4>board2</h4><hr>
						<ul>
							<c:forEach items="${mlist}" var="dto" varStatus="status">
								<c:if test="${dto.bcode == 2 }">
									<li><a href="<c:url value="/contentView">  
										<c:param name="bnum" value="${dto.bnum }"></c:param>
  									</c:url>">${dto.subject }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					<div class="col-md-6">
						<h4>board3</h4><hr>
						<ul>
							<c:forEach items="${mlist}" var="dto">
								<c:if test="${dto.bcode == 3 }">
									<li><a href="<c:url value="/contentView">  
										<c:param name="bnum" value="${dto.bnum }"></c:param>
  									</c:url>">${dto.subject } ${status.step }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
					<div class="col-md-6">
						<h4>board4</h4><hr>
						<ul>
							<c:forEach items="${mlist}" var="dto">
								<c:if test="${dto.bcode == 4 }">
									<li><a href="<c:url value="/contentView">  
										<c:param name="bnum" value="${dto.bnum }"></c:param>
  									</c:url>">${dto.subject }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-2 ac">우측내용</div>
		</div>
	</div>
	<script src="//code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript" src="../../resources/js/bootstrap.js"></script>
</body>
</html>