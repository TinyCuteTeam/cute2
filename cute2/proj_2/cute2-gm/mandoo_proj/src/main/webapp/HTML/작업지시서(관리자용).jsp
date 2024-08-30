﻿<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/작업지시서(관리자).css">
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
            <a href="발주확인.jsp" class="category-link title">생산계획</a>
            <div class="_category">
                <a href="발주확인.jsp" class="category-link">발주확인</a> <br>
                <a href="생산계획.jsp" class="category-link">생산계획</a> <br>
                <a href="작업지시서(관리자용).jsp" class="category-link title">작업지시서 작성</a> <br>
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
                <a href="마이페이지.jsp" class="category-link ">마이페이지</a> <br>
                <a href="계정관리.jsp" class="category-link">계정관리</a><br>
                <a href="사내게시판.jsp" class="category-link">사내게시판</a><br>
            </div>

        </div>

    </div>

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="발주확인.jsp" class="category-link">발주확인</a></li>
            <li><a href="생산계획.jsp" class="category-link">생산계획</a></li>
            <li><a href="작업지시서(관리자용).jsp" class="category-link title">작업지시서 작성</a></li>
            <li><a href="작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a></li>
        </ul>
    </div>

    <!-- 내용페이지  -->
    <div class="content">
        <div class="flex mfont">
            <div>작업지시NO.</div>
            <div>작성일자</div>
            <div>납기일자</div>
            <div>품목명</div>
            <div>수량(BOX)</div>
            <div>작성자</div>
            <div>첨부파일</div>
        </div>

        <!-- 각 제목별 추가할 내용을 직접 추가할 수 있도록 -->
        <!-- type=text로 설정 -->
        <!-- 나중에 .value로 값을 받기 위해 -->
        <div class="flex round" style="border: 0;">
            <div>
                <input type="text" id="minfo1">
            </div>
            <div><input type="text" id="minfo3"></div>
            <div><input type="text" id="minfo4"></div>
            <div><input type="text" id="minfo5"></div>
            <div><input type="text" id="minfo6"></div>
            <div><input type="text" id="minfo7"></div>
            <div><img class="add" src="${pageContext.request.contextPath}/image/첨부파일이모티콘.png"></div>
        </div>

        <!-- 직접 추가한 내용이 들어갈 자리 -->
        <div id="msg"></div>

        <!-- 작성한 내용을 들어갈 자리에 등록할 수 있도록 하는 등록버튼 -->
        <mleftt>
            <button class="mbtn11">등록</button>
        </mleftt>

        <!-- 첨부파일(작업지시서)을 눌렀을때 보여질 자리 -->
        <div class="mdiv"></div>

        <script src="${pageContext.request.contextPath}/JS/작업지시서(관리자).js"></script>
    </div>

</body>

</html>
