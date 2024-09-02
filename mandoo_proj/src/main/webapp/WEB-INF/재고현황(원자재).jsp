<%@ page contentType="text/html; charset=UTF-8" language="java"%>
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
	href="${pageContext.request.contextPath}/CSS/재고현황.css">
</head>

<body>
	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<div class="sidebar">
		<ul id="sidebar-content">
			<li><a href="재고현황.jsp" class="category-link">재고현황</a></li>
			<ul>
				<li><a href="재고현황(원자재).jsp" class="category-link title">원자재</a></li>
				<li><a href="재고현황(부자재).jsp" class="category-link">부자재</a></li>
			</ul>
		</ul>
	</div>

	<!-- 내용페이지 -->
	<div class="content">
		<div class="rightnow">
			<h1>재고 현황</h1>
		</div>

		<div class="mtab" style="text-align: center;">
			<input type="text" id="item-code" placeholder="품목코드"> <input
				type="text" id="item-name" placeholder="품목명"> <input
				type="text" id="item-image" placeholder="이미지코드"> <input
				type="number" id="item-stock" placeholder="재고수량"> <input
				type="number" id="item-available" placeholder="가용수량">
			<button id="add-item">등록</button>
		</div>

		<table class="table">
			<thead>
				<tr>
					<th class="mth">품목코드</th>
					<th class="mth">품목명</th>
					<th class="mth">이미지</th>
					<th class="mth">재고수량</th>
					<th class="mth">가용수량</th>
					<th class="mth">재고위치</th>
					<th class="mth">수정</th>
					<th class="mth">삭제</th>
				</tr>
			</thead>
			<tbody id="product-table-body">
				<!-- JavaScript로 데이터가 추가될 부분 -->
			</tbody>
		</table>

		<div class="pagination">
			<!-- 페이지 버튼이 여기에 추가될 것입니다 -->
		</div>
	</div>

	<script src="${pageContext.request.contextPath}/JS/재고현황(원자재).js"></script>
</body>

</html>
