<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = "Bùi Đức Hùng";
    int age = 35;
    String hobbies = "Đọc sách, du lịch, và lập trình.";
    String intro = "Tôi là một lập trình viên đam mê công nghệ, luôn tìm kiếm cơ hội để học hỏi và phát triển bản thân.";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Giới Thiệu</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<div class="container">
    <h2>Giới Thiệu Về Bản Thân</h2>
    <p><strong>Họ và tên:</strong> <%= name %></p>
    <p><strong>Tuổi:</strong> <%= age %></p>
    <p><strong>Sở thích:</strong> <%= hobbies %></p>
    <p><strong>Giới thiệu:</strong> <%= intro %></p>
</div>
</body>
</html>
