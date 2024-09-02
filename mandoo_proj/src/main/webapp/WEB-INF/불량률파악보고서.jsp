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
	href="${pageContext.request.contextPath}/CSS/불량률파악보고서.css">
</head>

<body>
	<!-- 메인 -->
	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/sidebar_품질관리.jsp" />
	

	<!-- 내용페이지 -->
	<div class="defect-content">
		<div class="defect-home">
			<div class="defect-table-container">
				<h2 class="defect">불량률 파악 보고서</h2>
				<table id="defectReportTable" class="defect-table">
					<thead>
						<tr>
							<th>날짜</th>
							<th>에러코드</th>
							<th>작업지시번호</th>
							<th>생산수량</th>
							<th>불량수량</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="fault" items="${readFaulty}">
							<tr>
								<td>${fault.faultyid}</td>
								<td>${fault.errorid}</td>
								<td>${fault.workid}</td>
								<td>${fault.itemcode}</td>
								<td>${fault.faultycount}</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>


				<!-- 페이징 네비게이션 -->
				<div class="pagination">
					<!-- 이전 링크 -->
					<c:choose>
						<c:when test="${currentPage > 1}">
							<a href="FaultyRead?page=${currentPage - 1}">이전</a>
						</c:when>
						<c:otherwise>
							<a href="#" class="disabled">이전</a>
						</c:otherwise>
					</c:choose>

					<!-- 페이지 링크 -->
					<c:forEach var="i" begin="1" end="${totalPages}" step="1">
						<a href="FaultyRead?page=${i}"
							class="${currentPage == i ? 'active' : ''}">${i}</a>
					</c:forEach>

					<!-- 다음 링크 -->
					<c:choose>
						<c:when test="${currentPage < totalPages}">
							<a href="FaultyRead?page=${currentPage + 1}">다음</a>
						</c:when>
						<c:otherwise>
							<a href="#" class="disabled">다음</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div id="chart-container">
				<select id="chart-selector">
					<option value="weekly">주간</option>
					<option value="monthly">월간</option>
					<option value="quarterly">분기별</option>
				</select>
				<canvas id="line-chart"></canvas>
			</div>

		</div>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
		<script src="${pageContext.request.contextPath}/JS/불량률파악보고서.js"></script>


	</div>
</body>
</html>
