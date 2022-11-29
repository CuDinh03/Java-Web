<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: maccuacu
  Date: 14/11/2022
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<button><a href="/create">Create</a></button>
<table>
    <thread>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>Img</td>
        <td>Price</td>
        <td>Choice</td>
    </tr>
    </thread>
    <tbody>

    <c:forEach items="${products}" var="pr">
    <tr>
        <td>${pr.id}</td>
        <td>${pr.name}</td>
        <td><img src="${pr.img}" alt="loading" width="200" height="150"></td>
        <td>${pr.price}</td>
        <td><button><a href="/edit/${pr.id}">Edit</a></button></td>
        <td><button><a href="/delete?id=${pr.id}">Delete</a></button></td>
        </td>
    </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
