<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/BOM.css">
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
			<a href="index.jsp" class="category-link"><img class="logo-icon"
				src="${pageContext.request.contextPath}/image/logo.png"></a>
		</div>

		<!-- 카테고리 -->
		<div class="category-item">
			<a href="품목코드조회.jsp" class="category-link title">기준관리</a>
			<div class="_category">
				<a href="품목코드조회.jsp" class="category-link">품목 코드 조회</a><br>
				<a href="BOM.jsp" class="category-link title">BOM(레시피관리)</a><br>
				<a href="거래처관리.jsp" class="category-link">거래처 관리</a><br> <a
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
				class="mypage-icon" src="${pageContext.request.contextPath}/image/mypage.png">
			</a>

			<div class="_category">
				<a href="마이페이지.jsp" class="category-link">마이페이지</a> <br> <a
					href="계정관리.jsp" class="category-link">계정관리</a><br> <a
					href="사내게시판.jsp" class="category-link">사내게시판</a><br>
			</div>

		</div>

	</div>

	<!-- 사이드바 -->
	<div class="sidebar">
		<ul id="sidebar-content">
			<li><a href="품목코드조회.jsp" class="category-link">품목 코드 조회</a></li>
			<li><a href="BOM.jsp" class="category-link title">BOM(레시피관리)</a></li>
			<li><a href="거래처관리.jsp" class="category-link">거래처 관리</a></li>
			<li><a href="에러코드.jsp" class="category-link">에러코드</a><br></li>
		</ul>
	</div>

	<!-- 내용페이지  -->
	<div class="content">
		<div class="srBack">
			<h1>레시피 관리</h1>

			<div class="srTop">
				<!-- 제품 레시피 선택  -->
				<form>
					<select id="recipeSelect">
						<option value="kimchi">김치만두 / A00001</option>
						<option value="meat">고기만두 / A00002</option>
					</select>
					<!-- 제품추가 창으로 이동 -->
					<button class="itemAdd btnStyle">
						<a class="mho" href="BOM관리_제품추가.jsp">제품추가</a>
					</button>
					<!-- 선택삭제 버튼 -->
					<button class="delete-btn btnStyle">선택삭제</button>
				</form>

				<!-- 재료 추가버튼 -->
				<button class="plus addBtn itemAdd btnStyle">행 추가</button>
			</div>

			<br>
			<!-- 김치만두 표-->
			<table id="table" class="sr_bom kimchi" border="solid black 1px;">
				<tr>
					<th class="srTh">선택</th>
					<th class="srTh">품목코드</th>
					<th class="srTh">품목명</th>
					<th class="srTh">수량</th>
					<th class="srTh">단위</th>
					<th class="srTh">비고</th>
					<th class="srTh">수정</th>
					<th class="srTh">삭제</th>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M001</td>
					<td>밀가루</td>
					<td>500</td>
					<td>g</td>
					<td>만두피 재료</td>
					<!-- 수정버튼 -->
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<!-- 삭제버튼 -->
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M002</td>
					<td>물</td>
					<td>200</td>
					<td>ml</td>
					<td>반죽용</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M003</td>
					<td>소금</td>
					<td>5</td>
					<td>g</td>
					<td>반죽 간 및 농도 조절</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M004</td>
					<td>다진 돼지고기</td>
					<td>300</td>
					<td>g</td>
					<td>만두 속 재료</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M005</td>
					<td>부추</td>
					<td>100</td>
					<td>g</td>
					<td>만두 속 재료</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M006</td>
					<td>다진 마늘</td>
					<td>10</td>
					<td>g</td>
					<td>맛 추가</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M007</td>
					<td>후추</td>
					<td>1</td>
					<td>g</td>
					<td>맛 추가</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
			</table>
			<!-- 고기만두 표-->
			<table id="table" class="sr_bom meat"
				border="solid black 1px; display: none;">
				<tr>
					<th class="srTh">선택</th>
					<th class="srTh">품목코드</th>
					<th class="srTh">품목명</th>
					<th class="srTh">수량</th>
					<th class="srTh">단위</th>
					<th class="srTh">비고</th>
					<th class="srTh">수정</th>
					<th class="srTh">삭제</th>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M001</td>
					<td>밀가루</td>
					<td>600</td>
					<td>g</td>
					<td>만두피 재료</td>
					<!-- 수정버튼 -->
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<!-- 삭제버튼 -->
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M002</td>
					<td>물</td>
					<td>250</td>
					<td>ml</td>
					<td>반죽용</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M003</td>
					<td>소금</td>
					<td>10</td>
					<td>g</td>
					<td>반죽 간 및 농도 조절</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M004</td>
					<td>다진 돼지고기</td>
					<td>400</td>
					<td>g</td>
					<td>만두 속 재료</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M005</td>
					<td>부추</td>
					<td>150</td>
					<td>g</td>
					<td>만두 속 재료</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M006</td>
					<td>다진 마늘</td>
					<td>15</td>
					<td>g</td>
					<td>맛 추가</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
				<tr>
					<td><input type="checkbox" class="chk"></td>
					<td>M007</td>
					<td>후추</td>
					<td>2</td>
					<td>g</td>
					<td>맛 추가</td>
					<td><img class="pen editButton" title="수정/저장"
						src="${pageContext.request.contextPath}/image/edit.png"></td>
					<td><img class="bin delButton" title="삭제"
						src="${pageContext.request.contextPath}/image/delete.png"></td>
				</tr>
			</table>
		</div>
	</div>

	<script src="${pageContext.request.contextPath}/JS/BOM.js"></script>
</body>

</html>
