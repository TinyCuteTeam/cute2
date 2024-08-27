document.addEventListener('DOMContentLoaded', function(){
  const modal = document.querySelector('.modal');
  const btnOpenModal=document.querySelector('.btn-open-modal');
  const closePopup = document.getElementById('close');
  const registrationForm = document.getElementById('registration-form');  
  const dataContainer = document.getElementById('data-container');

  //모달창 열기
  btnOpenModal.addEventListener("click", ()=>{
            modal.style.display="flex";
        });

  // 모달창 닫기
  closePopup.addEventListener('click', function () {
    modal.style.display = 'none';
  });



  // 팝업창 등록 버튼
  registrationForm.addEventListener('submit', function (event) {
    event.preventDefault();
    
    // 입력 값 가져오기-- 이거 이름 변경하고 아이디 부여해야함 
    const planNumber = document.getElementById('plan-number').value;
    const itemName = document.getElementById('item-name').value;
    const planDate = document.getElementById('plan-date').value;
    const productionQuantity = document.getElementById('production-quantity').value;
    const status = document.getElementById('status').value;

    // 새로운 데이터 항목 생성
    const newItem = document.createElement('div');
    newItem.className = 'flex round';
    newItem.innerHTML = `
        <div><input type="checkbox" class="item-checkbox"></div>
        <div><a class="mho" href="/html/생산계획상세.html">${planNumber}</a></div>
        <div>${itemName}</div>
        <div>${planDate}</div>
        <div>${productionQuantity}</div>
        <div>${status}</div>
    `;
    
    // 데이터 컨테이너에 추가
    dataContainer.appendChild(newItem);

    alert('생산계획이 등록되었습니다.');
    popup.style.display = 'none';

    // 폼 초기화
    registrationForm.reset();
});

}) //모달 이벤트 끝 

//mbtn11이라는 클래스의 등록버튼을 누르면 작성한 거래처 정보가 추가되도록
document.querySelector(".mbtn11").addEventListener("click", function (event) {
  let minfo1 = document.querySelector("#minfo1").value;
  let minfo2 = document.querySelector("#minfo2").value;
  let minfo3 = document.querySelector("#minfo3").value;
  let minfo4 = document.querySelector("#minfo4").value;
  let minfo5 = document.querySelector("#minfo5").value;
  let minfo6 = document.querySelector("#minfo6").value;
  let minfo7 = document.querySelector("#minfo7").value;
  if (minfo1 == '' || minfo2 == '' || minfo3 == '' || minfo4 == '' || minfo5 == '' || minfo6 == '' || minfo7 == '') {
    alert("빈칸을 채워주세요")
} else {

  let mcontent = '';
  mcontent += '<div class="flex round">'
  mcontent += `<div><input type="checkbox" class="chk"></div>`
  mcontent += `<div class="srEl" title="${minfo1}">`
  mcontent += `    <blue>${minfo1}</blue>`
  mcontent += '</div>'
  mcontent += `<div class="srEl" title="${minfo2}">${minfo2}</div>`
  mcontent += `<div class="srEl" title="${minfo3}">${minfo3}</div>`
  mcontent += `<div class="srEl" title="${minfo4}">${minfo4}</div>`
  mcontent += `<div class="srEl" title="${minfo5}">${minfo5}</div>`
  mcontent += `<div class="srEl" title="${minfo6}">${minfo6}</div>`
  mcontent += `<div class="srEl" title="${minfo7}">${minfo7}</div>`
  mcontent += '</div>'
  document.querySelector("#msg").innerHTML += mcontent;
}

 

  // 빈내용 추가 안되도록
  // @ 이메일에
  //대표명은 5글자까지
  //사업자 등록증은 숫자랑 -만 입력가능 
});

//선택삭제
let approval = document.querySelector(".delete-btn");

approval.addEventListener('click', function() {
  let checkboxes = document.querySelectorAll('.chk:checked');
  checkboxes.forEach(function(checkbox) {
      let parentDiv = checkbox.closest('.round');
      let yes=confirm("삭제하시겠습니까?")
      if (yes==true) {
          parentDiv.remove();
      }
  });
});

