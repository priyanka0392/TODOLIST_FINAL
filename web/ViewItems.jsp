
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="controller.*"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page import="java.util.*" %>
<%@ page import="model.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>List</title>
</head>
<body>
<h2>To-Do-List</h2>

<table border="1">

    <th>Item</th>
    <th>Date</th>
    <th>Status</th>

<form method="post" action="AddItemsServlet">
    <c:forEach items="${items}" var="itemsList" >

<c:choose>
        <c:when test="${itemsList.status.equals('X')}">
            <tr>
                <td>${itemsList.itemName}</td>
                <td>${itemsList.date}</td>
                <td><a href="EditServlet?param1=${itemsList.status }&param2=${itemsList.itemName} ">${itemsList.status }</a></td>
            </tr>

        </c:when>
    <c:otherwise>

        <tr>
            <td><strike>${itemsList.itemName}</strike></td>
            <td><strike>${itemsList.date}</strike></td>
            <td><strike><a href="EditServlet?param1=${itemsList.status }&param2=${itemsList.itemName} ">${itemsList.status }</a></strike></td>
        </tr>
    </c:otherwise>

</c:choose>
    </c:forEach>
    <input type="text" name="item">
    <input type="submit" value="Add">

 </form>
</table>
</body>
</html>
