<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/사내게시판.css">
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
            <a href="BOMemp.jsp" class="category-link">BOM</a>
        </div>

        <div class="category-item">
            <a href="작업지시서(작업자용)emp.jsp" class="category-link">생산계획</a>
        </div>

        <div class="category-item">
            <a href="재고현황emp.jsp" class="category-link">재고관리</a>
        </div>

        <div class="category-item">
            <a href="생산현황emp.jsp" class="category-link">공정관리</a>
        </div>

        <div class="category-item">
            <a href="불량률파악보고서emp.jsp" class="category-link">불량률파악보고서</a>
        </div>
        <div class="category-item">
            <a href="마이페이지emp.jsp"><img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png"></a>
        </div>

    </div>
    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="마이페이지emp.jsp">마이페이지</a></li>
            <li><a href="사내게시판emp.jsp" class="title">사내게시판</a></li>
        </ul>
    </div>

    <div class="content">
        <h1>사내 게시판</h1>
        <div id="id"></div>
        <button id="write-button">글쓰기</button>
        <table id="posts-table">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>카테고리</th>
                    <th>제목</th>
                    <th>날짜</th>
                    <th>글쓴이</th>
                </tr>
            </thead>
            <tbody>
                <!-- 게시글 목록이 여기에 추가됩니다 -->
            </tbody>
        </table>
    </div>
    <script src="${pageContext.request.contextPath}/JS/사내게시판.js"></script>
</body>

</html>
