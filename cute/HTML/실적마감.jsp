<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="java.util.List" %>
<%@ page import="mandoo.DAO.ProductionOrderDAO" %> <!-- DAO 클래스 임포트 -->
<%@ page import="mandoo.DTO.ProductionOrderDTO" %> <!-- DTO 클래스 임포트 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    // DAO를 이용하여 월별 생산량 데이터를 가져온다.
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
        <h1 id="head_title">월별 생산량</h1>
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
    const canvas = document.getElementById('line-chart');
    const ctx = canvas.getContext('2d');

    // 캔버스의 CSS 크기 설정
    canvas.style.width = '100%';
    canvas.style.height = '100%'; // CSS에서 설정한 높이

    // 캔버스의 실제 해상도 설정
    const resizeCanvas = () => {
        // CSS에서 설정된 크기를 가져온다
        const width = canvas.clientWidth;
        const height = canvas.clientHeight;

        // 실제 캔버스의 크기를 설정한다
        canvas.width = width * window.devicePixelRatio;
        canvas.height = height * window.devicePixelRatio;

        // 캔버스의 스타일 크기를 설정한다
        canvas.style.width = width + 'px';
        canvas.style.height = height + 'px';

        // 차트의 해상도를 유지하기 위해 컨텍스트의 스케일을 조정한다
        ctx.scale(window.devicePixelRatio, window.devicePixelRatio);
    };

    // 창 크기 변경 시 캔버스 크기 조정
    window.addEventListener('resize', resizeCanvas);

    // 초기 캔버스 크기 조정
    resizeCanvas();

    const labels = [];
    const data = [];

    <c:forEach var="order" items="${monthlyProductionData}">
        labels.push('${order.orderMonth}');
        data.push(${order.productionQty});
    </c:forEach>;

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
            responsive: true,
            maintainAspectRatio: false, // 차트의 비율을 유지하지 않도록 설정
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