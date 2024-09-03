<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>생산계획 - 작업지시서(작업자)</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/작업지시서.css">
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
            <a href="품목코드조회.jsp" class="category-link">기준관리</a>
            <div class="_category">
                <a href="품목코드조회.jsp" class="category-link">품목 코드 조회</a><br>
                <a href="BOM.jsp" class="category-link">BOM(레시피관리)</a><br>
                <a href="거래처관리.jsp" class="category-link">거래처 관리</a><br>
                <a href="에러코드.jsp" class="category-link">에러코드</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="발주확인.jsp" class="category-link title">생산계획</a>
            <div class="_category">
                <a href="발주확인.jsp" class="category-link">발주확인</a> <br>
                <a href="생산계획.jsp" class="category-link">생산계획</a> <br>
                <a href="작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a> <br>
                <a href="작업지시서(작업자용).jsp" class="category-link title">작업지시서 확인</a> <br>
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
            <li><a href="생산계획.jsp" class="category-link">생산계획</a></li>
            <li><a href="작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a></li>
            <li><a href="작업지시서(작업자용).jsp" class="category-link title">작업지시서 확인</a></li>
        </ul>
    </div>

    <!-- 내용페이지  -->
    <div class="content">
        <div class="m_workmain">
            <table class="mwork" border="1px solid black">
                <tr>
                    <th class="m_title" colspan="4">작업지시서</th>
                </tr>
                <tr>
                    <th>작업지시NO.</th>
                    <td>2023-001</td>
                    <th>품목명</th>
                    <td>비비고/왕교자</td>
                </tr>
                <tr>
                    <th>거래처</th>
                    <td>서울마트</td>
                    <th>수량</th>
                    <td>2BOX</td>
                </tr>
                <tr>
                    <th>작성일자</th>
                    <td>2024.07.01</td>
                    <th>작성자</th>
                    <td>김철수</td>
                </tr>
                <tr>
                    <th>납기일자</th>
                    <td>2024.07.05</td>
                    <th>진행상태</th>
                    <td style="font-weight:700px;">
                        <select class="work">
                            <option value="work1">작업예정</option>
                            <option value="work2">작업중</option>
                            <option value="work3">작업대기</option>
                            <option value="work4">작업중단</option>
                        </select>
                    </td>
                </tr>
            </table>
            <br>
            <table class="m_bom" border="1px solid black">
                <tr>
                    <th class="m_title" colspan="5">BOM(레시피관리)</th>
                </tr>
                <tr>
                    <th class="srTh">품목코드</th>
                    <th class="srTh">품목명</th>
                    <th class="srTh">수량</th>
                    <th class="srTh">단위</th>
                    <th class="srTh">비고</th>
                </tr>
                <tr>
                    <td>M001</td>
                    <td>밀가루</td>
                    <td>500</td>
                    <td>g</td>
                    <td>만두피 재료</td>
                </tr>
                <tr>
                    <td>M002</td>
                    <td>물</td>
                    <td>200</td>
                    <td>ml</td>
                    <td>반죽용</td>
                </tr>
                <tr>
                    <td>M003</td>
                    <td>소금</td>
                    <td>5</td>
                    <td>g</td>
                    <td>반죽의 맛을 위해</td>
                </tr>
                <tr>
                    <td>M004</td>
                    <td>다진 돼지고기</td>
                    <td>300</td>
                    <td>g</td>
                    <td>만두 속 재료</td>
                </tr>
                <tr>
                    <td>M005</td>
                    <td>다진 양파</td>
                    <td>100</td>
                    <td>g</td>
                    <td>만두 속 재료</td>
                </tr>
                <tr>
                    <td>M006</td>
                    <td>대파</td>
                    <td>30</td>
                    <td>g</td>
                    <td>만두 속 재료</td>
                </tr>
                <tr>
                    <td>M007</td>
                    <td>간장</td>
                    <td>15</td>
                    <td>ml</td>
                    <td>만두 속 양념</td>
                </tr>
                <tr>
                    <td>M008</td>
                    <td>참기름</td>
                    <td>10</td>
                    <td>ml</td>
                    <td>만두 속 양념</td>
                </tr>
                <tr>
                    <td>M009</td>
                    <td>후추</td>
                    <td>2</td>
                    <td>g</td>
                    <td>만두 속 양념</td>
                </tr>
                <tr>
                    <td>M010</td>
                    <td>마늘</td>
                    <td>10</td>
                    <td>g</td>
                    <td>만두 속 양념</td>
                </tr>
            </table>
        </div>
    </div>

    <table class="now" border="1px solid black">
        <tr>
            <th class="m_title" colspan="3">공정과정</th>
        </tr>
        <tr>
            <td style="width: 100px;">step1</td>
            <td style="width: 200px;">원료입고</td>
        </tr>
        <tr>
            <td>step2</td>
            <td>검수/선별</td>
        </tr>
        <tr>
            <td>step3</td>
            <td>세척 및 다지기<br>만두피반죽</td>
        </tr>
        <tr>
            <td>step4</td>
            <td>속재료 배합<br>만두피/숙성</td>
        </tr>
        <tr>
            <td>step5</td>
            <td style="background-color: lightgreen ;">만두 빚기(기계/손)</td>
        </tr>
        <tr>
            <td>step6</td>
            <td>증숙</td>
        </tr>
        <tr>
            <td>step7</td>
            <td>급속냉각</td>
        </tr>
        <tr>
            <td>step8</td>
            <td>X-ray 투시기 검사</td>
        </tr>
        <tr>
            <td>step9</td>
            <td>중량확인</td>
        </tr>
        <tr>
            <td>step10</td>
            <td>포장</td>
        </tr>
        <tr>
            <td>step11</td>
            <td>금속탐지기</td>
        </tr>
        <tr>
            <td>step12</td>
            <td>완제품 보관</td>
        </tr>
    </table>

    <div>
        <a href="작업지시서(작업자용).jsp"><img class="rollback" src="${pageContext.request.contextPath}/image/되돌아가기버튼.png" title="뒤로가기"></a>
    </div>

</body>
<script src="${pageContext.request.contextPath}/JS/작업지시서.js"></script>

</html>
