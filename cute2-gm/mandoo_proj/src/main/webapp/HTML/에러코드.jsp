﻿<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/에러코드.css">
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
                <a href="BOM.jsp" class="category-link">BOM(레시피관리)</a><br>
                <a href="거래처관리.jsp" class="category-link">거래처 관리</a><br>
                <a href="에러코드.jsp" class="category-link title">에러코드</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="발주확인.jsp" class="category-link">생산계획</a>
            <div class="_category">
                <a href="발주확인.jsp" class="category-link">발주확인</a> <br>
                <a href="작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a> <br>
                <a href="작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a> <br>
                <a href="생산계획.jsp" class="category-link">생산계획</a> <br>
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
            <li><a href="BOM.jsp" class="category-link">BOM(레시피관리)</a></li>
            <li><a href="거래처관리.jsp" class="category-link">거래처 관리</a></li>
            <li><a href="에러코드.jsp" class="category-link title">에러코드</a></li>
        </ul>
    </div>

    <!-- 내용페이지  -->
    <div class="content">

        <div class="errorwrap">

            <!-- 타이틀 -->
            <div class="errortitle">
                <span class="errortext"><strong>에러 코드</strong></span>
            </div>

            <!-- 버튼 -->
            <div class="errorfloat">
                <img class="imgStyle errorbtn" id="addButton" src="${pageContext.request.contextPath}/image/plus.png">
            </div>

            <br>
            <!-- 표 -->
            <div>
                <table border="1" class="errortable" id="errorTable">
                    <tr>
                        <th>오류코드</th>
                        <th class="errorexplain">내용</th>
                        <th>수정</th>
                        <th>삭제</th>
                    </tr>
                    <tr>
                        <td>E001</td>
                        <td>재료 부족 - 만두를 만들기 위한 재료가 부족합니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E002</td>
                        <td>만두 포장 오류 - 만두 포장 과정에서 오류가 발생했습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E003</td>
                        <td>찜기 고장 - 찜기가 작동하지 않아 만두 조리가 불가능합니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E004</td>
                        <td>온도 설정 오류 - 찜기 온도가 설정된 범위를 초과했습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E005</td>
                        <td>만두 모양 불량 - 만두 모양이 일관되지 않습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E006</td>
                        <td>조리 시간 초과 - 만두 조리 시간이 초과되었습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E007</td>
                        <td>냉동 오류 - 만두 냉동 과정에서 문제가 발생했습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E008</td>
                        <td>재료 혼합 오류 - 만두 속 재료가 잘 혼합되지 않았습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E009</td>
                        <td>유통 기한 초과 - 사용하려는 만두의 유통 기한이 지났습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E010</td>
                        <td>고객 주문 오류 - 고객의 주문이 잘못 입력되었습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E011</td>
                        <td>속 재료 변질 - 사용하려는 만두 속 재료가 변질되었습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E012</td>
                        <td>포장재 부족 - 만두 포장을 위한 재료가 부족합니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E013</td>
                        <td>조리 방법 오류 - 지정된 조리 방법이 잘못되었습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E014</td>
                        <td>품질 검사 실패 - 만두의 품질 검사에서 통과하지 못했습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                    <tr>
                        <td>E015</td>
                        <td>주문 처리 지연 - 고객의 주문 처리에 지연이 발생했습니다.</td>
                        <td><img class="imgStyle erroreditButton" src="${pageContext.request.contextPath}/image/수정.png" title="수정"></td>
                        <td><img class="imgStyle errordelButton" src="${pageContext.request.contextPath}/image/삭제.png" title="삭제"></td>
                    </tr>
                </table>

            </div>
        </div>

    </div>

    <script src="${pageContext.request.contextPath}/JS/에러코드.js"></script>
</body>

</html>
