<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/에러코드.css">
<style>
/* 모달 배경 */
.popup {
	display: none; /* 기본적으로 숨김 */
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4); /* 배경을 반투명하게 */
	padding-top: 60px;
}

/* 모달 콘텐츠 */
.popup-content {
	background-color: #fefefe;
	margin: 5% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
	max-width: 500px;
	box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3); /* 그림자 효과 */
	border-radius: 10px; /* 모서리 둥글게 */
}

/* 입력 필드 스타일 */
#popup input[type="text"], #popup textarea {
	width: 100%;
	padding: 10px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

/* 저장 버튼 스타일 */
#popup button {
	width: 100%;
	background-color: #e6e6e6;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

#popup button:hover {
	background-color: #0085FF;
	color: white;
}

/* 모달 닫기 버튼 */
.close-popup {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close-popup:hover, .close-popup:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>

<body>

	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/sidebar_기준관리.jsp" />
	<!-- 내용페이지  -->
	<div class="content">

		<!--       <div class="errorwrap"> -->

		<!-- 타이틀 -->
		<h1>에러코드</h1>

		<!-- 버튼 -->
		<div class="errorfloat">
			<button class="plus errorAdd" id="addButton">에러추가</button>
		</div>

		<!-- 표 -->
		<div>
			<table border="1" class="errortable" id="errorTable">
				<tr>
					<th>오류코드</th>
					<th>이름</th>
					<th class="errorexplain">내용</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
				<c:forEach var="error" items="${errors}">
					<tr>
						<td>${error.errorId}</td>
						<td>${error.errorName}</td>
						<td>${error.errorContents}</td>
						<td><button class="editBtn" data-error-id="${error.errorId}"
								data-error-name="${error.errorName}"
								data-error-contents="${error.errorContents}">수정</button></td>
						<td>
							<button class="editBtn" data-error-id="${error.errorId}">삭제
							</button>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<!--       </div> -->

		<!-- 모달창 -->
		<div id="popup" class="popup">
			<div class="popup-content">
				<span id="close-popup" class="close-popup">&times;</span>
				<h2>에러 코드 등록/수정</h2>
				<form id="errorForm" method="post" action="/mandoo/Error">
					<input type="hidden" name="action" id="action" value="add">
					<input type="hidden" name="errorId" id="errorId"> <label
						for="errorName">에러 이름:</label><br> <input type="text"
						id="errorName" name="errorName" placeholder="에러 이름" required><br>
					<label for="errorContents">에러 내용:</label><br>
					<textarea id="errorContents" name="errorContents"
						placeholder="에러 내용" required></textarea>
					<br> <br>
					<button type="submit">저장</button>
				</form>
			</div>
		</div>

	</div>

	<script src="${pageContext.request.contextPath}/JS/에러코드.js"></script>
</body>

</html>
