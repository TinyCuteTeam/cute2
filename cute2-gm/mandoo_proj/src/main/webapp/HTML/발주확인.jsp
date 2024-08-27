<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mandoo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/발주확인.css">
</head>

<body>

    <!-- 메인 -->
    <div class="category">

        <!-- 메뉴 아이콘 -->
        <div class="menu-icon">
            <img class="menu-icon" src="${pageContext.request.contextPath}/image/menu.png">
        </div>

        <!-- 로고 아이콘 -->
        <div class="category-item">
            <a href="/index.jsp" class="category-link">
                <img class="logo-icon" src="${pageContext.request.contextPath}/image/logo.png">
            </a>
        </div>

        <!-- 카테고리 -->
        <div class="category-item">
            <a href="/품목코드조회.jsp" class="category-link">기준관리</a>
            <div class="_category">
                <a href="/품목코드조회.jsp" class="category-link">품목 코드 조회</a><br>
                <a href="/BOM.jsp" class="category-link">BOM(레시피관리)</a><br>
                <a href="/거래처관리.jsp" class="category-link">거래처 관리</a><br>
                <a href="/에러코드.jsp" class="category-link">에러코드</a><br>
            </div>
        </div>
        <div class="category-item">
            <a href="/발주확인.jsp" class="category-link title">생산계획</a>
            <div class="_category">
                <a href="/발주확인.jsp" class="category-link title">발주확인</a><br>
                <a href="/생산계획.jsp" class="category-link">생산계획</a><br>
                <a href="/작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a><br>
                <a href="/작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="/재고현황.jsp" class="category-link">재고관리</a>
            <div class="_category">
                <a href="/재고현황.jsp" class="category-link">재고현황</a>
            </div>
        </div>

        <div class="category-item">
            <a href="/생산현황.jsp" class="category-link">공정관리</a>
            <div class="_category">
                <a href="/생산현황.jsp" class="category-link">생산현황</a>
            </div>
        </div>

        <div class="category-item">
            <a href="/불량률파악보고서.jsp" class="category-link">품질관리</a>
            <div class="_category">
                <a href="/불량률파악보고서.jsp" class="category-link">불량률파악보고서</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="/실적마감.jsp" class="category-link">실적 및 출하</a>
            <div class="_category">
                <a href="/실적마감.jsp" class="category-link">실적마감</a><br>
                <a href="/출하확인.jsp" class="category-link">출하확인</a><br>
            </div>
        </div>

        <div class="category-item">
            <a href="/마이페이지.jsp">
                <img class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png">
            </a>

            <div class="_category">
                <a href="/마이페이지.jsp" class="category-link">마이페이지</a><br>
                <a href="/계정관리.jsp" class="category-link">계정관리</a><br>
                <a href="/사내게시판.jsp" class="category-link">사내게시판</a><br>
            </div>
        </div>

    </div>

    <!-- 사이드바 -->
    <div class="sidebar">
        <ul id="sidebar-content">
            <li><a href="/발주확인.jsp" class="category-link title">발주확인</a></li>
            <li><a href="/생산계획.jsp" class="category-link">생산계획</a></li>
            <li><a href="/작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a></li>
            <li><a href="/작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a></li>
        </ul>
    </div>

    <!-- 내용페이지 -->
    <div class="content">
        <!-- 비비고 등 브랜드 카테고리 목록 만들기 -->
        <div class="goodjob">
            <select name="mcategory" class="mcate">
                <option value="1" selected="selected">비비고</option>
            </select>
            <!-- 비비고 판매 만두 카테고리 목록 만들기 -->
            <select name="mcategory" class="mcate" id="mandoo-cate">
                <option value="m_all" selected="selected">전체</option>
                <option value="big">왕교자만두</option>
                <option value="sae">새우만두</option>
                <option value="gun">군만두</option>
                <option value="big">김치만두</option>
                <option value="sae">고기만두</option>
                <option value="gun">찐만두</option>
                <option value="big">야채만두</option>
                <option value="sae">매운만두</option>
                <option value="gun">해물만두</option>
                <option value="big">고추만두</option>
                <option value="sae">스프링롤</option>
                <option value="gun">두부반두</option>
                <option value="big">고르곤졸라만두</option>
                <option value="sae">불고기만두</option>
                <option value="gun">훈제연어만두</option>
            </select>
        </div>

        <!-- 각 내용별 제목 -->
        <div class="flex">
            <div>거래처</div>
            <div>발주일<span>▼</span></div>
            <div>출고예정일<span>▼</span></div>
            <div>박스(Box)</div>
            <div>개수(EA)</div>
            <div>단가(원)</div>
        </div>

        <div class="m_all">
            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>(주)지앤시</blue></div>
                <div>24.07.18</div>
                <div>24.07.26</div>
                <div>3</div>
                <div>120</div>
                <div>1,250</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>(주)일신</blue></div>
                <div>24.04.18</div>
                <div>24.08.25</div>
                <div>200</div>
                <div>850</div>
                <div>1,300</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>인천마트</blue></div>
                <div>23.07.18</div>
                <div>24.08.05</div>
                <div>30</div>
                <div>200</div>
                <div>1,200</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>서울식자재</blue></div>
                <div>24.06.18</div>
                <div>24.07.10</div>
                <div>50</div>
                <div>300</div>
                <div>1,270</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>부산식자재</blue></div>
                <div>24.05.10</div>
                <div>24.05.25</div>
                <div>40</div>
                <div>150</div>
                <div>1,290</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>강남마트</blue></div>
                <div>23.07.18</div>
                <div>24.08.20</div>
                <div>60</div>
                <div>280</div>
                <div>1,130</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>(주)인프라</blue></div>
                <div>24.07.18</div>
                <div>24.07.26</div>
                <div>3</div>
                <div>120</div>
                <div>1,250</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>대구마트</blue></div>
                <div>24.04.18</div>
                <div>24.06.25</div>
                <div>150</div>
                <div>100</div>
                <div>1,300</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>한성식자재</blue></div>
                <div>23.08.18</div>
                <div>24.09.05</div>
                <div>300</div>
                <div>450</div>
                <div>1,200</div>
            </div>
        </div>

        <!-- 각 제목별 내용 (왕교자) -->
        <div class="big">
            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>(주)지앤시</blue></div>
                <div>24.07.18</div>
                <div>24.07.26</div>
                <div>3</div>
                <div>120</div>
                <div>1,250</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>(주)일신</blue></div>
                <div>24.04.18</div>
                <div>24.08.25</div>
                <div>200</div>
                <div>850</div>
                <div>1,300</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>인천마트</blue></div>
                <div>23.07.18</div>
                <div>24.08.05</div>
                <div>30</div>
                <div>200</div>
                <div>1,200</div>
            </div>
        </div>

        <!-- 각 제목별 내용 (새우만두) -->
        <div class="sae">
            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>서울식자재</blue></div>
                <div>24.06.18</div>
                <div>24.07.10</div>
                <div>50</div>
                <div>300</div>
                <div>1,270</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>부산식자재</blue></div>
                <div>24.05.10</div>
                <div>24.05.25</div>
                <div>40</div>
                <div>150</div>
                <div>1,290</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>강남마트</blue></div>
                <div>23.07.18</div>
                <div>24.08.20</div>
                <div>60</div>
                <div>280</div>
                <div>1,130</div>
            </div>
        </div>

        <!-- 각 제목별 내용 (군만두) -->
        <div class="gun">
            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>(주)인프라</blue></div>
                <div>24.07.18</div>
                <div>24.07.26</div>
                <div>3</div>
                <div>120</div>
                <div>1,250</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>대구마트</blue></div>
                <div>24.04.18</div>
                <div>24.06.25</div>
                <div>150</div>
                <div>100</div>
                <div>1,300</div>
            </div>

            <div class="flex round">
                <input type="checkbox" class="mchk">
                <div><blue>한성식자재</blue></div>
                <div>23.08.18</div>
                <div>24.09.05</div>
                <div>300</div>
                <div>450</div>
                <div>1,200</div>
            </div>
        </div>

        <!-- 페이지 수 넘기는 번호 -->
        <div class="m_pagination"></div>

        <br>
        <!-- 체크박스를 선택했을때, 발주 승인/취소 버튼 -->
        <mleft>
            <button class="mbtn1"> 승인 </button>
            <button class="mbtn2"> 취소 </button>
        </mleft>
    </div>

    <script src="${pageContext.request.contextPath}/JS/발주확인.js"></script>
</body>

</html>
