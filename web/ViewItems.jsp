<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="controller.*"%>
<jsp:useBean id="now" class="java.util.Date" />
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page import="java.util.*" %>
<%@ page import="model.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <head>
        <title>To-do</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <style type="text/css">
            #container {
                width: 800px;
                border: 1px solid red;
                overflow: hidden;
                margin: 0px auto 0px auto;
                padding: 0px 0px 0px 0px
            }
            #tbl_1 {
                margin-left: 20px;
            }
            #tbl_2 {
                margin-top: 25px ;
                margin-right: 20px;
            }
        </style>
    </head>
</head>
<body>
<h2>To-Do-List</h2>
<div id="container">
    <table border="1" id="tbl_1">
        <th>Item</th>
        <th>Date</th>
        <th>Status</th>
        <th>Completion Date</th>
        <form method="post" action="AddItemsServlet">
            <c:forEach items="${items}" var="itemsList" >
                <c:choose>
                    <c:when test="${itemsList.status.equals('X')}">
                        <tr>
                            <td>${itemsList.itemName}</td>
                            <td>${itemsList.date}
                            </td>
                            <td><a href="EditServlet?param1=${itemsList.status }&param2=${itemsList.itemName} ">
                                <img src='images/my.gif'     style= width:22px;height:22px "> </a></td>
                            <td></td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <input type="text" name="item">
            <input type="submit" value="Add">
        </form>
    </table>
    <table border="1" id="tbl_2">
        <th>Item</th>
        <th>Date</th>
        <th>Completion Date</th>
        <c:forEach items="${items}" var="itemsList" >
            <c:choose>
                <c:when test="${itemsList.status.equals('X')}">
                </c:when>
                <c:otherwise>
                    <tr>
                        <td>${itemsList.itemName}</td>
                        <td>
                                ${itemsList.date}
                        </td>
                        <td>
                                ${itemsList.date}
                        </td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>
</div>
</body>
</html>