<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Todo.css">
    
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
            <a href="/index.html" class="category-link"><img class="logo-icon" src="${pageContext.request.contextPath}/image/logo.png"></a>
        </div>

        <!-- 카테고리 -->
        <div class="category-item">
            <a href="/HTML/품목코드조회.html" class="category-link">기준관리</a>
            <div class="_category">
                <a href="/HTML/품목코드조회.html" class="category-link">품목 코드 조회</a><br>
                <a href="/HTML/BOM.html" class="category-link">BOM(레시피관리)</a><br>
                <a href="/HTML/거래처관리.html" class="category-link">거래처 관리</a><br>
                <a href="/HTML/에러코드.html" class="category-link">에러코드</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="/HTML/발주확인.html" class="category-link">생산계획</a>
            <div class="_category">
                <a href="/HTML/발주확인.html" class="category-link">발주확인</a> <br>
                <a href="/HTML/생산계획.html" class="category-link">생산계획</a> <br>
                <a href="/HTML/작업지시서(관리자용).html" class="category-link">작업지시서 작성</a> <br>
                <a href="/HTML/작업지시서(작업자용).html" class="category-link">작업지시서 확인</a> <br>
            </div>
        </div>

        <div class="category-item">
            <a href="/HTML/재고현황.html" class="category-link">재고관리</a>
            <div class="_category">
                <a href="/HTML/재고현황.html" class="category-link">재고현황</a>
            </div>
        </div>

        <div class="category-item">
            <a href="/HTML/생산현황.html" class="category-link">공정관리</a>
            <div class="_category">
                <a href="/HTML/생산현황.html" class="category-link">생산현황</a>
            </div>
        </div>

        <div class="category-item">
            <a href="/HTML/불량률파악보고서.html" class="category-link">품질관리</a>
            <div class="_category">
                <a href="/HTML/불량률파악보고서.html" class="category-link">불량률파악보고서</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="/HTML/실적마감.html" class="category-link">실적 및 출하</a>
            <div class="_category">
                <a href="/HTML/실적마감.html" class="category-link">실적마감</a><br>
                <a href="/HTML/출하확인.html" class="category-link">출하확인</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="마이페이지" class="category-link">
                <a href="/HTML/마이페이지.html"><img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png"></a>
            </a>

            <div class="_category">
                <a href="/HTML/마이페이지.html" class="category-link title">마이페이지</a> <br>
                <a href="/HTML/계정관리.html">계정관리</a><br>
                <a href="/HTML/사내게시판.html">사내게시판</a><br>
                <a href="/HTML/일정관리.html">일정관리</a>
            </div>

        </div>

    </div>

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="/HTML/마이페이지.html" class="category-link">마이페이지</a></li>
            <li><a href="/HTML/계정관리.html" class="category-link">계정관리</a></li>
            <li><a href="/HTML/사내게시판.html" class="category-link">사내게시판</a></li>
            <li><a href="/HTML/일정관리.html" class="category-link title">일정관리</a></li>
        </ul>
    </div>
    <!-- 내용페이지  -->
    <div class="content">
        <h1>캘린더 일정 관리</h1>
        <div>
            <select id="yearSelect"></select>
            <select id="monthSelect"></select>
            <button id="generateCalendarButton">캘린더 생성</button>
        </div>
        <div class="scroll">
            <div id="calendar"></div>
        </div>

        <!-- 일정 목록 및 추가 모달 -->
        <div id="modal" class="modal">
            <div class="modal-content">
                <div>
                    <button id="backButton" style="display: none;"><img src="${pageContext.request.contextPath}/image/back.png"></button>
                    <span class="close" onclick="closeModal()"><img src="${pageContext.request.contextPath}/image/close.png"></span>
                </div>
                <h2 id="modalTitle">TodoList</h2>
                <div id="modalDate"></div>

                <!-- 스크롤 가능한 영역 -->
                <div id="eventListContainer">
                    <div id="eventList"></div> <!-- 일정 목록 표시 -->
                </div>

                <div id="addEventContainer" style="display: none;">
                    <form id="addEventForm" action="/mandoo/todo" method="post">
                        <input type="hidden" id="hiddenDate" name="date" />
                        <input type="text" id="eventTitle" name="title" placeholder="일정제목" required />
                        <textarea id="eventInput" name="contents" placeholder="내용" required></textarea>
                        <button type="submit" id="submitEventButton">추가</button>
                    </form>
                </div>

                <button id="addEventButton" onclick="showAddEventContainer()">
                    <img src="${pageContext.request.contextPath}/image/write.png" class="write1">
                    <img src="${pageContext.request.contextPath}/image/write2.png" style="display: none;" class="write2">
                </button>

                <div id="eventDetail" style="display: none;"> <!-- 상세 정보 표시 영역 -->
                    <div id="detailsTitle" class="edit-event"></div>
                    <button id="editEventButton" class="edit-event" onclick="editEvent()">
                        <img src="${pageContext.request.contextPath}/image/edit.png" class="edit1">
                        <img src="${pageContext.request.contextPath}/image/edit2.png" style="display: none;" class="edit2">
                    </button> <!-- 수정 버튼 -->
                    <div id="detailsText" class="details-text"></div> <!-- 상세 내용 표시 -->
                </div>
            </div>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/JS/Todo.js"></script>
</body>

</html>
