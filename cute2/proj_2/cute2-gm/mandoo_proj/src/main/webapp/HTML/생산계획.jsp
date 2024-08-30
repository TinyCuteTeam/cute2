<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <!-- Link to CSS files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/생산계획.css">
</head>

<body>

    <!-- 메인 -->
    <div class="category">
        <!-- 메뉴 아이콘 -->
        <div class="menu-icon">
            <img class="menu-icon" src="${pageContext.request.contextPath}/image/menu.png">
        </div>

        <!-- 로고 아이콘 -->
        <div class="category-item">
            <a href="indexemp.jsp" class="category-link"><img class="logo-icon" src="${pageContext.request.contextPath}/image/logo.png"></a>
        </div>

        <!-- 카테고리 -->
        <div class="category-item">
            <a href="품목코드조회.jsp" class="category-link">기준관리</a>
            <div class="_category">
                <a href="품목코드조회.jsp" class="category-link">품목 코드 조회</a><br>
                <a href="BOM.jsp" class="category-link">BOM(레시피관리)</a><br>
                <a href="거래처관리.jsp" class="category-link">거래처 관리</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="발주확인.jsp" class="category-link title">생산계획</a>
            <div class="_category">
                <a href="발주확인.jsp" class="category-link">발주확인</a> <br>
                <a href="생산계획.jsp" class="category-link title">생산계획</a> <br>
                <a href="작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a> <br>
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
                <a href="실적마감.jsp" class="category-link">실적마감</a><br>
                <a href="출하확인.jsp" class="category-link">출하확인</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="마이페이지.jsp"><img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png"></a>
            <div class="_category">
                <a href="마이페이지.jsp" class="category-link">마이페이지</a> <br>
                <a href="계정관리.jsp" class="category-link">계정관리</a><br>
                <a href="사내게시판.jsp" class="category-link">사내게시판</a><br>
            </div>
        </div>
    </div>

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="발주확인.jsp" class="category-link">발주확인</a></li>
            <li><a href="생산계획.jsp" class="category-link title">생산계획</a></li>
            <li><a href="작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a></li>
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
                <button id="delete-button">삭제</button>
            </div>
        </div>

        <!-- 계획 리스트 -->
        <div id="data-container">
            <c:forEach var="plan" items="${plan}">
                <div class="flex round">
                    <div><input type="checkbox" class="item-checkbox"></div>
                    <div><a class="mho" href="/html/생산계획상세.html">${plan.planid}</a></div>
                    <div>${plan.plancontents}</div>
                    <div>${plan.plandate}</div>
                    <div>${plan.plancount}</div>
                    <div>${plan.planname}</div>
                </div>
            </c:forEach>
        </div>

        <!-- 팝업창 -->
        <div id="popup" class="popup">
            <div class="popup-content">
                <span id="close-popup" class="close-popup">&times;</span>
                <h2>생산계획 등록</h2>
                <form id="registration-form">
                    <input type="text" id="plan-number" placeholder="생산계획 ID"><br>
                    <input type="text" id="item-name" placeholder="생산계획 내용"><br>
                    <input type="date" id="plan-date" placeholder="생산계획 날짜"><br>
                    <input type="number" id="production-quantity" placeholder="생산 수량"><br>
                    <input type="text" id="status" placeholder="생산계획 이름"><br>
                    <input type="submit" value="등록">
                </form>
            </div>
        </div>
    </div>

    <!-- Link to JavaScript file -->
    <script src="${pageContext.request.contextPath}/JS/생산계획.js"></script>

</body>

</html>
