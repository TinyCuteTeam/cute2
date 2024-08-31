<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/BOM.css">
    
    <style>
        /* 모달 배경 스타일 */
        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
        }

        /* 모달 콘텐츠 스타일 */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 500px;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        /* 모달 닫기 버튼 스타일 */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
            margin-right: -15px;
            margin-top: -15px;
        }

        .close:hover, .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        /* 모달 폼 입력 스타일 */
        #bomForm input[type="text"], #bomForm input[type="number"], #bomForm select {
            width: 100%;
            padding: 8px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        /* 모달 저장 버튼 스타일 */
        #saveButton {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #saveButton:hover {
            background-color: #45a049;
        }
    </style>
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
            <a href="품목코드조회.jsp" class="category-link title">기준관리</a>
            <div class="_category">
                <a href="품목코드조회.jsp" class="category-link">품목 코드 조회</a><br> 
                <a href="BOM.jsp" class="category-link title">BOM(레시피관리)</a><br>
                <a href="거래처관리.jsp" class="category-link">거래처 관리</a><br> 
                <a href="에러코드.jsp" class="category-link">에러코드</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="발주확인.jsp" class="category-link">생산계획</a>
            <div class="_category">
                <a href="발주확인.jsp" class="category-link">발주확인</a> <br> 
                <a href="생산계획.jsp" class="category-link">생산계획</a> <br> 
                <a href="작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a> <br>
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
            <a href="마이페이지.jsp" class="category-link"> 
                <img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png">
            </a>
            <div class="_category">
                <a href="마이페이지.jsp" class="category-link">마이페이지</a> <br> 
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
            <li><a href="에러코드.jsp" class="category-link">에러코드</a><br></li>
        </ul>
    </div>

    <!-- 내용페이지 -->
    <div class="content">
        <div class="srBack">
            <h1>레시피 관리</h1>
            <div class="srTop">
                <!-- 제품 레시피 선택 -->
                <form method="get" action="${pageContext.request.contextPath}/BOM">
                    <select id="recipeSelect" name="bomId" onchange="this.form.submit()">
                        <c:forEach var="bomId" items="${bomIds}">
                            <option value="${bomId}" ${param.bomId == bomId || (empty param.bomId && bomId == 'A0001') ? 'selected' : ''}>${bomId}</option>
                        </c:forEach>
                    </select>
                    <!-- BOM추가 버튼 -->
                    <button type="button" class="mho" id="addNewBomBtn">BOM 추가</button>
                    <!-- 행 추가 버튼 -->
                    <button type="button" class="mho" id="addRowBtn">행 추가</button>
                </form>
            </div>
            <br>
            <!-- 선택한 BOM ID에 대한 상세 정보 표시 테이블 -->
            <form id="bomForm" action="${pageContext.request.contextPath}/BOM" method="post">
                <input type="hidden" name="action" id="actionType">
                <input type="hidden" name="bomId" id="bomId" value="${param.bomId}">
                <table id="table" class="sr_bom" border="solid black 1px;">
                    <tr>
                        <th class="srTh">선택</th>
                        <th class="srTh">품목코드</th>
                        <th class="srTh">품목명</th>
                        <th class="srTh">수량</th>
                        <th class="srTh">단위</th>
                        <th class="srTh">비고</th>
                        <th class="srTh">수정</th>
                        <th class="srTh">삭제</th>
                    </tr>
                    <c:forEach var="bom" items="${bomList}">
                        <tr>
                            <td><input type="checkbox" class="chk"></td>
                            <td>${bom.itemCode}</td>
                            <td>${bom.itemName}</td>
                            <td><input type="number" name="bomCount" value="${bom.bomCount}"></td>
                            <td><input type="text" name="bomUnit" value="${bom.bomUnit}"></td>
                            <td><input type="text" name="bomEtc" value="${bom.bomEtc}"></td>
                            <td>
                                <button type="button" class="editBtn">수정</button>
                            </td>
                            <td>
                                <button type="submit" name="action" value="delete">삭제</button>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <div class="toRight">
                    <button type="submit" id="saveButton">저장</button>
                </div>
            </form>
        </div>
    </div>

    <script>
    document.addEventListener('DOMContentLoaded', function() {
        const bomForm = document.getElementById('bomForm');
        const bomIdField = document.getElementById('bomId');

        // 품목 선택 시 자동으로 필드 채우기
        document.querySelectorAll('select[name="itemCode"]').forEach(select => {
            select.addEventListener('change', function() {
                const selectedOption = this.options[this.selectedIndex];
                const itemName = selectedOption.getAttribute('data-itemname');
                const itemRow = this.closest('tr');

                // 품목명을 해당 행의 입력 필드에 자동으로 채우기
                itemRow.querySelector('input[name="bomUnit"]').value = itemName;
            });
        });

        // BOM 추가 버튼 클릭 시 새로운 BOM ID 생성 및 행 추가
        document.getElementById('addNewBomBtn').addEventListener('click', function() {
            // 새로운 BOM ID 생성 (여기서는 단순히 임의의 ID를 생성하는 예시)
            const newBomId = 'A000' + (Math.floor(Math.random() * 9000) + 1000).toString();
            bomIdField.value = newBomId;

            // 새로운 행 추가
            const table = document.getElementById('table');
            const newRow = table.insertRow();

            newRow.innerHTML = `
                <td><input type="checkbox" class="chk"></td>
                <td>
                    <select name="itemCode">
                        <c:forEach var="item" items="${itemList}">
                            <option value="${item.itemCode}" data-itemname="${item.itemName}">${item.itemName}</option>
                        </c:forEach>
                    </select>
                </td>
                <td><input type="number" name="bomCount"></td>
                <td><input type="text" name="bomUnit"></td>
                <td><input type="text" name="bomEtc"></td>
                <td><button type="button" class="editBtn">수정</button></td>
                <td><button type="button" class="delBtn">삭제</button></td>
            `;

            // 새로 추가된 행에 이벤트 리스너 추가
            newRow.querySelector('.editBtn').addEventListener('click', function() {
                // 수정 버튼 클릭 시 로직 추가
            });

            newRow.querySelector('.delBtn').addEventListener('click', function() {
                newRow.remove();
            });
        });

        // 행 추가 버튼 클릭 시 빈 행 추가
        document.getElementById('addRowBtn').addEventListener('click', function() {
            const table = document.getElementById('table');
            const newRow = table.insertRow();

            newRow.innerHTML = `
                <td><input type="checkbox" class="chk"></td>
                <td>
                    <select name="itemCode">
                        <c:forEach var="item" items="${itemList}">
                            <option value="${item.itemCode}" data-itemname="${item.itemName}">${item.itemName}</option>
                        </c:forEach>
                    </select>
                </td>
                <td><input type="number" name="bomCount"></td>
                <td><input type="text" name="bomUnit"></td>
                <td><input type="text" name="bomEtc"></td>
                <td><button type="button" class="editBtn">수정</button></td>
                <td><button type="button" class="delBtn">삭제</button></td>
            `;

            // 새로 추가된 행에 이벤트 리스너 추가
            newRow.querySelector('.editBtn').addEventListener('click', function() {
                // 수정 버튼 클릭 시 로직 추가
            });

            newRow.querySelector('.delBtn').addEventListener('click', function() {
                newRow.remove();
            });
        });
    });
    </script>
</body>
</html>
