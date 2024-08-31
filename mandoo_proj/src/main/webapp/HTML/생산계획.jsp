<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="UTF-8">
<title>생산 계획 관리</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/생산계획.css">
<style>
.popup {
	display: none; /* 기본 상태에서 숨김 */
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	justify-content: center;
	align-items: center;
	z-index: 1000;
}

.popup-content {
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
	<div class="category">

        <!-- 메뉴 아이콘 -->
        <div class="menu-icon">
            <img class="menu-icon" src="${pageContext.request.contextPath}/image/menu.png">
        </div>

        <!-- 로고 아이콘 -->
        <div class="category-item">
            <a href="/index.jsp" class="category-link">
                <img class="logo-icon" src="${pageContext.request.contextPath}/image/logo.png">
            </a>
        </div>

        <!-- 카테고리 -->
        <div class="category-item">
            <a href="/품목코드조회.jsp" class="category-link">기준관리</a>
            <div class="_category">
                <a href="/품목코드조회.jsp" class="category-link">품목 코드 조회</a><br>
                <a href="/BOM.jsp" class="category-link">BOM(레시피관리)</a><br>
                <a href="/거래처관리.jsp" class="category-link">거래처 관리</a><br>
                <a href="/에러코드.jsp" class="category-link">에러코드</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="/발주확인.jsp" class="category-link title">생산계획</a>
            <div class="_category">
                <a href="/발주확인.jsp" class="category-link title">발주확인</a><br>
                <a href="/생산계획.jsp" class="category-link">생산계획</a><br>
                <a href="/작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a><br>
                <a href="/작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="/재고현황.jsp" class="category-link">재고관리</a>
            <div class="_category">
                <a href="/재고현황.jsp" class="category-link">재고현황</a>
            </div>
        </div>

        <div class="category-item">
            <a href="/생산현황.jsp" class="category-link">공정관리</a>
            <div class="_category">
                <a href="/생산현황.jsp" class="category-link">생산현황</a>
            </div>
        </div>

        <div class="category-item">
            <a href="/불량률파악보고서.jsp" class="category-link">품질관리</a>
            <div class="_category">
                <a href="/불량률파악보고서.jsp" class="category-link">불량률파악보고서</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="/실적마감.jsp" class="category-link">실적 및 출하</a>
            <div class="_category">
                <a href="/실적마감.jsp" class="category-link">실적마감</a><br>
                <a href="/출하확인.jsp" class="category-link">출하확인</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="/마이페이지.jsp">
                <img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png">
            </a>

            <div class="_category">
                <a href="/마이페이지.jsp" class="category-link">마이페이지</a><br>
                <a href="/계정관리.jsp" class="category-link">계정관리</a><br>
                <a href="/사내게시판.jsp" class="category-link">사내게시판</a><br>
            </div>
        </div>

    </div>

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="/발주확인.jsp" class="category-link title">발주확인</a></li>
            <li><a href="/생산계획.jsp" class="category-link">생산계획</a></li>
            <li><a href="/작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a></li>
            <li><a href="/작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a></li>
        </ul>
    </div>
	<!-- 내용페이지 -->
	<div class="content">
		<!-- 검색 입력 필드 및 버튼 추가 -->
		<div class="search-container">
			<input type="text" id="search-input" placeholder="검색어를 입력하세요...">
			<button id="search-button">검색</button>
			<button id="cancel-button">취소</button>
		</div>

		<!-- 생산계획 버튼들 -->
		<div class="wrap">
			<div class="action-buttons">
				<button id="add-button">등록</button>
				<form id="delete-form" method="post" action="/mandoo/ProductPlan"
					style="display: inline;">
					<input type="hidden" name="action" value="delete">
					<button type="submit" id="delete-button">삭제</button>
				</form>
			</div>
		</div>

		<!-- 계획 리스트 -->
		<form id="plan-list-form" method="post" action="/mandoo/ProductPlan">
			<input type="hidden" name="action" value="delete">
			<div id="data-container">
				<c:forEach var="plan" items="${plan}">
					<div class="flex round">
						<div>
							<input type="checkbox" class="item-checkbox" name="selectedPlans"
								value="${plan.planId}">
						</div>
						<div>
							<a class="mho" href="/html/생산계획상세.html?planId=${plan.planId}">${plan.planId}</a>
						</div>
						<div>${plan.planContents}</div>
						<div>${plan.planDate}</div>
						<div>${plan.planEndDate}</div>
						<div>${plan.planCount}</div>
						<div>${plan.planName}</div>
					</div>
				</c:forEach>
			</div>
		</form>

		<!-- 페이징 -->
		<div class="pagination">
			<c:if test="${currentPage > 1}">
				<a href="/mandoo/ProductPlan?page=${currentPage - 1}">Previous</a>
			</c:if>

			<c:forEach var="i" begin="1" end="${totalPages}">
				<a href="/mandoo/ProductPlan?page=${i}"
					class="${i == currentPage ? 'active' : ''}">${i}</a>
			</c:forEach>

			<c:if test="${currentPage < totalPages}">
				<a href="/mandoo/ProductPlan?page=${currentPage + 1}">Next</a>
			</c:if>
		</div>

		<!-- 성공 및 오류 메시지 표시 -->
		<c:if test="${not empty param.success}">
			<div class="success-message">${param.success}</div>
		</c:if>
		<c:if test="${not empty param.error}">
			<div class="error-message">${param.error}</div>
		</c:if>
	</div>

	<!-- 모달 창 -->
	<div id="popup" class="popup" style="display: none;">
		<div class="popup-content">
			<span id="close-popup" class="close-popup">&times;</span>
			<h2>생산계획 등록</h2>
			<form id="registration-form" method="post" action="/mandoo/ProductPlan">
				<input type="hidden" name="action" value="add"> <label
					for="plan-number">생산계획 ID:</label><br> <input type="text"
					id="plan-number" name="plan-number" placeholder="생산계획 ID" required><br>
				<label for="item-name">생산계획 내용:</label><br> <input type="text"
					id="item-name" name="item-name" placeholder="생산계획 내용" required><br>
				<label for="plan-date">생산계획 날짜:</label><br> <input type="date"
					id="plan-date" name="plan-date" required><br> <label
					for="plan-end-date">종료 날짜:</label><br> <input type="date"
					id="plan-end-date" name="plan-end-date" required><br>
				<label for="production-quantity">생산 수량:</label><br> <input
					type="number" id="production-quantity" name="production-quantity"
					placeholder="생산 수량" required><br> <label for="status">생산계획
					이름:</label><br> <input type="text" id="status" name="status"
					placeholder="생산계획 이름" required><br>
				<br>
				<button type="submit">등록</button>
			</form>
		</div>
	</div>

	<script src="${pageContext.request.contextPath}/JS/생산계획.js"></script>
</body>
</html>
