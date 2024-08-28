<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/사내게시판상세페이지.css">
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
        <div class="post-details">
            <h2 id="post-title"></h2>
            <table>
                <tr class="menu">
                    <td><strong>카테고리</strong></td>
                    <td><strong>작성자</strong></td>
                    <td><strong>날짜</strong></td>
                </tr>
                <tr>
                    <td><span id="post-category"></span></td>
                    <td><span id="post-author"></span></td>
                    <td><span id="post-date"></span></td>
                </tr>
            </table>

            <div id="post-content"></div>
            <button id="back-button">목록으로 돌아가기</button>
        </div>

        <div class="comment-section">
            <h3>댓글</h3>
            <form id="comment-form">
                <div id="comment-id"></div>
                <textarea id="comment-content" placeholder="댓글을 입력하세요." required></textarea>
                <button type="submit">댓글 추가</button>
            </form>
            <div id="comment-list"></div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/JS/사내게시판상세페이지.js"></script>
</body>

</html>
