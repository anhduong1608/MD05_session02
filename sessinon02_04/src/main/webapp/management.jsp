<%--
  Created by IntelliJ IDEA.
  User: SONY
  Date: 31/07/2025
  Time: 10:29 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div id="container">
    <h1>Quản Lý Sản Phẩm</h1>
    <h2>Thêm sản phẩm</h2>
    <form method="POST" action="enter" class="form-group">
        <label>ID</label><br>
        <input type="number" name="id" placeholder="ID enter" class="form-control"/>
        <label>Product Name</label><br>
        <input type="text" name="name" placeholder="Name enter" class="form-control"/>
        <label>Price</label><br>
        <input type="number" name="price" placeholder="Price enter" class="form-control"/>
        <label>Quantity</label><br>
        <input type="number" name="quantity" placeholder="Quantity enter" class="form-control"/>
        <label>Description</label><br>
        <input type="text" name="description " placeholder="Quantity enter" class="form-control"/>
        <label>Status</label><br>
        <input type="text" name="description " placeholder="Quantity enter" class="form-control"/>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    <h2> List : </h2>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">NAME</th>
            <th scope="col">PRICE</th>
            <th scope="col">QUANTITY</th>
            <th scope="col">DESCRIPTION</th>
            <th scope="col">Action</th>
        </tr>
        </thead>

        <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.getId()}</td>
                <td>${product.getProductName()}</td>
                <td>${product.getPrice()}</td>
                <td>${product.getQuantity()}</td>
                <td>${product.getDescription()}</td>
                <td>${product.isStatus()?"con hang":"het hang"}</td>
            </tr>
        </c:forEach>
    </table>


</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
</body>
</html>
