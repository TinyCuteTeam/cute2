<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/사내게시판등록.css">
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
		<h1>게시판 생성</h1>
		<form id="board-form" action="${pageContext.request.contextPath}/boardAdd" method="post">
    <div class="form-group">
        <label for="title">제목:</label>
        <input type="text" id="title" name="title" required>
    </div>
    <div class="form-group">
        <label for="content">내용:</label>
        <textarea id="content" name="content" rows="10" required></textarea>
    </div>
    <button type="submit">게시하기</button>
</form>

	</div>
</body>

</html>
