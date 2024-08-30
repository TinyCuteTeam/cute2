document.addEventListener('DOMContentLoaded', function() {
    const data = [
        { errordate: '2024.07.01', errorcode: '<spanme title="재료 부족">E001</spanme>', worknumber: '2024-051', production: 5000, defect: '50' },
        { errordate: '2024.07.02', errorcode: '<spanme title="재료 부족">E001</spanme>', worknumber: '2024-053', production: 4000, defect: '40' },
        { errordate: '2024.07.01', errorcode: '<spanme title="만두 포장 오류">E002</spanme>', worknumber: '2024-062', production: 3000, defect: '30' },
        { errordate: '2024.07.02', errorcode: '<spanme title="만두 포장 오류">E002</spanme>', worknumber: '2024-088', production: 2000, defect: '20' },
        { errordate: '2024.07.02', errorcode: '<spanme title="찜기 고장">E003</spanme>', worknumber: '2024-102', production: 1000, defect: '10' },
        { errordate: '2024.07.03', errorcode: '<spanme title="온도 설정 오류">E004</spanme>', worknumber: '2024-999', production: 1500, defect: '15' }
    ];

    const tbody = document.querySelector('#defectReportTable tbody');
    let totalDefect = 0;

    data.forEach(row => {
        const tr = document.createElement('tr');
        Object.values(row).forEach(text => {
            const td = document.createElement('td');
            td.innerHTML = text;
            tr.appendChild(td);
        });
        
        // 불량 수량에서 숫자만 추출하여 총계 계산
        const defectValue = parseInt(row.defect.match(/\d+/)[0]);
        totalDefect += defectValue;

        tbody.appendChild(tr);
    });

    // 총계 행 추가
    const totalProduction = data.reduce((sum, row) => sum + row.production, 0);
    const summaryRow = document.createElement('tr');
    summaryRow.classList.add('defect-summary-row');

    // 합쳐진 셀 생성
    const td1 = document.createElement('td');
    td1.textContent = '총계';
    td1.rowSpan = 1;
    const td2 = document.createElement('td');
    td2.setAttribute('colspan', '3');
    td2.innerHTML = `<strong>${totalProduction}</strong>`;
    td2.style.textAlign = "right";
    td2.style.paddingRight = "97px";

    const td3 = document.createElement('td');
    td3.innerHTML = `<strong>${totalDefect}</strong>`;
    
    
    summaryRow.appendChild(td1);
    summaryRow.appendChild(td2);
    summaryRow.appendChild(td3);
    
    tbody.appendChild(summaryRow);

    
});
// 실적마감.js

document.addEventListener('DOMContentLoaded', function() {
    const ctxLine = document.getElementById('line-chart').getContext('2d');
    const lineChart = new Chart(ctxLine, {
        type: 'line',
        data: {
            labels: [1500, 1600, 1700, 1750, 1800, 1850, 1900, 1950, 1999, 2050],
            datasets: [{
                data: [1000, 900, 800, 700, 600, 500, 400, 300, 200, 100], // 불량 발생량 데이터
                label: "불량 발생량",
                borderColor: "#e74c3c",
                fill: false
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    position: 'top',
                    labels: {
                        font: {
                            size: 12
                        }
                    }
                },
                title: {
                    display: true,
                    text: '불량 발생량 추세'
                }
            },
            scales: {
                x: {
                    title: {
                        display: true,
                        text: '시간'
                    }
                },
                y: {
                    title: {
                        display: true,
                        text: '불량 발생량'
                    },
                    beginAtZero: true
                }
            }
        }
    });

    function updateCharts(selectedValue) {
        // 주간 불량 데이터
        const weeklyData = {
            labels: [1500, 1600, 1700, 1750, 1800, 1850, 1900, 1950, 1999, 2050],
            datasets: [{
                data: [1000, 800, 950, 600, 400, 500, 200, 370, 300, 100], // 불량 발생량 데이터
                label: "불량 발생량",
                borderColor: "#e74c3c",
                fill: false
            }]
        };

        // 월간 불량 데이터 (예시)
        const monthlyData = {
            labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월"],
            datasets: [{
                data: [300, 250, 200, 180, 150, 120, 100, 90, 70, 50], // 불량 발생량 데이터
                label: "월별 불량 발생량",
                borderColor: "#e74c3c",
                fill: false
            }]
        };

        // 분기별 불량 데이터 (예시)
        const quarterlyData = {
            labels: ["1분기", "2분기", "3분기", "4분기"],
            datasets: [{
                data: [1000, 900, 780, 600], // 불량 발생량 데이터
                label: "분기별 불량 발생량",
                borderColor: "#e74c3c",
                fill: false
            }]
        };

        // 선택된 값에 따라 데이터 업데이트
        if (selectedValue === 'monthly') {
            lineChart.data = monthlyData;
        } else if (selectedValue === 'quarterly') {
            lineChart.data = quarterlyData;
        } else {
            lineChart.data = weeklyData;
        }

        lineChart.update();
    }

    // 셀렉트 박스 변경 이벤트 리스너 추가
    document.getElementById('chart-selector').addEventListener('change', function() {
        updateCharts(this.value);
    });

    // 초기 데이터 로드
    updateCharts(document.getElementById('chart-selector').value);
});