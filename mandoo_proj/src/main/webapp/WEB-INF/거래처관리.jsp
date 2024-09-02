﻿<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/거래처관리.css">
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

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.pagination {
	display: inline-block;
	margin-top: 20px;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
	transition: background-color .3s;
	border: 1px solid #ddd;
	margin: 0 4px;
}

.pagination a.active {
	background-color: #4CAF50;
	color: white;
	border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
}
</style>
</head>

<body>

	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/sidebar_기준관리.jsp" />
	<!-- 내용페이지 -->
	<div class="content">
		<div>
			<h1>거래처 관리</h1>

			<!-- 거래처정보 카테고리 -->
			<div class="main">
				<div class="flex">
					<div></div>
					<div>거래처</div>
					<div>
						대표명<span>▼</span>
					</div>
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
							<div>
								<input type="checkbox" name="clientId"
									value="${client.clientId}" class="chk">
							</div>
							<div class="srEl">
								<blue>${client.clientName}</blue>
							</div>
							<div class="srEl">${client.clientBoss}</div>
							<div class="srEl">${client.clientTel}</div>
							<div class="srEl">${client.clientAddress}</div>
							<div class="srEl">${client.clientEmail}</div>
							<div class="srEl">${client.clientBoss}</div>
							<div class="srEl">${client.clientNumber}</div>
						</div>
					</c:forEach>

					<button type="button" id="openModalBtn" class="mbtn11 btnStyle">추가</button>
					<button type="submit"
						formaction="${pageContext.request.contextPath}/client?action=delete"
						class="delete-btn btnStyle">삭제</button>
				</form>

				<!-- 페이징 -->
				<div class="pagination">
					<c:if test="${totalPages > 1}">
						<c:if test="${currentPage > 1}">
							<a href="?page=${currentPage - 1}">&laquo; Previous</a>
						</c:if>
						<c:forEach begin="1" end="${totalPages}" var="i">
							<a href="?page=${i}" class="${currentPage == i ? 'active' : ''}">${i}</a>
						</c:forEach>
						<c:if test="${currentPage < totalPages}">
							<a href="?page=${currentPage + 1}">Next &raquo;</a>
						</c:if>
					</c:if>
				</div>


				<!-- 모달 -->
				<div id="addClientModal" class="modal">
					<div class="modal-content">
						<span class="close">&times;</span>
						<h2>거래처 추가</h2>
						<form method="post" action="/mandoo/client">
							<input type="hidden" name="action" value="add">
							<div>
								거래처: <input type="text" name="clientName">
							</div>
							<div>
								대표명: <input type="text" name="clientBoss">
							</div>
							<div>
								연락처: <input type="text" name="clientTel">
							</div>
							<div>
								주소: <input type="text" name="clientAddress">
							</div>
							<div>
								이메일: <input type="text" name="clientEmail">
							</div>
							<div>
								담당자: <input type="text" name="clientBoss">
							</div>
							<div>
								사업자등록증: <input type="text" name="clientNumber">
							</div>
							<div>
								<button type="submit" class="btnStyle">등록</button>
							</div>
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
