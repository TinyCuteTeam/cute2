<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="java.util.List" %>
<%@ page import="mandoo.DAO.ProductionOrderDAO" %> <!-- DAO 클래스 임포트 -->
<%@ page import="mandoo.DTO.ProductionOrderDTO" %> <!-- DTO 클래스 임포트 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    // DAO를 이용하여 월별 생산량 데이터를 가져옵니다.
    ProductionOrderDAO dao = new ProductionOrderDAO();
    List<ProductionOrderDTO> monthlyProductionData = dao.getMonthlyProductionData();
    dao.close();
%>

<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/실적마감.css">
    <style>
        .content-display {
            display: flex;
            justify-content: space-between;
            align-items: center; /* 수직 정렬을 가운데로 맞춤 */
            gap: 20px; /* 표와 차트 사이의 간격 */
        }

        .table-container {
            width: 45%; /* 테이블의 너비를 조절 */
        }

        .chart-container {
            width: 50%; /* 차트의 너비를 조절 */
        }

        .production-table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-size: 18px;
            text-align: left;
        }

        .production-table th, .production-table td {
            padding: 12px 15px;
            border: 1px solid #ddd;
        }

        .production-table thead tr {
            background-color: #009879;
            color: #ffffff;
            text-align: left;
            font-weight: bold;
        }

        .production-table tbody tr {
            border-bottom: 1px solid #ddd;
        }

        .production-table tbody tr:nth-of-type(even) {
            background-color: #f3f3f3;
        }

        .production-table tbody tr:last-of-type {
            border-bottom: 2px solid #009879;
        }

        .production-table tbody tr:hover {
            background-color: #f1f1f1;
        }

        .chart-container {
            height: 500px; /* 차트의 높이 설정 */
        }

        .chart-container canvas {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
    <!-- 메인 -->
    <jsp:include page="/WEB-INF/header.jsp" />

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="실적마감.jsp" class="category-link title">실적마감</a></li>
            <li><a href="출하확인.jsp" class="category-link">출하확인</a></li>
        </ul>
    </div>

    <!-- 내용페이지 -->
    <div class="content">
        <h1>월별 생산량</h1>
        <div class="content-display">
            <div class="table-container">
                <table class="production-table">
                    <thead>
                        <tr>
                            <th>월</th>
                            <th>생산량</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="order" items="${monthlyProductionData}">
                            <tr>
                                <td>${order.orderMonth}</td>
                                <td>${order.productionQty}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <div class="chart-container">
                <canvas id="line-chart"></canvas>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
    <script>
        const labels = [];
        const data = [];

        <c:forEach var="order" items="${monthlyProductionData}">
            labels.push('${order.orderMonth}');
            data.push(${order.productionQty});
        </c:forEach>;

        const ctx = document.getElementById('line-chart').getContext('2d');
        const chartData = {
            labels: labels,
            datasets: [{
                label: '월별 생산량',
                data: data,
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 2,
                fill: false,
                tension: 0.1 // 부드러운 곡선으로 연결
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
</body>
</html>
