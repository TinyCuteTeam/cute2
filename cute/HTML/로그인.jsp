<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/로그인.css">
</head>

<body>
    <div class="square-login">
        <h1>Login</h1>
        <form id="login-form">
            <input type="text" placeholder="사원번호" name="id" id="id" required><br>
            <input type="password" placeholder="비밀번호" name="password" id="password" required><br>
            <button type="button" id="showJoin">회원가입</button>
            <button type="submit">로그인</button>
        </form>
    </div>

    <!-- 회원가입 모달 -->
    <div id="joinModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <div id="joinFormContainer">
                <!-- 회원가입 폼이 여기에 동적으로 로드됩니다 -->
            </div>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/JS/로그인.js"></script>
</body>

</html>
