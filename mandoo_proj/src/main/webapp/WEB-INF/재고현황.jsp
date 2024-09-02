<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="kor">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mandoo</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/재고현황.css">
</head>

<body>

	<!-- 메인 -->
	<jsp:include page="/WEB-INF/header.jsp" />
	<!-- 사이드바 -->
	<jsp:include page="/WEB-INF/sidebar_재고관리.jsp" />
	<!-- 내용 페이지 -->
	<div class="content">
		<div class="rightnow">
			<h1>재고 현황</h1>
		</div>

		<div class="mtab">
			<input type="text" id="search-input" placeholder="검색어 입력">
			<button id="search-button">검색</button>
			<button id="reset-button">초기화</button>
			<button id="open-popup">재고 추가</button>
		</div>

		<form method="post"
			action="${pageContext.request.contextPath}/InventoryDelete">
			<table border="1" class="inventory_table">
				<thead>
					<tr>
						<th>품목 코드</th>
						<th>품목명</th>
						<th>재고 수량</th>
						<th>창고</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="inventory" items="${selectInventory}">
						<tr>
							<td><c:out value="${inventory.itemCode}" /></td>
							<td><c:out value="${inventory.inventoryName}" /></td>
							<td><c:out value="${inventory.inventoryCount}" /></td>
							<td><c:out value="${inventory.inventoryLocation}" /></td>
							<td>
								<button type="button" class="update-button"
									data-id="${inventory.inventoryId}"
									data-code="${inventory.itemCode}"
									data-name="${inventory.inventoryName}"
									data-count="${inventory.inventoryCount}"
									data-location="${inventory.inventoryLocation}"
									data-sort="${inventory.inventorySort}">수정</button>
							</td>
							<td>
								<form method="post"
									action="${pageContext.request.contextPath}/InventoryDelete"
									style="display: inline;">
									<input type="hidden" name="inventoryId"
										value="${inventory.inventoryId}"> <input type="submit"
										value="삭제">
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>

		<div class="pagination">
			<!-- 페이지 버튼 추가될 부분 -->
		</div>
	</div>

	<!-- Add Item Popup -->
	<div id="popup-overlay" class="modal">
		<div class="modal-content">
			<span id="close-popup" class="close">&times;</span>
			<h2>재고 추가</h2>
			<form method="post"
				action="${pageContext.request.contextPath}/InventoryInsert">
				<input type="hidden" name="action" value="add"> 품목id : <input
					type="text" id="item-id" name="InventoryId" required> <br>
				품목코드 : <input type="text" id="item-code" name="ItemCode" required>
				<br> 품목명 : <input type="text" id="item-name"
					name="InventoryName" required> <br> 재고수량 : <input
					type="number" id="item-stock" name="InventoryCount" required>
				<br> 창고 : <input type="text" id="item-location"
					name="InventoryLocation" required> <br> 종류 : <input
					type="text" id="item-sort" name="InventorySort" required> <br>
				<input type="submit" id="add-item" value="등록">
			</form>
		</div>
	</div>

	<!-- Update Popup -->
	<div id="update-modal" class="modal">
		<div class="modal-content">
			<span id="close-update-popup" class="close">&times;</span>
			<h2>재고 수정</h2>
			<form id="update-form" method="post"
				action="${pageContext.request.contextPath}/InventoryUpdate">
				<input type="hidden" name="action" value="update"> <input
					type="hidden" id="update-item-id" name="InventoryId"> <label
					for="update-item-code">품목코드:</label> <input type="text"
					id="update-item-code" name="ItemCode" required><br> <label
					for="update-item-name">품목명:</label> <input type="text"
					id="update-item-name" name="InventoryName" required><br>
				<label for="update-item-stock">재고수량:</label> <input type="number"
					id="update-item-stock" name="InventoryCount" required><br>
				<label for="update-item-location">창고:</label> <input type="text"
					id="update-item-location" name="InventoryLocation" required><br>
				<label for="update-item-sort">종류:</label> <input type="text"
					id="update-item-sort" name="InventorySort" required><br>
				<input type="submit" value="수정">
			</form>
		</div>
	</div>








	<script src="${pageContext.request.contextPath}/JS/재고현황.js"></script>
	<script>
		document
				.addEventListener(
						'DOMContentLoaded',
						function() {
							var updateModal = document
									.getElementById('update-modal');
							var addItemPopup = document
									.getElementById('popup-overlay');
							var closeUpdateModal = updateModal
									.querySelector('.close');
							var closeAddItemPopup = addItemPopup
									.querySelector('#close-popup');

							// Open Add Item Popup
							document.getElementById('open-popup')
									.addEventListener('click', function() {
										addItemPopup.style.display = 'block';
									});

							// Close Add Item Popup
							closeAddItemPopup.addEventListener('click',
									function() {
										addItemPopup.style.display = 'none';
									});

							// Close Update Modal
							closeUpdateModal.addEventListener('click',
									function() {
										updateModal.style.display = 'none';
									});

							// Close modal if clicked outside
							window.onclick = function(event) {
								if (event.target == updateModal) {
									updateModal.style.display = 'none';
								}
								if (event.target == addItemPopup) {
									addItemPopup.style.display = 'none';
								}
							}

							// Open Update Modal
							document
									.querySelectorAll('.update-button')
									.forEach(
											function(button) {
												button
														.addEventListener(
																'click',
																function() {
																	document
																			.getElementById('update-item-id').value = button
																			.getAttribute('data-id');
																	document
																			.getElementById('update-item-code').value = button
																			.getAttribute('data-code');
																	document
																			.getElementById('update-item-name').value = button
																			.getAttribute('data-name');
																	document
																			.getElementById('update-item-stock').value = button
																			.getAttribute('data-count');
																	document
																	s
																			.getElementById('update-item-location').value = button
																			.getAttribute('data-location');
																	document
																			.getElementById('update-item-sort').value = button
																			.getAttribute('data-sort');

																	updateModal.style.display = 'block';
																});
											});
						});
	</script>





</body>

</html>
