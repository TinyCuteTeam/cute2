﻿<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/마이페이지.css">
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
                <a href="마이페이지.jsp" class="category-link title">마이페이지</a> <br>
                <a href="계정관리.jsp">계정관리</a><br>
                <a href="사내게시판.jsp">사내게시판</a>
            </div>

        </div>

    </div>

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="마이페이지.jsp" class="category-link title">마이페이지</a></li>
            <li><a href="계정관리.jsp" class="category-link">계정관리</a></li>
            <li><a href="사내게시판.jsp" class="category-link">사내게시판</a></li>
        </ul>
    </div>

    <!-- 내용페이지  -->
    <div class="content">
        <div id="content-display">    
            <div class="gwrap">
                <h1>마이페이지</h1>
                <div class="g_top">
                    <table>
                        <tr>
                            <td rowspan="4"><img class="pic" src="${pageContext.request.contextPath}/image/그로밋.png"></td>
                            <td class="grey">이름</td>
                            <td class="grey">소속</td>
                            <td colspan="3">만두공장</td>
                            <!-- <td></td> -->
                            <!-- <td></td> -->
                        </tr>
                        <tr>
                            <!-- <td></td> -->
                            <td rowspan="3">박경민</td>
                            <td class="grey">사번</td>
                            <td>10000000</td>
                            <td class="grey">내선번호</td>
                            <td>041-123-1000</td>
                        </tr>
                        <tr>
                            <!-- <td></td> -->
                            <!-- <td></td> -->
                            <td class="grey">이메일</td>
                            <td>gromit@gmail.com</td>
                            <td class="grey">휴대폰번호</td>
                            <td>010-1111-2200</td>
                        </tr>
                        <tr>
                            <!-- <td></td> -->
                            <!-- <td></td> -->
                            <td class="grey">직위 / 직책</td>
                            <td>사장 / 대표이사</td>
                            <td class="grey">대표전화</td>
                            <td>041-123-1000</td>
                        </tr>
        
                    </table>
                </div>
        
                <div class="g_bottom">
                    <table>
                        <tr>
                            <td class="grey">입사일</td>
                            <td>2013.04.10</td>
                            <td class="grey">직무</td>
                            <td>대표</td>
                            <td class="grey">직종</td>
                            <td>관리</td>
                            <td class="grey">직군</td>
                            <td>관리</td>
                        </tr>
        
                        <tr>
                            <td class="grey">채용구분</td>
                            <td>경력</td>
                            <td class="grey">직원구분</td>
                            <td>정규직</td>
                            <td class="grey">급여구분</td>
                            <td>임원</td>
                            <td class="grey">추천자</td>
                            <td></td>
                        </tr>
        
                        <tr>
                            <td class="grey">상태</td>
                            <td></td>
                            <td class="grey">생년월일</td>
                            <td>1996.10.22(양력)</td>
                            <td class="grey">성별</td>
                            <td>남자</td>
                            <td class="grey">결혼여부</td>
                            <td>미혼</td>
                        </tr>
        
                        <tr>
                            <td class="grey">장애여부</td>
                            <td>N</td>
                            <td class="grey">보훈여부</td>
                            <td>N</td>
                            <td class="grey">퇴사일</td>
                            <td> - </td>
                            <td class="grey">퇴직사유</td>
                            <td> - </td>
                        </tr>
        
                    </table>
                </div>
        
            </div>
        </div>
    </div>
    
    <script src="${pageContext.request.contextPath}/JS/마이페이지.js"></script>
</body>

</html>
