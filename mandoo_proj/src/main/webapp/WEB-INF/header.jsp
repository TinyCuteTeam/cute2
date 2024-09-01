<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="category">
    <!-- 메뉴 아이콘 -->
    <div class="menu-icon">
        <img class="menu-icon" src="${pageContext.request.contextPath}/image/menu.png">
    </div>

    <!-- 로고 아이콘 -->
    <div class="category-item">
        <a href="${pageContext.request.contextPath}/index.jsp" class="category-link">
            <img class="logo-icon" src="${pageContext.request.contextPath}/image/logo.png">
        </a>
    </div>

    <!-- 카테고리 -->
    <div class="category-item">
        <a href="/mandoo/Item" class="category-link">기준관리</a>
        <div class="_category">
            <a href="/mandoo/Item" class="category-link">품목 코드 조회</a><br>
            <a href="/mandoo/BOM" class="category-link">BOM(레시피관리)</a><br>
            <a href="/mandoo/client" class="category-link">거래처 관리</a><br>
            <a href="/mandoo/Error" class="category-link">에러코드</a><br>
        </div>
    </div>

    <div class="category-item">
        <a href="/mandoo/OrderInfo" class="category-link">생산계획</a>
        <div class="_category">
            <a href="/mandoo/OrderInfo" class="category-link">발주확인</a><br>
            <a href="/mandoo/ProductPlan" class="category-link">생산계획</a><br>
            <a href="/mandoo/Work" class="category-link">작업지시서 확인</a><br>
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
        <a href="/mandoo/mypage"> 
            <img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png">
        </a>

        <div class="_category">
            <a href="/mandoo/mypage" class="category-link">마이페이지</a><br>
            <a href="/mandoo/account" class="category-link">계정관리</a><br>
            <a href="사내게시판.jsp" class="category-link">사내게시판</a><br>
        </div>
    </div>
</div>