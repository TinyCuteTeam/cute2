﻿<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/회원가입.css">
</head>

<body>

    <div class="square">
        <h1>회원가입</h1>
        <input type="text" placeholder="이름" class="name" required><br>
        <input type="text" placeholder="사원번호" class="id" required><br>
        <input type="password" placeholder="비밀번호" class="password" required><br>
        <input type="password" placeholder="비밀번호 확인" class="password-check" required><br>
        <input type="email" placeholder="이메일" class="email" required><br>
        <button class='join'>회원가입</button>
    </div>

</body>

</html>
