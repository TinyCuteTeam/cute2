<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/BOM관리_제품추가.css">
</head>

<body>

	<!-- 메인 -->
	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/sidebar_기준관리.jsp" />

	<!-- 내용페이지  -->
	<div class="content">
		<div class="srBack">
			<h1>BOM 관리 - BOM 추가</h1>
		</div>

		<!-- 뒤로가기 버튼 -->
		<div class="toLeft">
			<a href="/mandoo/BOM" class="btnStyle">뒤로가기</a>
		</div>

		<!-- BOM 정보 입력 -->
		<form action="/mandoo/BOMAdd" method="post">
			<input type="hidden" name="bomId" value="${nextBomId}">
			<table class="productInfo infoTable" border="solid black 1px;">
				<tr>
					<th class="srTh">품목명</th>
					<th class="srTh">수량</th>
					<th class="srTh">단위</th>
				</tr>
				<tr>
					<td><select name="itemCode">
							<c:forEach var="item" items="${itemList}">
								<option value="${item.itemCode}">${item.itemName}</option>
							</c:forEach>
					</select></td>
					<td><input type="number" name="bomCount" required></td>
					<td><input type="text" name="bomUnit" required></td>
				</tr>
			</table>

			<!-- 행 추가 버튼 -->
			<div class="toRight">
				<button type="button" class="btnStyle" id="addRowBtn">행 추가</button>
			</div>

			<!-- 저장 버튼 -->
			<div class="toRight">
				<button type="submit" class="btnStyle">저장</button>
			</div>
		</form>
	</div>

	<script>
        document.addEventListener("DOMContentLoaded", function() {
            const addRowBtn = document.getElementById('addRowBtn');
            const table = document.querySelector('.infoTable');

            addRowBtn.addEventListener('click', function() {
                const newRow = document.createElement('tr');
                
                newRow.innerHTML = `
                    <td>
                        <select name="itemCode">
                            <c:forEach var="item" items="${itemList}">
                                <option value="${item.itemCode}">${item.itemName}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td><input type="number" name="bomCount" required></td>
                    <td><input type="text" name="bomUnit" required></td>
                `;
                
                table.appendChild(newRow);
            });
        });
    </script>

</body>

</html>
