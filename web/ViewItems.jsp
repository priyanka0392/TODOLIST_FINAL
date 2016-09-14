
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="controller.*"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page import="java.util.*" %>
<%@ page import="model.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>List</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <table class='table' border="1">
        th>Item</th>
        <th>Date</th>
        <th>Status</th>
<form method="post" action="AddItemsServlet">

    <c:forEach items="${items}" var="itemsList" >

        <c:choose>
            <c:when test="${itemsList.status.equals('X')}">
                <tr>
                    <td>${itemsList.itemName}</td>
                    <td>${itemsList.date}</td>
                    <td><a href="EditServlet?param1=${itemsList.status }&param2=${itemsList.itemName} ">
                        <img src='images/my.gif'     style=" width:22px;height:22px "> </a></td>

                </tr>

            </c:when>


        </c:choose>
    </c:forEach>

</form>

      </table>
    </div>
</div>
</body>
</html>

