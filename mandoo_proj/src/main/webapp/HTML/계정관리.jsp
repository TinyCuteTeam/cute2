<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/계정관리.css">
    <style>
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
                <a href="계정관리.jsp" class="category-link title">계정관리</a><br>
                <a href="사내게시판.jsp" class="category-link">사내게시판</a><br>
            </div>

        </div>

    </div>

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="마이페이지.jsp" class="category-link">마이페이지</a></li>
            <li><a href="계정관리.jsp" class="category-link title">계정관리</a></li>
            <li><a href="사내게시판.jsp" class="category-link">사내게시판</a></li>
        </ul>
    </div>

    <!-- 내용페이지 -->
    <div class="content">
        <div id="content-display">
            <div class="main">
                <div class="flex header">
                    <div></div>
                    <div>사번</div>
                    <div>이름</div>
                    <div>연락처</div>
                    <div>주소</div>
                    <div>이메일</div>
                    <div>직책</div>
                </div>

                <div class="flex round">
                    <div><input type="checkbox" class="chk"></div>
                    <div>20240001</div>
                    <div>박경민</div>
                    <div>010-1212-3434</div>
                    <div>충청남도 천안시 동남구 청당동 134</div>
                    <div>asdf1324@gmail.com</div>
                    <div>대리</div>
                </div>

                <div class="flex round">
                    <div><input type="checkbox" class="chk"></div>
                    <div>20240002</div>
                    <div>이정은</div>
                    <div>010-1342-3434</div>
                    <div>충청남도 천안시 동남구 대흥동 134</div>
                    <div>asdfal@gmail.com</div>
                    <div>대리</div>
                </div>

                <div class="flex round">
                    <div><input type="checkbox" class="chk"></div>
                    <div>20240003</div>
                    <div>맹채윤</div>
                    <div>010-4212-3444</div>
                    <div>충청남도 천안시 동남구 문화동 11</div>
                    <div>asdfal@gmail.com</div>
                    <div>대리</div>
                </div>

                <div class="flex round">
                    <div><input type="checkbox" class="chk"></div>
                    <div>20240004</div>
                    <div>김성령</div>
                    <div>010-5562-3434</div>
                    <div>충청남도 천안시 동남구 대흥동 134</div>
                    <div>asd41fal@gmail.com</div>
                    <div>대리</div>
                </div>
            </div>
            <button class="btn">승인</button>
            <button class="btn1">취소</button>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/JS/계정관리.js"></script>
</body>

</html>
