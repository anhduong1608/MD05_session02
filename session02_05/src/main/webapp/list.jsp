<%--
  Created by IntelliJ IDEA.
  User: SONY
  Date: 31/07/2025
  Time: 2:03 CH
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
<h1>Thêm sản phẩm</h1>
<form method="POST" action="input" class="form">
    <label>ID</label><br>
    <input type="text" name="id"><br>
    <label>Product Name</label>
    <input type="text" name="product"><br>
    <label>Price</label>
    <input type="number" name="price"><br>
    <label>Description</label>
    <input type="text" name="description"><br>
    <input type="submit" value="Submit">
</form>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Product</th>
        <th>Price</th>
        <th>Description</th>
    </tr>
    <c:forEach items="${products}" var="p">
        <tr>
            <td>${p.getId()}</td>
            <td>${p.getName()}</td>
            <td>${p.getPrice()}</td>
            <td>${p.getDescription()}</td>
        </tr>
    </c:forEach>
    </thead>

</table>

</body>
</html>
