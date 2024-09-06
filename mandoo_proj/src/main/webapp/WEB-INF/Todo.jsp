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
	href="${pageContext.request.contextPath}/CSS/Todo.css">
<script>
	// 연도와 월 셀렉트박스를 채우는 함수
	function populateYearAndMonth() {
		var yearSelect = document.getElementById("yearSelect");
		var monthSelect = document.getElementById("monthSelect");

		// 현재 연도 가져오기
		var currentYear = new Date().getFullYear();
		// 지난 10년 동안의 연도 선택지 채우기
		for (var i = currentYear - 10; i <= currentYear + 10; i++) {
			var option = document.createElement("option");
			option.value = i;
			option.text = i + "년";
			yearSelect.appendChild(option);
		}

		// 1월부터 12월까지 선택지 채우기
		for (var j = 1; j <= 12; j++) {
			var option = document.createElement("option");
			option.value = j < 10 ? '0' + j : j; // 2자리 수 형식
			option.text = j + "월";
			monthSelect.appendChild(option);
		}
	}

	// 페이지가 로드될 때 셀렉트박스 채우기
	window.onload = function() {
		populateYearAndMonth();
	};
</script>
</head>
<body>

	<jsp:include page="/WEB-INF/header.jsp" />
	<jsp:include page="/WEB-INF/sidebar_마이페이지.jsp" />

	<div class="content">
		<h1>캘린더 일정 관리</h1>
		<div>
			<select id="yearSelect"></select> <select id="monthSelect"></select>
			<button id="generateCalendarButton">캘린더 생성</button>
		</div>
		<div class="scroll">
			<div id="calendar"></div>
		</div>

		<div id="modal" class="modal">
			<div class="modal-content">
				<div>
					<button id="backButton" style="display: none;">
						<img src="${pageContext.request.contextPath}/image/back.png">
					</button>
					<span class="close" onclick="closeModal()"> <img
						src="${pageContext.request.contextPath}/image/close.png">
					</span>
				</div>
				<h2 id="modalTitle">TodoList</h2>
				<div id="modalDate"></div>

				<div id="eventListContainer">
					<div id="eventList"></div>
				</div>

				<div id="addEventContainer" style="display: none;">
					<form id="addEventForm" action="/mandoo/todo" method="post">
						<input type="hidden" id="hiddenDate" name="date" /> <input
							type="text" id="eventTitle" name="title" placeholder="일정제목"
							required />
						<textarea id="eventInput" name="contents" placeholder="내용"
							required></textarea>
						<button type="submit" id="submitEventButton">추가</button>
					</form>
				</div>

				<button id="addEventButton" onclick="showAddEventContainer()">
					<img src="${pageContext.request.contextPath}/image/write.png"
						class="write1"> <img
						src="${pageContext.request.contextPath}/image/write2.png"
						style="display: none;" class="write2">
				</button>
			</div>
		</div>
	</div>

	<script src="${pageContext.request.contextPath}/JS/Todo.js"></script>
</body>
</html>
