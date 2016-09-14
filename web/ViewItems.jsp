
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
<h2>To-Do-List</h2>

<table class='table' border="1">

    <th>Item</th>
    <th>Date</th>
    <th>Status</th>

<<<<<<< HEAD
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
    <div class="form-group">
    <input type="text" name="item">
    <input type="submit" value="Add">
    </div>
    <html>
<head>lab2</head>
<body>
<h2>Haiyan Wang</h2>
Repo: https://github.com/haiyanwa/toDoList</br></br>

forked the main repo from github, then</br>
git clone https://github.com/haiyanwa/toDoList</br></br>

after made changes to ViewItems.jsp</br>
git add ViewItems.jsp</br>
git commit -m 'Add bootstrap css'</br></br>

git remote -v</br>
origin	https://github.com/haiyanwa/toDoList (fetch)</br>
origin	https://github.com/haiyanwa/toDoList (push)</br>
git push origin master</br></br>

Then sent a pull request from the github GUI</br>

</body>
</html>

 </form>
=======
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
>>>>>>> 58f08d66e5e8cb89a0a6eb7e62a34d342e424a64
</table>
</div>
</body>
</html>
