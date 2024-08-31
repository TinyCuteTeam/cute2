<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <a href="index.jsp" class="category-link"> <img class="logo-icon" src="${pageContext.request.contextPath}/image/logo.png">
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
            <li><a href="에러코드.jsp" class="category-link">에러코드</a></li>
            <br>
        </ul>
    </div>

    <!-- 내용페이지  -->
    <div class="content">
        <div class="srBack">
            <h1>BOM 관리 - BOM 추가</h1>
        </div>

        <!-- 뒤로가기 버튼 -->
        <div class="toLeft">
            <a href="/mandoo/BOM" class="btnStyle">뒤로가기</a>
        </div>

        <!-- BOM 정보 입력 -->
        <form action="/mandoo/BOM" method="post">
            <table class="productInfo infoTable" border="solid black 1px;">
                <tr>
                    <th class="srTh">BOM ID</th>
                    <th class="srTh">품목명</th>
                    <th class="srTh">수량</th>
                    <th class="srTh">단위</th>
                    <th class="srTh">비고</th>
                </tr>
                <c:forEach var="i" begin="0" end="2">
                    <tr>
                        <td><input type="text" name="bomId" value="${nextBomId}" readonly></td>
                        <td>
                            <select name="itemCode">
                                <c:forEach var="item" items="${itemList}">
                                    <option value="${item.itemCode}">${item.itemName}</option>
                                </c:forEach>
                            </select>
                        </td>
                        <td><input type="number" name="bomCount"></td>
                        <td><input type="text" name="bomUnit"></td>
                        <td><input type="text" name="bomEtc"></td>
                    </tr>
                </c:forEach>
            </table>

            <!-- 행 추가 버튼 -->
            <div class="toRight">
                <button type="button" class="btnStyle" id="addRowBtn">행 추가</button>
            </div>

            <!-- 저장 버튼 -->
            <div class="toRight">
                <button type="submit" class="btnStyle">저장</button>
            </div>
        </form>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const addRowBtn = document.getElementById('addRowBtn');
            const table = document.querySelector('.infoTable');
            
            addRowBtn.addEventListener('click', function() {
                const newRow = document.createElement('tr');
                
                newRow.innerHTML = `
                    <td><input type="text" name="bomId" value="${nextBomId}" readonly></td>
                    <td>
                        <select name="itemCode">
                            <c:forEach var="item" items="${itemList}">
                                <option value="${item.itemCode}">${item.itemName}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td><input type="number" name="bomCount"></td>
                    <td><input type="text" name="bomUnit"></td>
                    <td><input type="text" name="bomEtc"></td>
                `;
                
                table.appendChild(newRow);
            });
        });
    </script>

</body>

</html>
