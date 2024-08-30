﻿<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="kor">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/거래처관리.css">
    <style>
        /* 모달 스타일 */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0, 0, 0);
            background-color: rgba(0, 0, 0, 0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
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
            <a href="/index.jsp" class="category-link">
                <img class="logo-icon" src="${pageContext.request.contextPath}/image/logo.png">
            </a>
        </div>

        <!-- 카테고리 -->
        <div class="category-item">
            <a href="/품목코드조회.jsp" class="category-link title">기준관리</a>
            <div class="_category">
                <a href="/품목코드조회.jsp" class="category-link">품목 코드 조회</a><br>
                <a href="/BOM.jsp" class="category-link">BOM(레시피관리)</a><br>
                <a href="/거래처관리.jsp" class="category-link title">거래처 관리</a><br>
                <a href="/에러코드.jsp" class="category-link">에러코드</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="/발주확인.jsp" class="category-link">생산계획</a>
            <div class="_category">
                <a href="/발주확인.jsp" class="category-link">발주확인</a><br>
                <a href="/생산계획.jsp" class="category-link">생산계획</a><br>
                <a href="/작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a><br>
                <a href="/작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="/재고현황.jsp" class="category-link">재고관리</a>
            <div class="_category">
                <a href="/재고현황.jsp" class="category-link">재고현황</a>
            </div>
        </div>

        <div class="category-item">
            <a href="/생산현황.jsp" class="category-link">공정관리</a>
            <div class="_category">
                <a href="/생산현황.jsp" class="category-link">생산현황</a>
            </div>
        </div>

        <div class="category-item">
            <a href="/불량률파악보고서.jsp" class="category-link">품질관리</a>
            <div class="_category">
                <a href="/불량률파악보고서.jsp" class="category-link">불량률파악보고서</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="/실적마감.jsp" class="category-link">실적 및 출하</a>
            <div class="_category">
                <a href="/실적마감.jsp" class="category-link">실적마감</a><br>
                <a href="/출하확인.jsp" class="category-link">출하확인</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="/마이페이지.jsp" class="category-link">
                <img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png">
            </a>

            <div class="_category">
                <a href="/마이페이지.jsp" class="category-link">마이페이지</a><br>
                <a href="/계정관리.jsp" class="category-link">계정관리</a><br>
                <a href="/사내게시판.jsp" class="category-link">사내게시판</a><br>
            </div>
        </div>

    </div>

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="/품목코드조회.jsp" class="category-link">품목 코드 조회</a></li>
            <li><a href="/BOM.jsp" class="category-link">BOM(레시피관리)</a></li>
            <li><a href="/거래처관리.jsp" class="category-link title">거래처 관리</a></li>
            <li><a href="/에러코드.jsp" class="category-link">에러코드</a></li>
        </ul>
    </div>

    <!-- 내용페이지 -->
    <div class="content">
        <div>
            <h1>거래처 관리</h1>

            <!-- 거래처정보 카테고리 -->
            <div class="main">
                <div class="flex">
                    <div></div>
                    <div>거래처</div>
                    <div>대표명<span>▼</span></div>
                    <div>연락처</div>
                    <div>주소</div>
                    <div>이메일</div>
                    <div>담당자</div>
                    <div>사업자등록증</div>
                </div>

                <!-- 거래처 정보 출력 -->
                <form method="post" action="/mandoo/client">
                    <c:forEach var="client" items="${clients}">
                        <div class="flex round">
                            <div><input type="checkbox" name="clientId" value="${client.clientId}" class="chk"></div>
                            <div class="srEl"><blue>${client.clientName}</blue></div>
                            <div class="srEl">${client.clientBoss}</div>
                            <div class="srEl">${client.clientTel}</div>
                            <div class="srEl">${client.clientAddress}</div>
                            <div class="srEl">${client.clientEmail}</div>
                            <div class="srEl">${client.clientBoss}</div>
                            <div class="srEl">${client.clientNumber}</div>
                        </div>
                    </c:forEach>

                    <button type="button" id="openModalBtn" class="mbtn11 btnStyle">추가</button>
                    <button type="submit" formaction="${pageContext.request.contextPath}/client?action=delete" class="delete-btn btnStyle">삭제</button>
                </form>
            </div>

            <!-- 모달 -->
            <div id="addClientModal" class="modal">
                <div class="modal-content">
                    <span class="close">&times;</span>
                    <h2>거래처 추가</h2>
                    <form method="post" action="/mandoo/client">
                        <input type="hidden" name="action" value="add">
                        <div>거래처: <input type="text" name="clientName"></div>
                        <div>대표명: <input type="text" name="clientBoss"></div>
                        <div>연락처: <input type="text" name="clientTel"></div>
                        <div>주소: <input type="text" name="clientAddress"></div>
                        <div>이메일: <input type="text" name="clientEmail"></div>
                        <div>담당자: <input type="text" name="clientBoss"></div>
                        <div>사업자등록증: <input type="text" name="clientNumber"></div>
                        <div><button type="submit" class="btnStyle">등록</button></div>
                    </form>
                </div>
            </div>

        </div>
    </div>

    <script>
        // 모달 관련 스크립트
        var modal = document.getElementById("addClientModal");
        var btn = document.getElementById("openModalBtn");
        var span = document.getElementsByClassName("close")[0];

        btn.onclick = function() {
            modal.style.display = "block";
        }

        span.onclick = function() {
            modal.style.display = "none";
        }

        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>

</body>

</html>
