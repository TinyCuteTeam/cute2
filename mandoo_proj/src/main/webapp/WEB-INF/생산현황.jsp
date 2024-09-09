<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/생산현황.css">
</head>

<body>

	<!-- 메인 -->
	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<div class="sidebar">
		<ul id="sidebar-content">
			<li><a href="생산현황.jsp" class="category-link title">생산현황</a></li>
		</ul>
	</div>

	<!-- 내용페이지  -->
	<div class="content">
		<div class="headtitle">생산현황</div>
		<div class="progress-container">
			<div class="progress-wrapper">
				<div class="progress-label">1번 라인</div>
				<div class="progress-circle" data-progress="30">
					<div class="progress-text">가동중 30%</div>
				</div>
				<div>비비고/물만두</div>
				<a class="mho"
					href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
			</div>
			<div class="progress-wrapper">
				<div class="progress-label">2번 라인</div>
				<div class="progress-circle" data-progress="50">
					<div class="progress-text">가동중 50%</div>
				</div>
				<div>비비고/김치만두</div>
				<a class="mho"
					href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
			</div>
			<div class="progress-wrapper">
				<div class="progress-label">3번 라인</div>
				<div class="progress-circle" data-progress="70">
					<div class="progress-text">가동중 70%</div>
				</div>
				<div>비비고/물만두</div>
				<a class="mho"
					href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
			</div>
			<div class="progress-wrapper">
				<div class="progress-label">4번 라인</div>
				<div class="progress-circle" data-progress="90">
					<div class="progress-text">가동중 90%</div>
				</div>
				<div>비비고/고기만두</div>
				<a class="mho"
					href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
			</div>
			<div class="progress-wrapper">
				<div class="progress-label">5번 라인</div>
				<div class="progress-circle" data-progress="100">
					<div class="progress-text">완료</div>
				</div>
				<div>비비고/고기만두</div>
				<a class="mho"
					href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
			</div>
			<div class="progress-wrapper">
				<div class="progress-label">6번 라인</div>
				<div class="progress-circle" data-progress="0">
					<div class="progress-text">비가동</div>
				</div>
				<div>비비고/고기만두</div>
				<a class="mho"
					href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
			</div>
		</div>

		<div>
			<div class="main">
				<div class="flex mfont">
					<div>작업지시NO.</div>
					<div>작성일자</div>
					<div>납기일자</div>
					<div>품목명</div>
					<div>수량</div>
					<div>작성자</div>
					<div>진행상태</div>
				</div>

				<div class="m_llist">
					<div class="flex round page-item">
						<div>
							<a class="mho"
								href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
						</div>
						<div>2024.04.18</div>
						<div>2024.07.23</div>
						<div class="over" title="비비고/물만두">비비고/물만두</div>
						<div>500BOX</div>
						<div>이정은</div>
						<div>
							<color class="green">작업중</color>
						</div>
					</div>

					<div class="flex round page-item">
						<div>
							<a class="mho"
								href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
						</div>
						<div>2024.06.18</div>
						<div>2024.07.26</div>
						<div class="over" title="비비고/김치만두">비비고/김치만두</div>
						<div>20BOX</div>
						<div>강희연</div>
						<div>
							<color class="green">작업중</color>
						</div>
					</div>


					<div class="flex round page-item">
						<div>
							<a class="mho"
								href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
						</div>
						<div>2024.04.18</div>
						<div>2024.07.23</div>
						<div class="over" title="비비고/물만두">비비고/물만두</div>
						<div>500BOX</div>
						<div>이정은</div>
						<div>
							<color class="green">작업중</color>
						</div>
					</div>


					<div class="flex round page-item">
						<div>
							<a class="mho"
								href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
						</div>
						<div>2024.07.18</div>
						<div>2024.07.31</div>
						<div class="over" title="비비고/고기만두">비비고/고기만두</div>
						<div>2BOX</div>
						<div>박경민</div>
						<div>
							<color class="green">작업중</color>
						</div>
					</div>

					<div class="flex round page-item">
						<div>
							<a class="mho"
								href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
						</div>
						<div>2024.07.18</div>
						<div>2024.07.31</div>
						<div class="over" title="비비고/고기만두">비비고/고기만두</div>
						<div>2BOX</div>
						<div>박경민</div>
						<div>
							<color class="green">작업중</color>
						</div>
					</div>

					<div class="flex round page-item">
						<div>
							<a class="mho"
								href="${pageContext.request.contextPath}/HTML/작업지시서.jsp">2024-050</a>
						</div>
						<div>2024.07.18</div>
						<div>2024.07.31</div>
						<div class="over" title="비비고/고기만두">비비고/고기만두</div>
						<div>2BOX</div>
						<div>현준수</div>
						<div>
							<color class="">비가동</color>
						</div>
					</div>


				</div>

				<!-- <div class="m_pagination"></div> -->

				<!-- <div class="mnum">
                        <button class="mbox" data-page="1">1</button>
                        <button class="mbox" data-page="2">2</button>
                        <button class="mbox" data-page="3">3</button>
                    </div>
        
                    <div class="search-container">
                        <input type="text" id="search-input" placeholder="검색어를 입력하세요...">
                        <button id="search-button">검색</button>
                        <button id="reset-button">취소</button>
                    </div> -->
			</div>
			<script src="${pageContext.request.contextPath}/JS/생산현황.js"></script>
		</div>
		<!— content div —>
</body>
</html>
