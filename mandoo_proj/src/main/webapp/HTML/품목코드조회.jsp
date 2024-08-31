<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/품목코드조회.css">
<style>
/* 모달창 스타일 */
#addModal {
	display: none;
	position: fixed;
	z-index: 1000;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: 400px;
	background-color: white;
	padding: 20px;
	border: 1px solid #888;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.25);
	border-radius: 8px;
}

#addModal input[type="text"], #addModal input[type="file"] {
	width: 100%;
	padding: 8px;
	margin: 5px 0;
	border: 1px solid #ccc;
	border-radius: 4px;
}

#addModal button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	margin: 10px 0;
	border: none;
	cursor: pointer;
	border-radius: 4px;
}

#addModal button:hover {
	background-color: #45a049;
}

/* 모달창을 닫는 버튼 */
#addModal .close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
	margin-right: -15px;
	margin-top: -15px;
}

#addModal .close:hover, #addModal .close:focus {
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
			<img class="menu-icon"
				src="${pageContext.request.contextPath}/image/menu.png">
		</div>

		<!-- 로고 아이콘 -->
		<div class="category-item">
			<a href="${pageContext.request.contextPath}/index.jsp"
				class="category-link"> <img class="logo-icon"
				src="${pageContext.request.contextPath}/image/logo.png">
			</a>
		</div>

		<!-- 카테고리 -->
		<div class="category-item">
			<a href="품목코드조회.jsp" class="category-link title">기준관리</a>
			<div class="_category">
				<a href="품목코드조회.jsp" class="category-link title">품목 코드 조회</a><br>
				<a href="BOM.jsp" class="category-link">BOM(레시피관리)</a><br> <a
					href="거래처관리.jsp" class="category-link">거래처 관리</a><br> <a
					href="에러코드.jsp" class="category-link">에러코드</a><br>
			</div>
		</div>
		<div class="category-item">
			<a href="발주확인.jsp" class="category-link">생산계획</a>
			<div class="_category">
				<a href="발주확인.jsp" class="category-link">발주확인</a><br> <a
					href="생산계획.jsp" class="category-link">생산계획</a><br> <a
					href="작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a><br>
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
				<a href="실적마감.jsp" class="category-link">실적마감</a><br> <a
					href="출하확인.jsp" class="category-link">출하확인</a><br>
			</div>
		</div>

		<div class="category-item">
			<a href="마이페이지.jsp"> <img class="mypage-icon"
				src="${pageContext.request.contextPath}/image/mypage.png">
			</a>

			<div class="_category">
				<a href="마이페이지.jsp" class="category-link">마이페이지</a><br> <a
					href="계정관리.jsp" class="category-link">계정관리</a><br> <a
					href="사내게시판.jsp" class="category-link">사내게시판</a><br>
			</div>
		</div>

	</div>

	<!-- 사이드바 -->
	<div class="sidebar">
		<ul id="sidebar-content">
			<li><a href="품목코드조회.jsp" class="category-link title">품목 코드
					조회</a></li>
			<li><a href="BOM.jsp" class="category-link">BOM(레시피관리)</a></li>
			<li><a href="거래처관리.jsp" class="category-link">거래처 관리</a></li>
			<li><a href="에러코드.jsp" class="category-link">에러코드</a><br></li>
		</ul>
	</div>

	<!-- 내용페이지 -->
	<div class="content">
		<h1>품목코드 표</h1>

		<!-- 추가 버튼 -->
		<div class="srPlus">
			<img class="plus addBtn"
				src="${pageContext.request.contextPath}/image/plus.png" title="추가"
				onclick="openAddModal()">
		</div>

		<!-- 품목코드표 테이블 -->
		<table id="table" class="srTable" border="solid black 1px;">
			<tr>
				<th class="srTh">품목코드</th>
				<th class="srTh">품목명</th>
				<th class="srTh">이미지</th>
				<th class="srTh">수정</th>
				<th class="srTh">삭제</th>
			</tr>
			<c:forEach var="item" items="${itemList}">
				<tr>
					<td>${item.itemCode}</td>
					<td>${item.itemName}</td>
					<td><img class="ingre"
						src="${pageContext.request.contextPath}/image/${item.itemCode}.jpg"></td>
					<td>
						<img class="pen editButton" src="${pageContext.request.contextPath}/image/edit.png" title="수정"
							onclick="openEditModal('${item.itemCode}', '${item.itemName}', '${item.itemCode}.jpg')">
					</td>
					<td>
						<form action="${pageContext.request.contextPath}/Item" method="post">
							<input type="hidden" name="action" value="delete"> 
							<input type="hidden" name="itemCode" value="${item.itemCode}">
							<button type="submit">삭제</button>
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>

		<!-- 모달페이지 -->
		<div id="addModal">
			<span class="close">&times;</span>
			<h2 id="modalTitle">품목 추가</h2>
			<!-- 모달 내용 -->
			<form id="itemForm">
				<input type="hidden" id="itemId"> 
				<input type="text" id="itemCode" placeholder="품목코드"> 
				<input type="text" id="itemName" placeholder="품목명"> 
				<input type="file" id="itemImage" accept="image/*">
				<button type="button" id="saveItem">저장</button>
			</form>
		</div>

		<script>
			function openAddModal() {
				document.getElementById('modalTitle').textContent = '품목 추가';
				document.getElementById('itemForm').reset(); // 폼 리셋
				document.getElementById('addModal').style.display = 'block';
			}

			function openEditModal(code, name, imageUrl) {
				document.getElementById('modalTitle').textContent = '품목 수정';
				document.getElementById('itemCode').value = code;
				document.getElementById('itemName').value = name;
				// 이미지 URL 설정
				const imageInput = document.getElementById('itemImage');
				imageInput.value = ''; // 파일 인풋 리셋
				document.getElementById('addModal').style.display = 'block';
			}

			document.querySelector('.close').addEventListener('click', function () {
				document.getElementById('addModal').style.display = 'none';
			});

			window.onclick = function (event) {
				if (event.target == document.getElementById('addModal')) {
					document.getElementById('addModal').style.display = 'none';
				}
			}
		</script>
	</div>

	<script src="${pageContext.request.contextPath}/JS/품목코드조회.js"></script>
</body>

</html>
