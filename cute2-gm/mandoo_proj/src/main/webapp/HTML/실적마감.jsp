<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/실적마감.css">
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
            <a href="index.jsp" class="category-link"><img class="logo-icon" src="${pageContext.request.contextPath}/image/logo.png"></a>
        </div>

        <!-- 카테고리 -->
        <div class="category-item">
            <a href="품목코드조회.jsp" class="category-link">기준관리</a>
            <div class="_category">
                <a href="품목코드조회.jsp" class="category-link">품목 코드 조회</a><br>
                <a href="BOM.jsp" class="category-link">BOM(레시피관리)</a><br>
                <a href="거래처관리.jsp" class="category-link">거래처 관리</a><br>
                <a href="에러코드.jsp" class="category-link">에러코드</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="발주확인.jsp" class="category-link">생산계획</a>
            <div class="_category">
                <a href="발주확인.jsp" class="category-link">발주확인</a><br>
                <a href="작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a><br>
                <a href="작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a><br>
                <a href="생산계획.jsp" class="category-link">생산계획</a><br>
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
                <a href="불량률파악보고서.jsp" class="category-link">불량품 파악 보고서</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="실적마감.jsp" class="category-link title">실적 및 출하</a>
            <div class="_category">
                <a href="실적마감.jsp" class="category-link title">실적마감</a><br>
                <a href="출하확인.jsp" class="category-link">출하확인</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="마이페이지.jsp"><img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png"></a>
            <div class="_category">
                <a href="마이페이지.jsp" class="category-link">마이페이지</a><br>
                <a href="계정관리.jsp" class="category-link">계정관리</a><br>
                <a href="사내게시판.jsp" class="category-link">사내게시판</a><br>
            </div>
        </div>
    </div>

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="실적마감.jsp" class="category-link title">실적마감</a></li>
            <li><a href="출하확인.jsp" class="category-link">출하확인</a></li>
        </ul>
    </div>

    <!-- 내용페이지 -->
    <div class="content">
        <h1 id="head_title">생산 실적 테이블</h1>
    <table id="main-table">
        <thead>
            <tr>
                <th class="header-cell date-column">날짜</th>
                <th class="header-cell product-column">제품</th>
                <th class="header-cell quantity-column">생산량</th>
                <th class="header-cell note-column">비고</th>
                <th class="header-cell percentage-column">증감률</th>
            </tr>
        </thead>
        <tbody>
            <tr class="highlight-row">
                <td class="data-cell date-column">2024-08-01</td>
                <td class="data-cell product-column">제품 X</td>
                <td class="data-cell quantity-column">1800</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column"> ▼ -1</td>
            </tr>
            <tr>
                <td class="data-cell date-column">2024-08-02</td>
                <td class="data-cell product-column">제품 Y</td>
                <td class="data-cell quantity-column">2200</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column"> ▲ 10%</td>
            </tr>
            <tr class="highlight-row">
                <td class="data-cell date-column">2024-08-03</td>
                <td class="data-cell product-column">제품 Z</td>
                <td class="data-cell quantity-column">1300</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column">증감률</td>
            </tr>
            <tr>
                <td class="data-cell date-column">2024-08-04</td>
                <td class="data-cell product-column">제품 W</td>
                <td class="data-cell quantity-column">1600</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column">증감률</td>
            </tr>
            <tr class="highlight-row">
                <td class="data-cell date-column">2024-08-05</td>
                <td class="data-cell product-column">제품 X</td>
                <td class="data-cell quantity-column">2000</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column">증감률</td>
            </tr>
            <tr>
                <td class="data-cell date-column">2024-08-06</td>
                <td class="data-cell product-column">제품 Y</td>
                <td class="data-cell quantity-column">1700</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column">증감률</td>
            </tr>
            <tr class="highlight-row">
                <td class="data-cell date-column">2024-08-07</td>
                <td class="data-cell product-column">제품 Z</td>
                <td class="data-cell quantity-column">1400</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column">증감률</td>
            </tr>
            <!-- 추가 데이터 5개 -->
            <tr>
                <td class="data-cell date-column">2024-08-08</td>
                <td class="data-cell product-column">제품 A</td>
                <td class="data-cell quantity-column">1550</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column">증감률</td>
            </tr>
            <tr class="highlight-row">
                <td class="data-cell date-column">2024-08-09</td>
                <td class="data-cell product-column">제품 B</td>
                <td class="data-cell quantity-column">1650</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column">증감률</td>
            </tr>
            <tr>
                <td class="data-cell date-column">2024-08-10</td>
                <td class="data-cell product-column">제품 C</td>
                <td class="data-cell quantity-column">1750</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column">증감률</td>
            </tr>
            <tr class="highlight-row">
                <td class="data-cell date-column">2024-08-11</td>
                <td class="data-cell product-column">제품 D</td>
                <td class="data-cell quantity-column">1850</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column">증감률</td>
            </tr>
            <tr>
                <td class="data-cell date-column">2024-08-12</td>
                <td class="data-cell product-column">제품 E</td>
                <td class="data-cell quantity-column">1950</td>
                <td class="data-cell note-column">정상</td>
                <td class="header-cell percentage-column">증감률</td>
            </tr>
        </tbody>
    </table>

    <div id="chart-container">
        <canvas id="myChart"></canvas>
    </div>

    </div>

    

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
    <script src="${pageContext.request.contextPath}/JS/실적마감.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</body>

</html>