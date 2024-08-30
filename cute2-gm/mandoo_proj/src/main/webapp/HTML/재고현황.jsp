<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <a href="발주확인.jsp" class="category-link">발주확인</a><br>
                <a href="생산계획.jsp" class="category-link">생산계획</a><br>
                <a href="작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a><br>
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
                <a href="마이페이지.jsp" class="category-link">마이페이지</a><br>
                <a href="계정관리.jsp" class="category-link">계정관리</a><br>
                <a href="사내게시판.jsp" class="category-link">사내게시판</a><br>
            </div>
        </div>
    </div>

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="재고현황.jsp" class="category-link title">재고현황</a></li>
            <ul>
                <li><a href="재고현황(원자재).jsp" class="category-link">원자재</a></li>
                <li><a href="재고현황(부자재).jsp" class="category-link">부자재</a></li>
            </ul>
        </ul>
    </div>

     <!-- 내용 페이지 -->
    <div class="content">
        <div class="rightnow">
            <h1>재고 현황</h1>
        </div>

        <div class="mtab">
            <input type="text" id="search-input" placeholder="검색어 입력">
            <button id="search-button">검색</button>
            <button id="reset-button">초기화</button>
            <button id="open-popup">재고 추가</button>
        </div>

        <form method="post" action="${pageContext.request.contextPath}/InventoryDelete">
            <table border="1" class="inventory_table">
                <thead>
                    <tr>
                        <th>품목 코드</th>
                        <th>품목명</th>
                        <th>재고 수량</th>
                        <th>창고</th>
                        <th>수정</th>
                        <th>삭제</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="inventory" items="${selectInventory}">
                        <tr>
                            <td><c:out value="${inventory.itemCode}"/></td>
                            <td><c:out value="${inventory.inventoryName}"/></td>
                            <td><c:out value="${inventory.inventoryCount}"/></td>
                            <td><c:out value="${inventory.inventoryLocation}"/></td>
                            <td>
                                <button type="button" class="update-button" data-id="${inventory.inventoryId}"
                                    data-code="${inventory.itemCode}" data-name="${inventory.inventoryName}"
                                    data-count="${inventory.inventoryCount}" data-location="${inventory.inventoryLocation}"
                                    data-sort="${inventory.inventorySort}">수정</button>
                            </td>
                            <td>
                                <form method="post" action="${pageContext.request.contextPath}/InventoryDelete" style="display:inline;">
                                    <input type="hidden" name="inventoryId" value="${inventory.inventoryId}">
                                    <input type="submit" value="삭제">
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </form>

        <div class="pagination">
            <!-- 페이지 버튼 추가될 부분 -->
        </div>
    </div>

    <!-- Add Item Popup -->
    <div id="popup-overlay" class="modal">
        <div class="modal-content">
            <span id="close-popup" class="close">&times;</span>
            <h2>재고 추가</h2>
            <form method="post" action="${pageContext.request.contextPath}/InventoryInsert">
                <input type="hidden" name="action" value="add">
                품목id : <input type="text" id="item-id" name="InventoryId" required> <br>
                품목코드 : <input type="text" id="item-code" name="ItemCode" required> <br>
                품목명 : <input type="text" id="item-name" name="InventoryName" required> <br>
                재고수량 : <input type="number" id="item-stock" name="InventoryCount" required> <br>
                창고 : <input type="text" id="item-location" name="InventoryLocation" required> <br>
                종류 : <input type="text" id="item-sort" name="InventorySort" required> <br>
                <input type="submit" id="add-item" value="등록">
            </form>
        </div>
    </div>

    <!-- Update Popup -->
    <div id="update-modal" class="modal">
        <div class="modal-content">
            <span id="close-update-popup" class="close">&times;</span>
            <h2>재고 수정</h2>
            <form id="update-form" method="post" action="${pageContext.request.contextPath}/InventoryUpdate">
                <input type="hidden" name="action" value="update">
                <input type="hidden" id="update-item-id" name="InventoryId">
                <label for="update-item-code">품목코드:</label>
                <input type="text" id="update-item-code" name="ItemCode" required><br>
                <label for="update-item-name">품목명:</label>
                <input type="text" id="update-item-name" name="InventoryName" required><br>
                <label for="update-item-stock">재고수량:</label>
                <input type="number" id="update-item-stock" name="InventoryCount" required><br>
                <label for="update-item-location">창고:</label>
                <input type="text" id="update-item-location" name="InventoryLocation" required><br>
                <label for="update-item-sort">종류:</label>
                <input type="text" id="update-item-sort" name="InventorySort" required><br>
                <input type="submit" value="수정">
            </form>
        </div>
    </div>
   
    
    
    
    
    
    
    
     <script src="${pageContext.request.contextPath}/JS/재고현황.js"></script> 
</body>

</html>
