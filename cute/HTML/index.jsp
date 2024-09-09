<%@ page contentType="text/html; charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Mandoo</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/board-style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/생산현황.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/실적마감.css">
    </head>

    <body>

        <%@ include file="header.jsp" %>

            <!-- 내용페이지  -->
            <div class="content board">
                <h1><a href="${pageContext.request.contextPath}/WEB-INF/사내게시판.jsp">사내게시판</a></h1>
                <table id="posts-table">
                    <thead>
                        <tr>
                            <td>번호</td>
                            <td>카테고리</td>
                            <td>제목</td>
                            <td>날짜</td>
                            <td>글쓴이</td>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- 게시글 목록이 여기에 추가됩니다 -->
                    </tbody>
                </table>
            </div>

            <!-- <div class="content2">
                <div id="content-display">
                    <h1><a href="${pageContext.request.contextPath}/WEB-INF/실적마감.jsp">실적마감</a></h1>
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
                </div> -->

                <div id="content3">
                    <div>
                        <select id="yearSelect"></select>
                        <select id="monthSelect"></select>
                        <button id="generateCalendarButton">캘린더 생성</button>
                    </div>
                    <div id="calendar"></div>
                    <button id="todoAdd">일정 추가</button>
                </div>

                <div class="content4">
                    <div class="memo-container">
                        <h2>메모 작성</h2>
                        <textarea id="memo-input" rows="4" placeholder="메모를 작성하세요..."></textarea><br>
                        <button id="add-memo">메모 추가</button>
                    </div>

                    <div class="memo-list">
                        <h2>작성된 메모</h2>
                        <ul id="memo-output">
                            메모 리스트가 여기에 추가됩니다
                        </ul>
                    </div>
                </div>

                <!-- <script src="${pageContext.request.contextPath}/JS/script.js"></script> -->
                <script src="${pageContext.request.contextPath}/JS/TodoMain.js"></script>
                <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
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
                </script> -->
    </body>

    </html>