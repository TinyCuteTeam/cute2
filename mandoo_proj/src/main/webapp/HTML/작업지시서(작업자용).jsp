<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/작업지시서(작업자).css">
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
	background-color: rgba(0, 0, 0, 0.4);
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

/* 추가적인 스타일 */
.action-buttons {
	margin-bottom: 20px;
}

.flex {
	display: flex;
	justify-content: space-between;
}

.round {
	border-radius: 5px;
	padding: 10px;
	margin-bottom: 10px;
}

.mho {
	color: blue;
	text-decoration: underline;
	cursor: pointer;
}
</style>

</head>

<body>
	<div class="category">
		<!-- 메뉴 아이콘 -->
		<div class="menu-icon">
			<img class="menu-icon"
				src="${pageContext.request.contextPath}/image/menu.png">
		</div>

		<!-- 로고 아이콘 -->
		<div class="category-item">
			<a href="index.jsp" class="category-link"><img class="logo-icon"
				src="${pageContext.request.contextPath}/image/logo.png"></a>
		</div>

		<!-- 카테고리 -->
		<div class="category-item">
			<a href="품목코드조회.jsp" class="category-link">기준관리</a>
			<div class="_category">
				<a href="품목코드조회.jsp" class="category-link">품목 코드 조회</a><br> <a
					href="BOM.jsp" class="category-link">BOM(레시피관리)</a><br> <a
					href="거래처관리.jsp" class="category-link">거래처 관리</a><br> <a
					href="에러코드.jsp" class="category-link">에러코드</a><br>
			</div>
		</div>
		<div class="category-item">
			<a href="발주확인.jsp" class="category-link title">생산계획</a>
			<div class="_category">
				<a href="발주확인.jsp" class="category-link">발주확인</a> <br> <a
					href="생산계획.jsp" class="category-link">생산계획</a> <br> <a
					href="작업지시서(작업자용).jsp" class="category-link title">작업지시서 확인</a> <br>
			</div>
		</div>

		<div class="category-item">
			<a href="재고현황.jsp" class="category-link">재고관리</a>
			<div class="_category">
				<a href="재고현황.jsp" class="category-link">재고현황</a>
			</div>
		</div>

		<div class="category-item">
			<a href="생산현황.jsp" class="category-link">공정관리</a>
			<div class="_category">
				<a href="생산현황.jsp" class="category-link">생산현황</a>
			</div>
		</div>

		<div class="category-item">
			<a href="불량률파악보고서.jsp" class="category-link">품질관리</a>
			<div class="_category">
				<a href="불량률파악보고서.jsp" class="category-link">불량률파악보고서</a><br>
			</div>
		</div>

		<div class="category-item">
			<a href="실적마감.jsp" class="category-link">실적 및 출하</a>
			<div class="_category">
				<a href="실적마감.jsp" class="category-link">실적마감</a><br> <a
					href="출하확인.jsp" class="category-link">출하확인</a><br>
			</div>
		</div>

		<div class="category-item">
			<a href="마이페이지.jsp"><img class="mypage-icon"
				src="${pageContext.request.contextPath}/image/mypage.png"></a>
			<div class="_category">
				<a href="마이페이지.jsp" class="category-link ">마이페이지</a> <br> <a
					href="계정관리.jsp" class="category-link">계정관리</a><br> <a
					href="사내게시판.jsp" class="category-link">사내게시판</a><br>
			</div>
		</div>
	</div>

	<div class="sidebar">
		<ul id="sidebar-content">
			<li><a href="발주확인.jsp" class="category-link">발주확인</a></li>
			<li><a href="생산계획.jsp" class="category-link">생산계획</a></li>
			<li><a href="작업지시서(작업자용).jsp" class="category-link title">작업지시서
					확인</a></li>
		</ul>
	</div>

	<div class="content">
		<div class="wrap">
			<div class="action-buttons">
				<button id="add-button">등록</button>
				<button id="delete-button">삭제</button>
			</div>
		</div>

		<div class="main">
			<div class="flex mfont">
				<div>
					<strong>작업지시NO.</strong>
				</div>
				<div>
					<strong>작성일자</strong>
				</div>
				<div>
					<strong>납기일자</strong>
				</div>
				<div>
					<strong>품목명</strong>
				</div>
				<div>
					<strong>수량</strong>
				</div>
				<div>
					<strong>작성자</strong>
				</div>
				<div>
					<strong>진행상태</strong>
				</div>
			</div>

			<div class="m_llist">
				<c:forEach var="work" items="${works}">
					<div class="flex round page-item">
						<div>
							<a target="_blank" class="mho" href="/html/작업지시서(새창).html">${work.workId}</a>
						</div>
						<div>${work.workWrite}</div>
						<div>${work.workEndate}</div>
						<div class="over" title="${work.itemCode}">${work.itemCode}</div>
						<div>${work.workName}</div>
						<div>${work.userId}</div>
						<div>
							<color class="green">${work.workDo}</color>
						</div>
					</div>
				</c:forEach>
			</div>

			<!-- 페이지 네비게이션 -->
			<div class="mnum">
				<c:if test="${currentPage > 1}">
					<a href="/mandoo/Work?page=${currentPage - 1}">이전</a>
				</c:if>

				<c:forEach var="i" begin="1" end="${totalPages}">
					<a href="/mandoo/Work?page=${i}"
						class="${i == currentPage ? 'active' : ''}">${i}</a>
				</c:forEach>

				<c:if test="${currentPage < totalPages}">
					<a href="/mandoo/Work?page=${currentPage + 1}">다음</a>
				</c:if>
			</div>

			<div class="search-container">
				<input type="text" id="search-input" placeholder="검색어를 입력하세요...">
				<button id="search-button">검색</button>
				<button id="reset-button">취소</button>
			</div>
		</div>

		<!-- 모달창 -->
		<div id="popup" class="popup">
			<div class="popup-content">
				<span id="close-popup" class="close-popup">&times;</span>
				<h2>작업지시서 등록</h2>
				<form id="registration-form" method="post" action="/mandoo/Work">
					<input type="hidden" name="action" value="add"> <label
						for="workId">작업지시 NO:</label><br> <input type="text"
						id="workId" name="workId" placeholder="작업지시 NO" required><br>
					<label for="userId">작성자:</label><br> <input type="text"
						id="userId" name="userId" placeholder="작성자" required><br>
					<label for="planId">플랜 ID:</label><br> <input type="text"
						id="planId" name="planId" placeholder="플랜 ID" required><br>
					<label for="itemCode">품목 코드:</label><br> <input type="text"
						id="itemCode" name="itemCode" placeholder="품목 코드" required><br>
					<label for="workWrite">작성일자:</label><br> <input type="date"
						id="workWrite" name="workWrite" required><br> <label
						for="workEndate">납기일자:</label><br> <input type="date"
						id="workEndate" name="workEndate" required><br> <label
						for="workName">품목명:</label><br> <input type="text"
						id="workName" name="workName" placeholder="품목명" required><br>
					<label for="workDo">진행상태:</label><br> <input type="text"
						id="workDo" name="workDo" placeholder="진행상태" required><br>
					<br>
					<button type="submit">등록</button>
				</form>
			</div>
		</div>
		<script src="${pageContext.request.contextPath}/JS/작업지시서(작업자용).js"></script>
	</div>
</body>

</html>
