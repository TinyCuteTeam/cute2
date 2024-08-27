<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/생산계획.css">
    <style>
        /* 추가적인 스타일링 */
        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .popup-content {
            background: white;
            padding: 20px;
            border-radius: 8px;
            width: 400px;
        }

        .close-popup {
            cursor: pointer;
            float: right;
            font-size: 1.5em;
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
            <a href="indexemp.jsp" class="category-link"><img class="logo-icon" src="${pageContext.request.contextPath}/image/logo.png"></a>
        </div>

        <!-- 카테고리 -->
        <div class="category-item">
            <a href="품목코드조회.jsp" class="category-link">기준관리</a>
            <div class="_category">
                <a href="품목코드조회.jsp" class="category-link">품목 코드 조회</a><br>
                <a href="BOM.jsp" class="category-link">BOM(레시피관리)</a><br>
                <a href="거래처관리.jsp" class="category-link">거래처 관리</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="발주확인.jsp" class="category-link title">생산계획</a>
            <div class="_category">
                <a href="발주확인.jsp" class="category-link">발주확인</a> <br>
                <a href="생산계획.jsp" class="category-link title">생산계획</a> <br>
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
            <a href="마이페이지.jsp"><img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png"></a>

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
            <li><a href="발주확인.jsp" class="category-link">발주확인</a></li>
            <li><a href="생산계획.jsp" class="category-link title">생산계획</a></li>
            <li><a href="작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a></li>
            <li><a href="작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a></li>
        </ul>
    </div>

    <!-- 내용페이지 -->
    <div class="content">
        <!-- 검색 입력 필드 및 버튼 추가 -->
        <div class="search-container">
            <input type="text" id="search-input" placeholder="검색어를 입력하세요...">
            <button id="search-button">검색</button>
            <button id="cancel-button">취소</button>
        </div>

        <!-- 생산계획 버튼들 -->
        <div class="wrap">
            <div class="action-buttons">
                <button id="add-button">등록</button>
                <button id="delete-button">삭제</button>
            </div>

            <!-- 데이터 테이블 -->
            <div class="main">
                <!-- 각 내용별 제목 -->
                <div class="flex mfont">
                    <div><input type="checkbox" id="select-all"> </div>
                    <div>계획번호</div>
                    <div>품목명</div>
                    <div>계획일자</div>
                    <div>생산량</div>
                    <div>진행상태</div>
                </div>

                <!-- 데이터 항목이 동적으로 추가될 부분 -->
                <div id="data-container" class="data-container">
                    <!-- 기존 데이터 항목 -->
                    <div class="flex round">
                        <div><input type="checkbox" class="item-checkbox"></div>
                        <div>2024-001</div>
                        <div>비비고/왕교자</div>
                        <div>2024.07.01</div>
                        <div>2000 BOX</div>
                        <div>진행중</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 팝업창 -->
    <div id="popup" class="popup">
        <div class="popup-content">
            <span id="close-popup" class="close-popup">&times;</span>
            <h2>생산계획 등록</h2>
            <form id="registration-form">
                <label for="plan-number">계획번호:</label>
                <input type="text" id="plan-number" name="plan-number" required><br><br>
                <label for="item-name">품목명:</label>
                <input type="text" id="item-name" name="item-name" required><br><br>
                <label for="plan-date">계획일자:</label>
                <input type="date" id="plan-date" name="plan-date" required><br><br>
                <label for="production-quantity">생산량:</label>
                <input type="text" id="production-quantity" name="production-quantity" required><br><br>
                <label for="status">진행상태:</label>
                <select id="status" name="status" required>
                    <option value="진행중">진행중</option>
                    <option value="예정">예정</option>
                    <option value="완료">완료</option>
                </select><br><br>
                <button type="submit">등록</button>
            </form>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/JS/생산계획.js"></script>

</body>

</html>
