<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<jsp:include page="/WEB-INF/header.jsp" />
	<jsp:include page="/WEB-INF/sidebar_품질관리.jsp" />

	<div class="defect-content">
		<div class="defect-home">
			<div class="defect-table-container">
				<h2 class="defect">월별 불량률</h2>
				<table id="defectReportTable" class="defect-table">
					<thead>
						<tr>
							<th>월</th>
							<th>불량률</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="fault" items="${monthlyDefectRates}">
							<tr>
								<td>${fault.faultyid}</td>
								<td>${fault.faultycount}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div id="chart-container">
				<canvas id="line-chart"></canvas>
			</div>
		</div>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
		<script>
            const labels = [];
            const data = [];

            <c:forEach var="fault" items="${monthlyDefectRates}">
                labels.push('${fault.faultyid}');
                data.push(${fault.faultycount});
            </c:forEach>;

            const ctx = document.getElementById('line-chart').getContext('2d');
            const chartData = {
                labels: labels,
                datasets: [{
                    label: '월별 불량률',
                    data: data,
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1,
                    fill: false
                }]
            };

            const myChart = new Chart(ctx, {
                type: 'line',
                data: chartData,
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        },
                        x: {
                            type: 'category'
                        }
                    }
                }
            });
        </script>
	</div>
</body>

</html>
