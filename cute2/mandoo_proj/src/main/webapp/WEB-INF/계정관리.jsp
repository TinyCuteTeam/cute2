<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/계정관리.css">
</head>
<body>
	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<div class="sidebar">
		<ul id="sidebar-content">
			<li><a href="마이페이지.jsp" class="category-link">마이페이지</a></li>
			<li><a href="계정관리.jsp" class="category-link title">계정관리</a></li>
			<li><a href="사내게시판.jsp" class="category-link">사내게시판</a></li>
		</ul>
	</div>

	<!-- 내용페이지 -->
	<div class="content">
		<div id="content-display">
			<form method="post"
				action="${pageContext.request.contextPath}/account">
				<div class="main">
					<div class="flex header">
						<div></div>
						<div>아이디</div>
						<div>이름</div>
						<div>이메일</div>
					</div>

					<c:forEach var="account" items="${accounts}">
						<div class="flex round">
							<div>
								<input type="checkbox" name="selectedAccounts"
									value="${account.accountId}" class="chk">
							</div>
							<div>${account.accountId}</div>
							<div>${account.accountName}</div>
							<div>${account.accountEmail}</div>
						</div>
					</c:forEach>
				</div>
				<button type="submit" name="action" value="approve" class="btn">승인</button>
				<button type="submit" name="action" value="reject" class="btn1">거절</button>
			</form>

			<!-- 페이징 버튼 -->
			<div class="pagination">
				<c:forEach var="i" begin="1" end="${totalPages}">
					<a href="account?page=${i}">${i}</a>
				</c:forEach>
			</div>
		</div>

		<script src="${pageContext.request.contextPath}/JS/계정관리.js"></script>
</body>
</html>
