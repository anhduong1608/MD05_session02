<%--
  Created by IntelliJ IDEA.
  User: SONY
  Date: 31/07/2025
  Time: 3:11 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
    <link href="CSS.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div class="login-container">
    <h1>Đăng Nhập</h1>
    <form action="login" method="post">
        <label>Username:</label>
        <input type="text" name="username" ><br>
        <label>Password:</label>
        <input type="password" name="password" >
        <button type="submit">Đăng Nhập</button>
    </form>
    <c:if test="${username == 'admin' && password == '123456'}">
            <div class="login-success">
                <h2>Đăng nhập thành công</h2>
                <p>xin chào <strong>admin</strong> !</p>
            </div>
    </c:if>
    <c:if test="${username != null && username != 'admin'}">
        <h2>Đăng nhập thất bại username sai</h2>
    </c:if>

    <c:if test="${username != null && password != '123456'}">
        <h2>Đăng nhập thất bại mật khẩu sai</h2>
    </c:if>

</div>


</body>
</html>
