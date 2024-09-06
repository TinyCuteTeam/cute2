const calendar = document.getElementById('calendar');
const yearSelect = document.getElementById('yearSelect');
const monthSelect = document.getElementById('monthSelect');
const modal = document.getElementById('modal');
const closeModal = document.querySelector('.close');
const addEventButton = document.getElementById('addEventButton');
const eventInput = document.getElementById('eventInput');
const eventTitle = document.getElementById('eventTitle');
const generateCalendarButton = document.getElementById('generateCalendarButton');
const editEventButton = document.getElementById('editEventButton');

// 모달 관련 요소
const detailsModal = document.getElementById('detailsModal');
const detailsText = document.getElementById('detailsText');
const detailsTitle = document.getElementById('detailsTitle');
const modalDate = document.getElementById('modalDate');
const eventList = document.getElementById('eventList');
const submitEventButton = document.getElementById('submitEventButton');
const backButton = document.getElementById('backButton');
const addEventContainer = document.getElementById('addEventContainer');

// 버튼 관련 요소
const write1 = document.querySelector('.write1');
const write2 = document.querySelector('.write2');
const edit1 = document.querySelector('.edit1');
const edit2 = document.querySelector('.edit2');

const today = new Date();
const currentDay = today.getDate();
const currentMonth = today.getMonth();
const currentYear = today.getFullYear();

let selectedDate;
let events = {}; // 날짜별 일정을 저장할 객체

// 년도와 월 옵션 생성
function populateYearAndMonth() {
    for (let i = currentYear; i <= currentYear + 2; i++) {
        const option = document.createElement('option');
        option.value = i;
        option.textContent = i;
        yearSelect.appendChild(option);
    }
    for (let i = 0; i < 12; i++) {
        const option = document.createElement('option');
        option.value = i;
        option.textContent = `${i + 1}월`;
        monthSelect.appendChild(option);
    }

    yearSelect.value = currentYear; // 현재 연도 선택
    monthSelect.value = currentMonth; // 현재 월 선택
}

// 캘린더 생성
function createCalendar(year, month) {
    calendar.innerHTML = ''; // 기존 캘린더 초기화
    const daysInMonth = new Date(year, month + 1, 0).getDate(); // 해당 월의 마지막 날
    const firstDay = new Date(year, month, 1).getDay(); // 해당 월의 첫 번째 날의 요일

    // 첫 번째 주의 빈 칸 추가
    for (let i = 0; i < firstDay; i++) {
        const emptyDiv = document.createElement('div');
        calendar.appendChild(emptyDiv); // 빈 칸 추가
    }

    // 현재 월의 날짜 추가
    for (let day = 1; day <= daysInMonth; day++) {
        const dayDiv = document.createElement('div');
        dayDiv.className = 'day';
        dayDiv.innerText = day;
        dayDiv.onclick = () => openModal(year, month, day);

        // 현재 날짜와 비교하여 색상 변경
        if (day === currentDay && month === currentMonth && year === currentYear) {
            dayDiv.classList.add('today'); // 현재 날짜 강조
        }

        // 일정이 있는 경우 목록 표시
        if (events[`${year}-${month + 1}-${day}`]) {
            const eventListDiv = document.createElement('div');
            eventListDiv.className = 'event';
            dayDiv.appendChild(eventListDiv);
            dayDiv.classList.add('has-events');
        }

        calendar.appendChild(dayDiv);
    }
}

// 모달 열기
function openModal(year, month, day) {
    selectedDate = day;
    modalDate.innerText = `${year}년 ${month + 1}월 ${day}일`; // 선택한 날짜 표시
    updateEventList(); // 일정 목록 업데이트
    modal.style.display = 'block'; // 모달 열기
    addEventContainer.style.display = 'none'; // 일정 추가 컨테이너 숨기기

    // 선택한 날짜를 hidden 필드에 설정
    const hiddenDateInput = document.getElementById('hiddenDate');
    hiddenDateInput.value = `${year}-${month + 1}-${day}`; // YYYY-MM-DD 형식으로 설정
}

// 모달 닫기
closeModal.onclick = function () {
    modal.style.display = 'none';
}

