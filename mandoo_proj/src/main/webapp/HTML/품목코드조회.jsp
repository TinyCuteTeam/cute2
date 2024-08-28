<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/품목코드조회.css">
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
            <a href="${pageContext.request.contextPath}/index.jsp" class="category-link">
                <img class="logo-icon" src="${pageContext.request.contextPath}/image/logo.png">
            </a>
        </div>

        <!-- 카테고리 -->
        <div class="category-item">
            <a href="품목코드조회.jsp" class="category-link title">기준관리</a>
            <div class="_category">
                <a href="품목코드조회.jsp" class="category-link title">품목 코드 조회</a><br>
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
                <a href="마이페이지.jsp" class="category-link">마이페이지</a><br>
                <a href="계정관리.jsp" class="category-link">계정관리</a><br>
                <a href="사내게시판.jsp" class="category-link">사내게시판</a><br>
            </div>
        </div>

    </div>

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="품목코드조회.jsp" class="category-link title">품목 코드 조회</a></li>
            <li><a href="BOM.jsp" class="category-link">BOM(레시피관리)</a></li>
            <li><a href="거래처관리.jsp" class="category-link">거래처 관리</a></li>
            <li><a href="에러코드.jsp" class="category-link">에러코드</a><br></li>
        </ul>
    </div>

    <!-- 내용페이지 -->
    <div class="content">
        <h1>품목코드 표</h1>
        
        <!-- 검색, 추가 div -->
        <div class="srTop">
            <!-- 검색 div -->
            <div class="sr_search">
                <input type="text" id="search-input" placeholder="검색어 입력">
                <button id="search-button">검색</button>
                <button id="reset-button">초기화</button>
            </div>

				<button class="plus addBtn">행 추가</button>
        </div>
        
        <br>
        
        <!-- 품목코드표 테이블 -->
        <table id="table" class="srTable" border="solid black 1px;">
            <tr>
                <th class="srTh">품목코드</th>
                <th class="srTh">품목명</th>
                <th class="srTh">이미지</th>
                <th class="srTh">수정</th>
                <th class="srTh">삭제</th>
                <th class="srTh">비고</th>
            </tr>
            <tr>
                <td>M001</td>
                <td>밀가루</td>
                <td><img class="ingre" src="${pageContext.request.contextPath}/image/flour.jpg"></td>
                <!-- 수정버튼 -->
                <td><img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정/저장"></td>
                <!-- 삭제버튼 -->
                <td><img class="bin delButton" src="${pageContext.request.contextPath}/image/delete.png" title="삭제"></td>
            </tr>
            <tr>
                <td>M002</td>
                <td>물</td>
                <td><img class="ingre" src="${pageContext.request.contextPath}/image/water.jpg"></td>
                <td><img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정/저장"></td>
                <td><img class="bin delButton" src="${pageContext.request.contextPath}/image/delete.png" title="삭제"></td>
            </tr>
            <tr>
                <td>M003</td>
                <td>소금</td>
                <td><img class="ingre" src="${pageContext.request.contextPath}/image/salt.webp"></td>
                <td><img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정/저장"></td>
                <td><img class="bin delButton" src="${pageContext.request.contextPath}/image/delete.png" title="삭제"></td>
            </tr>
            <tr>
                <td>M004</td>
                <td>다진 돼지고기</td>
                <td><img class="ingre" src="${pageContext.request.contextPath}/image/mince.jfif"></td>
                <td><img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정/저장"></td>
                <td><img class="bin delButton" src="${pageContext.request.contextPath}/image/delete.png" title="삭제"></td>
            </tr>
            <tr>
                <td>M005</td>
                <td>다진 양파</td>
                <td><img class="ingre" src="${pageContext.request.contextPath}/image/onion.jpg"></td>
                <td><img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정/저장"></td>
                <td><img class="bin delButton" src="${pageContext.request.contextPath}/image/delete.png" title="삭제"></td>
            </tr>

            <tr>
                <td>M006</td>
                <td>대파</td>
                <td><img class="ingre" src="${pageContext.request.contextPath}/image/greenonion.jpg"></td>
                <td><img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정/저장"></td>
                <td><img class="bin delButton" src="${pageContext.request.contextPath}/image/delete.png" title="삭제"></td>
            </tr>
            <tr>
                <td>M007</td>
                <td>간장</td>
                <td><img class="ingre" src="${pageContext.request.contextPath}/image/soysauce.png"></td>
                <td><img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정/저장"></td>
                <td><img class="bin delButton" src="${pageContext.request.contextPath}/image/delete.png" title="삭제"></td>
            </tr>
            <tr>
                <td>M008</td>
                <td>참기름</td>
                <td><img class="ingre" src="${pageContext.request.contextPath}/image/sesameoil.jpg"></td>
                <td><img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정/저장"></td>
                <td><img class="bin delButton" src="${pageContext.request.contextPath}/image/delete.png" title="삭제"></td>
            </tr>
            <tr>
                <td>M009</td>
                <td>후추</td>
                <td><img class="ingre" src="${pageContext.request.contextPath}/image/pepper.jpg"></td>
                <td><img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정/저장"></td>
                <td><img class="bin delButton" src="${pageContext.request.contextPath}/image/delete.png" title="삭제"></td>
            </tr>
            <tr>
                <td>M010</td>
                <td>마늘</td>
                <td><img class="ingre" src="${pageContext.request.contextPath}/image/garlic.jpg"></td>
                <td><img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정/저장"></td>
                <td><img class="bin delButton" src="${pageContext.request.contextPath}/image/delete.png" title="삭제"></td>
            </tr>
            <tr>
                <td>M015</td>
                <td>김치</td>
                <td><img class="ingre" src="${pageContext.request.contextPath}/image/kimchi.webp"></td>
                <td><img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정/저장"></td>
                <td><img class="bin delButton" src="${pageContext.request.contextPath}/image/delete.png" title="삭제"></td>
            </tr>
        </table>

        <div style="display: none;">
            <form id="srForm">
                <input type="text" class="code" placeholder="품목코드">
                <input type="text" class="name" placeholder="품목명">
                <input type="text" class="image" placeholder="이미지">
            </form>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/JS/품목코드조회.js"></script>
</body>

</html>
