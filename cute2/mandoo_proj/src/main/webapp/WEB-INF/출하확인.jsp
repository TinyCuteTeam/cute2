<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/출하확인.css">
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
                <a href="발주확인.jsp" class="category-link">발주확인</a><br>
                <a href="생산계획.jsp" class="category-link">생산계획</a><br>
                <a href="작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a><br>
                <a href="작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a><br>
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
            <a href="실적마감.jsp" class="category-link title">실적 및 출하</a>
            <div class="_category">
                <a href="실적마감.jsp" class="category-link">실적마감</a><br>
                <a href="출하확인.jsp" class="category-link title">출하확인</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="마이페이지.jsp">
                <img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png">
            </a>

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
            <li><a href="실적마감.jsp" class="category-link">실적마감</a></li>
            <li><a href="출하확인.jsp" class="category-link title">출하확인</a></li>
        </ul>
    </div>

    <div class="content">
        <div id="content-display"></div>

        <div class="main">
            <div class="flex">
                <div>거래처</div>
                <div>발주일<span>▼</span></div>
                <div>출고예정일<span>▼</span></div>
                <div>박스(Box)</div>
                <div>개수(EA)</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="chk">
                <div>
                    <blue>(주)지앤시</blue>
                </div>
                <div>24.07.18</div>
                <div>24.07.26</div>
                <div>3</div>
                <div>120</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="chk">
                <div>
                    <blue>(주)지앤시</blue>
                </div>
                <div>24.07.18</div>
                <div>24.07.26</div>
                <div>3</div>
                <div>120</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="chk">
                <div>
                    <blue>(주)지앤시</blue>
                </div>
                <div>24.07.18</div>
                <div>24.07.26</div>
                <div>3</div>
                <div>120</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="chk">
                <div>
                    <blue>(주)지앤시</blue>
                </div>
                <div>24.07.18</div>
                <div>24.07.26</div>
                <div>3</div>
                <div>120</div>
            </div>
            <button class="btn">출하확인</button>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/JS/출하확인.js"></script>
</body>

</html>
