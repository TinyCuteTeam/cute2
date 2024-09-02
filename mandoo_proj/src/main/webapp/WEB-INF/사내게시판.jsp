<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="mandoo.DTO.UserDTO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/사내게시판.css">
</head>

<body>
	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<div class="sidebar">
		<ul id="sidebar-content">
			<li><a href="마이페이지.jsp">마이페이지</a></li>
			<li><a href="계정관리.jsp">계정관리</a></li>
			<li><a href="사내게시판.jsp" class="title">사내게시판</a></li>
		</ul>
	</div>

	<div class="content">
		<h1>사내 게시판</h1>
		<div id="id"><%=((UserDTO) session.getAttribute("user")).getUserName()%>님
		</div>
		<button id="write-button"
			onclick="window.location.href='/boardAdd'">글쓰기</button>

		<table id="posts-table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>날짜</th>
					<th>글쓴이</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="post" items="${posts}">
					<tr>
						<td>${fn:substring(post.boardId, 1, fn:length(post.boardId))}</td>
						<td><a
							href="${pageContext.request.contextPath}/boardDetail?postId=${post.boardId}">${post.boardTitle}</a></td>
						<td><fmt:formatDate value="${post.boardDate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${post.userName}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- 페이징 처리 -->
		<div class="pagination">
			<c:if test="${currentPage > 1}">
				<a href="?page=${currentPage - 1}">이전</a>
			</c:if>

			<c:forEach var="i" begin="1" end="${totalPages}">
				<c:choose>
					<c:when test="${i == currentPage}">
						<strong>${i}</strong>
					</c:when>
					<c:otherwise>
						<a href="?page=${i}">${i}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>

			<c:if test="${currentPage < totalPages}">
				<a href="?page=${currentPage + 1}">다음</a>
			</c:if>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/JS/사내게시판.js"></script>
</body>

</html>
