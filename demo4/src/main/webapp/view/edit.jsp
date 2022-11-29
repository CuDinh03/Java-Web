<%--
  Created by IntelliJ IDEA.
  User: maccuacu
  Date: 14/11/2022
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form method="post">

    <input name="id" value="${product.id}">
    <br>
    <input name="name" value="${product.name}">
    <br>
    <input name="img" value="${product.img}">
    <br>
    <input name="price" value="${product.price}">
    <br>
    <button type="submit">Submit</button>
</form>

</body>
</html>
