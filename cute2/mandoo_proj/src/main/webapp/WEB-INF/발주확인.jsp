<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/발주확인.css">
</head>

<body>

	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<div class="sidebar">
		<ul id="sidebar-content">
			<li><a href="/발주확인.jsp" class="category-link title">발주확인</a></li>
			<li><a href="/생산계획.jsp" class="category-link">생산계획</a></li>
			<li><a href="/작업지시서(작업자용).jsp" class="category-link">작업지시서</a></li>
		</ul>
	</div>

	<!-- 내용페이지 -->
	<div class="content">
		<div class="flex mfont">
			<div>거래처</div>
			<div>발주일</div>
			<div>출고예정일</div>
			<div>박스(Box)</div>
			<div>개수(EA)</div>
			<div>단가(원)</div>
		</div>

		<c:forEach var="order" items="${orders}">
			<div class="flex round">
				<div>
					<a class="mho" href="/html/생산계획상세.html?planId=${order.clientId}">${order.clientId}</a>
				</div>
				<div>${order.orderDate}</div>
				<div>${order.orderEndDate}</div>
				<div>${order.orderBox}</div>
				<div>${order.orderCount}</div>
				<div>${order.orderPrice}</div>
			</div>
		</c:forEach>

		<!-- 페이징 -->
		<div class="pagination">
			<c:if test="${currentPage > 1}">
				<a href="/mandoo/OrderInfo?page=${currentPage - 1}">이전</a>
			</c:if>

			<c:forEach var="i" begin="1" end="${totalPages}">
				<a href="/mandoo/OrderInfo?page=${i}"
					class="${i == currentPage ? 'active' : ''}">${i}</a>
			</c:forEach>

			<c:if test="${currentPage < totalPages}">
				<a href="/mandoo/OrderInfo?page=${currentPage + 1}">다음</a>
			</c:if>
		</div>
	</div>

	<script src="${pageContext.request.contextPath}/JS/발주확인.js"></script>
</body>

</html>
