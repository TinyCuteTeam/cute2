<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shipment List</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/출하확인.css">
</head>

<body>
	<!-- 메인 -->
	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/sidebar_실적및출하.jsp" />

	<div class="content">
		<div id="content-display"></div>

		<div class="main">
			<h1>출하 목록</h1>
			<form method="post" action="shipment"
				onsubmit="return confirmShipment();">
				<div class="flex srTh">
					<div>선택</div>
					<div>주문 ID</div>
					<div>거래처 ID</div>
					<div>상품명</div>
					<!-- 상품명 추가 -->
					<div>출하일</div>
					<div>수량</div>
				</div>

				<c:forEach var="shipment" items="${shipments}">
					<div class="flex round">
						<!-- 체크박스 추가 -->
						<div>
							<input type="checkbox" name="shipmentIds"
								value="${shipment.shipmentId}" />
						</div>
						<div>${shipment.orderId}</div>
						<div>
							<a href="/mandoo/client">${shipment.clientId}</a>
						</div>
						<div>${shipment.productName}</div>
						<!-- 상품명 추가된 부분 -->
						<div>${shipment.shipmentDate}</div>
						<div>${shipment.shipmentQuantity}</div>
					</div>
				</c:forEach>

				<!-- 출고 버튼 -->
				<div>
					<button type="submit" class="btn">출고</button>
				</div>
			</form>
		</div>
	</div>

	<script>
		// 출고 확인 대화상자
		function confirmShipment() {
			const checkedBoxes = document
					.querySelectorAll('input[name="shipmentIds"]:checked');
			if (checkedBoxes.length === 0) {
				alert('출고할 항목을 선택하세요.');
				return false;
			}
			return confirm('선택한 항목을 출고하시겠습니까?');
		}
	</script>

	<script src="${pageContext.request.contextPath}/JS/출하확인.js"></script>
</body>

</html>
