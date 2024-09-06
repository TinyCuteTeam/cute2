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
	href="${pageContext.request.contextPath}/CSS/마이페이지.css">

</head>

<body>
	<!-- 메인 -->
	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/sidebar_마이페이지.jsp" />
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
