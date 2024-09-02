<%@ page contentType="text/html; charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <!DOCTYPE html>
        <html lang="kor">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Mandoo</title>
            <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/style.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/실적마감.css">
            <style>
                /* Flexbox를 사용하여 테이블과 차트를 양 옆에 배치 */
                .content-display {
                    display: flex;
                    justify-content: space-between;
                    align-items: flex-start;
                    gap: 20px;
                    /* 테이블과 차트 사이의 간격 */
                }

                .content-display .table-container {
                    flex: 1;
                    /* 테이블의 너비를 조절 */
                    max-width: 50%;
                }

                .content-display .chart-container {
                    flex: 1;
                    /* 차트의 너비를 조절 */
                    max-width: 50%;
                }

                .production-table {
                    width: 100%;
                    border-collapse: collapse;
                    margin: 20px 0;
                    font-size: 18px;
                    text-align: left;
                }

                .production-table th,
                .production-table td {
                    padding: 12px 15px;
                    border: 1px solid #ddd;
                }

                .production-table thead tr {
                    background-color: #e6e6e6;
                    
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


                .chart-container canvas {
                    width: 700px;
                    /* 원하는 너비 */
                    height: 500px;
                    /* 원하는 높이 */
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
                <h1>작업지시서 목록</h1>
                <div class="content-display">
                    <div class="table-container">
                        <table class="production-table">
                            <thead>
                                <tr>
                                    <th>작업지시서 번호</th>
                                    <th>생산량</th>
                                    <th>작업 날짜</th>
                                    <th>작업 내용</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="order" items="${productionOrderList}">
                                    <tr>
                                        <td>${order.orderId}</td>
                                        <td>${order.productionQty}</td>
                                        <td>${order.orderEndate}</td>
                                        <td>${order.orderName}</td>
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
        </body>

        </html>