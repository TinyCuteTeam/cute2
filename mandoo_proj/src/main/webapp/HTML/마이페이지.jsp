<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/마이페이지.css">
<style>
/* 내장 스타일을 여기에 추가 */
</style>
</head>

<body>

	<!-- 메인 -->
	<div class="category">
		<!-- 메뉴 아이콘 -->
		<div class="menu-icon">
			<img class="menu-icon"
				src="${pageContext.request.contextPath}/image/menu.png">
		</div>

		<!-- 로고 아이콘 -->
		<div class="category-item">
			<a href="index.jsp" class="category-link"><img class="logo-icon"
				src="${pageContext.request.contextPath}/image/logo.png"></a>
		</div>

		<!-- 카테고리 -->
		<div class="category-item">
			<a href="품목코드조회.jsp" class="category-link">기준관리</a>
			<div class="_category">
				<a href="품목코드조회.jsp" class="category-link">품목 코드 조회</a><br> <a
					href="BOM.jsp" class="category-link">BOM(레시피관리)</a><br> <a
					href="거래처관리.jsp" class="category-link">거래처 관리</a><br> <a
					href="에러코드.jsp" class="category-link">에러코드</a><br>
			</div>
		</div>
		<div class="category-item">
			<a href="발주확인.jsp" class="category-link">생산계획</a>
			<div class="_category">
				<a href="발주확인.jsp" class="category-link">발주확인</a> <br> <a
					href="생산계획.jsp" class="category-link">생산계획</a> <br> <a
					href="작업지시서(관리자용).jsp" class="category-link">작업지시서 작성</a> <br>
				<a href="작업지시서(작업자용).jsp" class="category-link">작업지시서 확인</a> <br>
			</div>
		</div>

		<div class="category-item">
			<a href="재고현황.jsp" class="category-link">재고관리</a>
			<div class="_category">
				<a href="재고현황.jsp" class="category-link">재고현황</a>
			</div>
		</div>

		<div class="category-item">
			<a href="생산현황.jsp" class="category-link">공정관리</a>
			<div class="_category">
				<a href="생산현황.jsp" class="category-link">생산현황</a>
			</div>
		</div>

		<div class="category-item">
			<a href="불량률파악보고서.jsp" class="category-link">품질관리</a>
			<div class="_category">
				<a href="불량률파악보고서.jsp" class="category-link">불량률파악보고서</a><br>
			</div>
		</div>

		<div class="category-item">
			<a href="실적마감.jsp" class="category-link">실적 및 출하</a>
			<div class="_category">
				<a href="실적마감.jsp" class="category-link">실적마감</a><br> <a
					href="출하확인.jsp" class="category-link">출하확인</a><br>
			</div>
		</div>

		<div class="category-item">
			<a href="마이페이지.jsp" class="category-link"> <img
				class="mypage-icon"
				src="${pageContext.request.contextPath}/image/mypage.png">
			</a>

			<div class="_category">
				<a href="마이페이지.jsp" class="category-link title">마이페이지</a> <br>
				<a href="계정관리.jsp" class="category-link">계정관리</a><br> <a
					href="사내게시판.jsp" class="category-link">사내게시판</a>
			</div>

		</div>
	</div>

	<!-- 사이드바 -->
	<div class="sidebar">
		<ul id="sidebar-content">
			<li><a href="마이페이지.jsp" class="category-link title">마이페이지</a></li>
			<li><a href="계정관리.jsp" class="category-link">계정관리</a></li>
			<li><a href="사내게시판.jsp" class="category-link">사내게시판</a></li>
		</ul>
	</div>

	<!-- 내용페이지  -->
	<div class="content">
		<div id="content-display">
			<div class="gwrap">
				<h1>마이페이지</h1>
				<div class="g_top">
					<table>
						<tr>
							<td rowspan="7"><img class="pic"
								src="${pageContext.request.contextPath}/image/그로밋.png"></td>
							<td class="grey">이름</td>
							<td colspan="2">${mypage.mypageName}</td>
						</tr>
						<tr>
							<td class="grey">소속</td>
							<td colspan="2">${mypage.mypageAffiliation}</td>
						</tr>
						<tr>
							<td class="grey">학력</td>
							<td>${mypage.mypageIntel}</td>
							<td class="grey">내선번호</td>
							<td>${mypage.mypagePhone}</td>
						</tr>
						<tr>
							<td class="grey">이메일</td>
							<td>${mypage.mypagePhone}</td>
							<td class="grey">휴대폰번호</td>
							<td>${mypage.mypagePhone}</td>
						</tr>
						<tr>
							<td class="grey">직위 / 직책</td>
							<td>${mypage.mypagePosition}</td>
							<td class="grey">대표전화</td>
							<td>${mypage.mypageMainnum}</td>
						</tr>
						<tr>
							<td class="grey">주소</td>
							<td colspan="3">${mypage.mypageAddress}</td>
						</tr>
						<tr>
							<td class="grey">생년월일</td>
							<td>${mypage.mypageBirth}</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>

	<script src="${pageContext.request.contextPath}/JS/마이페이지.js"></script>
</body>

</html>
