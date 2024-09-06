<div class="flex round page-item">
	<div>
		<a target="_blank" class="mho" href="/html/작업지시서(새창).html">${work.workId}</a>
	</div>
	<div>${work.workWrite}</div>
	<div>${work.workEndate}</div>
	<div class="over" title="${work.itemCode}">${work.itemCode}</div>
	<div>${work.workName}</div>
	<div>${work.userId}</div>
	<div>
		<color class="green">${work.workDo}</color>
	</div>
</div>

<form action="${pageContext.request.contextPath}/register" method="post">
	<label for="register_user_id">아이디:</label> <input type="text" name="user_id" id="register_user_id" required><br>
	<label for="register_user_pw">비밀번호:</label> <input type="password" name="user_pw" id="register_user_pw"
		required><br> <label for="register_user_pw_check">비밀번호 확인:</label> <input type="password" name="user_pw_check"
		id="register_user_pw_check" required><br> <label for="register_user_name">이름:</label>
	<input type="text" name="user_name" id="register_user_name" required><br>

	<label for="register_user_email">이메일:</label> <input type="email" name="user_email" id="register_user_email"
		required><br>

	<button type="submit">가입 신청</button>
</form>