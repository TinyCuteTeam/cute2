<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/재고현황.css">
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
            <a href="index.jsp" class="category-link">
                <img class="logo-icon" src="${pageContext.request.contextPath}/image/logo.png">
            </a>
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
                <a href="발주확인.jsp" class="category-link">발주확인</a> <br>
                <a href="생산계획.jsp" class="category-link">생산계획</a> <br>
                <a href="작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a> <br>
                <a href="작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a> <br>
            </div>
        </div>

        <div class="category-item">
            <a href="재고현황.jsp" class="category-link title">재고관리</a>
            <div class="_category">
                <a href="재고현황.jsp" class="category-link title">재고현황</a>
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
            <a href="마이페이지.jsp">
                <img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png">
            </a>
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
            <li><a href="재고현황.jsp" class="category-link">재고현황</a></li>
            <ul>
                <li><a href="재고현황(원자재).jsp" class="category-link title">원자재</a></li>
                <li><a href="재고현황(부자재).jsp" class="category-link">부자재</a></li>
            </ul>
        </ul>
    </div>

    <!-- 내용페이지 -->
    <div class="content">
        <div class="rightnow"><h1>재고 현황</h1></div>

        <div class="mtab" style="text-align: center;">
            <input type="text" id="item-code" placeholder="품목코드">
            <input type="text" id="item-name" placeholder="품목명">
            <input type="text" id="item-image" placeholder="이미지코드">
            <input type="number" id="item-stock" placeholder="재고수량">
            <input type="number" id="item-available" placeholder="가용수량">
            <button id="add-item">등록</button>
        </div>

        <table class="table">
            <thead>
                <tr>
                    <th class="mth">품목코드</th>
                    <th class="mth">품목명</th>
                    <th class="mth">이미지</th>
                    <th class="mth">재고수량</th>
                    <th class="mth">가용수량</th>
                    <th class="mth">재고위치</th>
                    <th class="mth">수정</th>
                    <th class="mth">삭제</th>
                </tr>
            </thead>
            <tbody id="product-table-body">
                <!-- JavaScript로 데이터가 추가될 부분 -->
            </tbody>
        </table>

        <div class="pagination">
            <!-- 페이지 버튼이 여기에 추가될 것입니다 -->
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/JS/재고현황(원자재).js"></script>
</body>

</html>