// 캘린더에 일정 추가
function addEventToCalendar(day, eventTitle, eventInput) {
    const dayDivs = document.querySelectorAll('.day');
    const targetDay = dayDivs[day - 1]; // 배열은 0부터 시작하므로 day - 1

    // 일정 텍스트를 7글자까지만 표시
    const truncatedText = eventTitle.length > 7 ? eventTitle.slice(0, 7) : eventTitle;

    const eventDiv = document.createElement('div');
    eventDiv.className = 'event';
    eventDiv.innerText = truncatedText; // 잘라낸 텍스트 사용

    targetDay.appendChild(eventDiv);

    const year = parseInt(yearSelect.value);
    const month = parseInt(monthSelect.value);
    const dateKey = `${year}-${month + 1}-${day}`;

    // 이벤트 저장
    if (!events[dateKey]) {
        events[dateKey] = [];
    }
    events[dateKey].push({ title: eventTitle, details: eventInput });
}

// 이벤트 리스너 추가
generateCalendarButton.onclick = function () {
    const year = parseInt(yearSelect.value);
    const month = parseInt(monthSelect.value);
    createCalendar(year, month);
}

// 일정 목록 업데이트
function updateEventList() {
    const dateKey = `${yearSelect.value}-${parseInt(monthSelect.value) + 1}-${selectedDate}`;
    eventList.innerHTML = ''; // 기존 목록 초기화

    if (events[dateKey]) {
        events[dateKey].forEach((event, index) => {
            const listItem = document.createElement('div');
            listItem.className = 'eventList';
            listItem.innerText = `${event.title}`;
            listItem.onclick = () => showEventDetail(event.title, event.details); // 클릭 시 상세보기

            const separator = document.createElement('div');
            separator.className = 'separator'; // 구분선 클래스 추가

            eventList.appendChild(listItem);
            eventList.appendChild(separator); // 구분선 추가
        });
    } else {
        eventList.innerText = '일정이 없습니다.'; // 일정이 없을 경우 메시지 표시
    }
}

// 글쓰기 버튼 클릭 시
addEventButton.onclick = function () {
    addEventContainer.style.display = 'flex'; // 일정 추가 컨테이너 보이기
    eventList.style.display = 'none'; // 일정 목록 숨기기
    backButton.style.display = 'block'; // 뒤로가기 버튼 보이기
    addEventButton.style.display = 'none'; // 글쓰기 버튼 숨기기
}

// 폼 제출 이벤트 추가 (디버그용 로그 추가)
document.getElementById('addEventForm').onsubmit = function (event) {
    const modalTitle = document.getElementById('eventTitle').value;

    if (!modalTitle) {
        alert('제목을 입력해주세요.');
        event.preventDefault(); // 폼 제출 방지
    } else {
        console.log("폼 제출: 제목이 입력됨");
    }
}

// 일정 추가 또는 수정
submitEventButton.onclick = function () {
    const eventTitleValue = eventTitle.value;
    const eventInputValue = eventInput.value || ''; // 입력값이 없으면 공백 문자열로 저장
    const year = parseInt(yearSelect.value);
    const month = parseInt(monthSelect.value);
    const dateKey = `${year}-${month + 1}-${selectedDate}`;

    if (eventTitleValue) { // 제목이 있을 경우에만 추가
        if (currentEditingEvent) {
            // 기존 일정 수정
            const existingEventIndex = events[dateKey].findIndex(event => event.title === currentEditingEvent.title && event.details === currentEditingEvent.details);
            if (existingEventIndex !== -1) {
                events[dateKey][existingEventIndex] = { title: eventTitleValue, details: eventInputValue }; // 수정
            }
            currentEditingEvent = null; // 수정 완료 후 초기화

            submitEventButton.innerText = '추가'; // 버튼 텍스트를 '추가'로 되돌리기
        } else {
            addEventToCalendar(selectedDate, eventTitleValue, eventInputValue); // 새로운 일정 추가
        }

        // 입력 필드 초기화
        eventInput.value = '';
        eventTitle.value = '';
        updateEventList(); // 일정 목록 업데이트

        // **폼 제출 추가**: 일정이 추가되면 폼을 강제로 제출
        document.getElementById('addEventForm').submit();
    }

    addEventContainer.style.display = 'none'; // 일정 추가 컨테이너 숨기기
    eventList.style.display = 'block'; // 일정 목록 보이기
    backButton.style.display = 'none';
    addEventButton.style.display = 'flex';
}

// 뒤로가기 버튼 클릭 시
backButton.onclick = function () {
    addEventContainer.style.display = 'none'; // 일정 추가 컨테이너 숨기기
    eventList.style.display = 'block'; // 일정 목록 보이기
    backButton.style.display = 'none';
    addEventButton.style.display = 'flex';
    document.getElementById('eventDetail').style.display = 'none';
    addEventContainer.style.display = 'none';
}

// 초기화
populateYearAndMonth();
createCalendar(new Date().getFullYear(), new Date().getMonth());
