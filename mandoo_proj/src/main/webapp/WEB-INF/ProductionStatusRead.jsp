<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/생산현황.css">
</head>

<body>
	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<div class="sidebar">
		<ul id="sidebar-content">
			<li><a href="생산현황.jsp" class="category-link title">생산현황</a></li>
		</ul>
	</div>


	<!-- 내용페이지  -->
	<div class="content">
		<div class="headtitle">생산현황</div>
		<div class="progress-container">
			<div class="progress-wrapper">
				<div class="progress-label">1번 라인</div>
				<div class="progress-circle" data-progress="30">
					<div class="progress-text">가동중 30%</div>
				</div>
				<div>비비고/물만두</div>
				<a class="mho" href="/html/작업지시서.html">2024-050</a>
			</div>
			<div class="progress-wrapper">
				<div class="progress-label">2번 라인</div>
				<div class="progress-circle" data-progress="50">
					<div class="progress-text">가동중 50%</div>
				</div>
				<div>비비고/김치만두</div>
				<a class="mho" href="/html/작업지시서.html">2024-050</a>
			</div>
			<div class="progress-wrapper">
				<div class="progress-label">3번 라인</div>
				<div class="progress-circle" data-progress="70">
					<div class="progress-text">가동중 70%</div>
				</div>
				<div>비비고/물만두</div>
				<a class="mho" href="/html/작업지시서.html">2024-050</a>
			</div>
			<div class="progress-wrapper">
				<div class="progress-label">4번 라인</div>
				<div class="progress-circle" data-progress="90">
					<div class="progress-text">가동중 90%</div>
				</div>
				<div>비비고/고기만두</div>
				<a class="mho" href="/html/작업지시서.html">2024-050</a>
			</div>
			<div class="progress-wrapper">
				<div class="progress-label">5번 라인</div>
				<div class="progress-circle" data-progress="100">
					<div class="progress-text">완료</div>
				</div>
				<div>비비고/고기만두</div>
				<a class="mho" href="/html/작업지시서.html">2024-050</a>
			</div>
			<div class="progress-wrapper">
				<div class="progress-label">6번 라인</div>
				<div class="progress-circle" data-progress="0">
					<div class="progress-text">비가동</div>
				</div>
				<div>비비고/고기만두</div>
				<a class="mho" href="/html/작업지시서.html">2024-050</a>
			</div>
		</div>


		<div>
			<div class="main">
				<div class="flex mfont">
					<div>
						<h4>작업지시NO.</h4>
					</div>
					<div>
						<h4>작성일자</h4>
					</div>
					<div>
						<h4>납기일자</h4>
					</div>
					<div>
						<h4>품목명</h4>
					</div>
					<div>
						<h4>수량</h4>
					</div>
					<div>
						<h4>작성자</h4>
					</div>
					<div>
						<h4>진행상태</h4>
					</div>
				</div>

				<div class="m_llist">
					<c:forEach var="item" items="${ProductionstatusRead}">
						<div class="flex round page-item">
							<div>
								<a class="mho" href="/html/작업지시서.html">${item.workId}</a>
							</div>
							<div>${item.workWrite}</div>
							<div>${item.workEndate}</div>
							<div class="over" title="${item.workName}">${item.workName}</div>
							<div>${item.workWrite}</div>
							<div>${item.userId}</div>
							<div>${item.workDo}</div>
						</div>
					</c:forEach>
				</div>

				<div class="pagination">
					<!-- 이전 링크 -->
					<c:choose>
						<c:when test="${currentPage > 1}">
							<a href="ProductionStatusRead?page=${currentPage - 1}">이전</a>
						</c:when>
						<c:otherwise>
							<a href="#" class="disabled">이전</a>
						</c:otherwise>
					</c:choose>

					<!-- 페이지 링크 -->
					<c:forEach var="i" begin="1" end="${totalPages}" step="1">
						<a href="ProductionStatusRead?page=${i}"
							class="${currentPage == i ? 'active' : ''}">${i}</a>
					</c:forEach>

					<!-- 다음 링크 -->
					<c:choose>
						<c:when test="${currentPage < totalPages}">
							<a href="ProductionStatusRead?page=${currentPage + 1}">다음</a>
						</c:when>
						<c:otherwise>
							<a href="#" class="disabled">다음</a>
						</c:otherwise>
					</c:choose>
				</div>

			</div>
		</div>













	</div>
	<!-- content div -->
	<script src="${pageContext.request.contextPath}/JS/생산현황.js"></script>
	</div>
</body>
</html>
