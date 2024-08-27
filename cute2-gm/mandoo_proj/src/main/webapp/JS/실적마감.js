// 실적마감.js

const ctxLine = document.getElementById('line-chart').getContext('2d');
// const ctxDoughnut = document.getElementById('doughnut-chart').getContext('2d');

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
        }
    }
});

// const doughnutChart = new Chart(ctxDoughnut, {
//     type: 'doughnut',
//     data: {
//         labels: ["월요일", "화요일", "수요일", "목요일", "금요일"],
//         datasets: [{
//             label: "불량 발생량",
//             backgroundColor: ["#e74c3c", "#e67e22", "#f1c40f", "#2ecc71", "#3498db"],
//             data: [50, 40, 30, 20, 10]
//         }]
//     },
//     options: {
//         responsive: true,
//         maintainAspectRatio: false,
//         plugins: {
//             legend: {
//                 position: 'top',
//                 labels: {
//                     font: {
//                         size: 12
//                     }
//                 }
//             },
//             title: {
//                 display: true,
//                 text: '불량 발생량 분포'
//             }
//         }
//     }
// });

// 차트 데이터 업데이트 함수
function updateCharts(selectedValue) {
    // 주간 불량 데이터
    const weeklyData = {
        line: {
            labels: [1500, 1600, 1700, 1750, 1800, 1850, 1900, 1950, 1999, 2050],
            datasets: [{
                data: [1000, 800, 950, 600, 400, 500, 200, 370, 300, 100], // 불량 발생량 데이터
                label: "불량 발생량",
                borderColor: "#e74c3c",
                fill: false
            }]
        }
    };

    // 월간 불량 데이터 (예시)
    const monthlyData = {
        line: {
            labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월"],
            datasets: [{
                data: [300, 250, 200, 180, 150, 120, 100, 90, 70, 50], // 불량 발생량 데이터
                label: "월별 불량 발생량",
                borderColor: "#e74c3c",
                fill: false
            }]
        }
    };

    // 분기별 불량 데이터 (예시)
    const quarterlyData = {
        line: {
            labels: ["1분기", "2분기", "3분기", "4분기"],
            datasets: [{
                data: [1000, 900, 780, 600], // 불량 발생량 데이터
                label: "분기별 불량 발생량",
                borderColor: "#e74c3c",
                fill: false
            }]
        }
    };

    // 선택된 값에 따라 데이터 업데이트
    if (selectedValue === 'monthly') {
        lineChart.data = monthlyData.line;
        // doughnutChart.data = monthlyData.doughnut;
    } else if (selectedValue === 'quarterly') {
        lineChart.data = quarterlyData.line;
        // doughnutChart.data = quarterlyData.doughnut;
    } else {
        lineChart.data = weeklyData.line;
        // doughnutChart.data = weeklyData.doughnut;
    }

    lineChart.update();
    // doughnutChart.update();
}

// 셀렉트 박스 변경 이벤트 리스너 추가
document.getElementById('chart-selector').addEventListener('change', function() {
    updateCharts(this.value);
});

// 초기 데이터 로드
updateCharts(document.getElementById('chart-selector').value);