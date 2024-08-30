// 실적마감.js

 // 데이터를 변수로 저장
 const labels = ['2024-08-01', '2024-08-02', '2024-08-03', '2024-08-04', '2024-08-05', '2024-08-06', '2024-08-07'];
 const data = [1800, 2200, 1300, 1600, 2000, 1700, 1400];

 // Chart.js를 사용하여 막대 그래프 생성
 const ctx = document.getElementById('myChart').getContext('2d');
 const myChart = new Chart(ctx, {
     type: 'bar',
     data: {
         labels: labels,
         datasets: [{
             label: '생산량',
             data: data,
             backgroundColor: '#007bff',
             borderColor: '#0056b3',
             borderWidth: 1
         }]
     },
     options: {
         scales: {
             x: {
                 stacked: true, // 스택형 그래프
             },
             y: {
                 beginAtZero: true
             }
         },
         plugins: {
             legend: {
                 display: true,
             },
             tooltip: {
                 callbacks: {
                     label: function(context) {
                         return context.dataset.label + ': ' + context.raw;
                     }
                 }
             }
         },
         // 막대 그래프 옵션
        //  barThickness: 100, // 막대 두께를 픽셀 단위로 설정
         maxBarThickness: 80, // 막대 최대 두께 설정
        //  minBarLength: 10, // 막대 최소 길이 설정
        //  categoryPercentage: 0.8, // 카테고리 당 막대의 비율 설정
        //  barPercentage: 0.8 // 막대 비율 설정
     }
 });