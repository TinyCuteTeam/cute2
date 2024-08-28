<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/BOM관리_제품추가.css">
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
            <a href="품목코드조회.jsp" class="category-link title">기준관리</a>
            <div class="_category">
                <a href="품목코드조회.jsp" class="category-link">품목 코드 조회</a><br>
                <a href="BOM.jsp" class="category-link title">BOM(레시피관리)</a><br>
                <a href="거래처관리.jsp" class="category-link">거래처 관리</a><br>
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
            <a href="마이페이지.jsp" class="category-link">
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
            <li><a href="품목코드조회.jsp" class="category-link">품목 코드 조회</a></li>
            <li><a href="BOM.jsp" class="category-link title">BOM(레시피관리)</a></li>
            <li><a href="거래처관리.jsp" class="category-link">거래처 관리</a></li>
            <li><a href="에러코드.jsp" class="category-link">에러코드</a></li><br>
        </ul>
    </div>

    <!-- 내용페이지  -->
    <div class="content">
        <div class="srBack">
            <h1>레시피 관리 - 제품추가</h1>
        </div>

        <!--sr_mandoo: 레시피선택, 1개기준, 플러스버튼 -->
        <div class="sr_mandoo">
         <button class="back btnStyle">뒤로가기</button>
             <button class="save btnStyle">저장</button>
        </div>

        <br>
        <!-- 제품정보 작성 테이블 -->
        <table class="productInfo infoTable" border="solid black 1px;">
            <tr>
                <th class="srTh">제품코드</th>
                <th class="srTh">제품명</th>
            </tr>
            <!-- 여기가 내용 작성하는 곳이 될 예정 -->
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
        </table>
      
       <br>
        <!-- 재료정보 작성 테이블 -->
        <table class="ingreInfo infoTable" border="solid black 1px;">
            <tr>
                <th class="srTh">품목코드</th>
                <th class="srTh">품목명</th>
                <th class="srTh">수량</th>
                <th class="srTh">단위</th>
                <th class="srTh">비고</th>
                <th class="srTh">작업</th>
            </tr>
            <!-- 여기가 내용 작성하는 곳이 될 예정 -->
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><img onclick="deleteRow(this)" src="${pageContext.request.contextPath}/image/delete.png" class="imgstyle" title="삭제"></td>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><img onclick="deleteRow(this)" src="${pageContext.request.contextPath}/image/delete.png" class="imgstyle" title="삭제"></td>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><img onclick="deleteRow(this)" src="${pageContext.request.contextPath}/image/delete.png" class="imgstyle" title="삭제"></td>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><img onclick="deleteRow(this)" src="${pageContext.request.contextPath}/image/delete.png" class="imgstyle" title="삭제"></td>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><img onclick="deleteRow(this)" src="${pageContext.request.contextPath}/image/delete.png" class="imgstyle" title="삭제"></td>
            </tr>
        </table>
		<br>
		
		 <!-- 행 추가 버튼 -->
          <div class="toRight">
            <button class="ingrebutt mho btnStyle" onclick="addIngredient()">행 추가</button>
        </div>
        
        <div style="display: none;">
            <form id="srForm">
                <input type="text" class="code" placeholder="품목코드">
                <input type="text" class="name" placeholder="품목명">
                <input type="text" class="amount" placeholder="수량">
                <input type="text" class="unit" placeholder="단위">
                <input type="text" class="etc" placeholder="비고">
            </form>
        </div>

    </div>

    <script src="${pageContext.request.contextPath}/JS/BOM관리_제품추가.js"></script>
</body>

</html>
