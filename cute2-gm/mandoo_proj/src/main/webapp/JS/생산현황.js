document.addEventListener('DOMContentLoaded', function() {
    var circles = document.querySelectorAll('.progress-circle');

    circles.forEach(function(circle) {
        var progress = parseInt(circle.getAttribute('data-progress'), 10);
        
        // 색상 결정
        var color;
        if (progress <= 30) {
            color = '#ff0000'; // 빨간색
        } else if (progress <= 50) {
            color = '#ffd400'; // 노란색
        } else {
            color = '#54bd54'; // 녹색
        }

        // 색상과 진행률을 설정
        circle.style.background = `conic-gradient(${color} 0% ${progress}%, #e0e0e0 ${progress}% 100%)`;
    });
});
