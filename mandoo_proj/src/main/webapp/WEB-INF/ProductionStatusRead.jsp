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
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
/* 메인 컨테이너 - 차트와 작업지시서 영역을 나누기 위한 컨테이너 */
.main-container {
	display: flex;
	justify-content: space-between;
	margin-top: 20px;
}

/* 차트 영역을 3x2 그리드로 구성 */
.chart-grid {
	display: grid;
	grid-template-columns: repeat(3, 1fr); /* 3열 그리드 */
	grid-template-rows: repeat(2, auto); /* 2행 */
	gap: 20px; /* 차트 간의 간격 */
	flex: 1; /* 차트 영역 비율 */
}

/* 개별 차트 아이템 스타일 */
.chart-item {
	text-align: center;
	background-color: #f9f9f9;
	padding: 10px;
	border-radius: 8px;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	position: relative;
}

/* 차트 내부 텍스트 스타일 */
.chart-text {
	position: absolute;
	top: 44%; /* 중앙보다 조금 위로 조정 */
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 20px; /* 텍스트 크기 조정 */
	font-weight: bold;
	color: #333;
}

/* 작업 지시서 목록을 위한 섹션 */
.work-section {
	flex: 1; /* 작업지시서 영역 비율 */
	margin-left: 20px;
	display: flex;
	flex-direction: column;
	gap: 15px;
}

/* 차트 섹션의 라벨 스타일 */
.progress-label {
	font-weight: bold;
	font-size: 18px;
	margin-bottom: 10px;
}
</style>
</head>

<body>
	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<div class="sidebar">
		<ul id="sidebar-content">
			<li><a href="ProductionStatusRead" class="category-link">생산현황</a></li>
		</ul>
	</div>

	<!-- 내용페이지  -->
	<div class="content">
		<div class="main-container">
			<!-- 왼쪽 차트 영역 -->
			<div class="chart-grid">
				<!-- 6개의 라인 차트 출력 -->
				<c:forEach begin="1" end="6" var="lineNo">
					<c:if
						test="${productionLines[lineNo-1] != null && !empty productionLines[lineNo-1].works}">
						<div class="chart-item">
							<div class="progress-label">${lineNo}번라인</div>
							<canvas id="chart-line-${lineNo}" width="150" height="150"></canvas>
							<div class="chart-text" id="percentage-text-${lineNo}">0%</div>
						</div>
					</c:if>
				</c:forEach>
			</div>

			<!-- 오른쪽 작업 지시서 목록 -->
			<div class="work-section">
				<c:forEach begin="1" end="6" var="lineNo">
					<c:if
						test="${productionLines[lineNo-1] != null && !empty productionLines[lineNo-1].works}">
						<c:forEach var="work" items="${productionLines[lineNo-1].works}">
							<div class="work-item flex round">
								<div>${lineNo}번라인작업</div>
								<div>
									<a target="_blank" class="mho" href="/mandoo/workdetail">${work.workId}</a>
								</div>
								<div>${work.workWrite}</div>
								<div>${work.workEndate}</div>
								<div class="over" title="${work.itemCode}">${work.itemCode}</div>
								<div>${work.workName}</div>
								<div>${work.userId}</div>
								<div>
									<color class="green">${work.workDo}</color>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</c:forEach>
			</div>
		</div>

		<script>
            // 도넛 차트를 생성하는 함수
            function createDoughnutChart(canvasId, completedQty, totalQty, lineNo) {
                let ctx = document.getElementById(canvasId).getContext('2d');
                let percentage = (completedQty / totalQty) * 100;

                // 만약 totalQty가 0이라면 비가동 상태로 처리
                if (totalQty === 0) {
                    completedQty = 0;
                    totalQty = 1; // 차트를 그리기 위해 1로 설정 (실제로 비가동 상태를 나타냄)
                    percentage = 0;
                }

                // 차트 생성
                new Chart(ctx, {
                    type: 'doughnut',
                    data: {
                        labels: ['생산 완료', '남은 작업'],
                        datasets: [{
                            data: [completedQty, totalQty - completedQty],
                            backgroundColor: ['#007bff', '#e0e0e0'], // 완료와 미완료 색상
                            borderColor: ['#007bff', '#e0e0e0'],
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: true,
                        plugins: {
                            tooltip: {
                                callbacks: {
                                    label: function(tooltipItem) {
                                        return tooltipItem.label + ': ' + tooltipItem.raw + '개 (' + Math.round(percentage) + '%)';
                                    }
                                }
                            }
                        },
                        cutout: '70%', // 도넛 차트 구멍 크기
                        rotation: -90, // 시작 각도
                    }
                });

                // 중앙에 퍼센트 표시
                document.getElementById('percentage-text-' + lineNo).innerText = Math.round(percentage) + '%';
            }

            // 6개의 차트 생성
            <c:forEach begin="1" end="6" var="lineNo">
                <c:if test="${productionLines[lineNo-1] != null && !empty productionLines[lineNo-1].works}">
                    createDoughnutChart('chart-line-${lineNo}', ${productionLines[lineNo-1].productionCompletedQty}, ${productionLines[lineNo-1].productionQty}, ${lineNo});
                </c:if>
            </c:forEach>
        </script>
	</div>
</body>

</html>
