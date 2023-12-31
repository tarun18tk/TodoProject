<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
<title>All Todos</title>
</head>
<body>
    <nav class="navbar navbar-expand-md navbar-light bg-light mb-3 p-1">
    <a class="navbar-brand m-1" href="">in28Minutes</a>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="login">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="/list-todos">Todos</a></li>
        </ul>
    </div>
    <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
    </ul>	
</nav>
<h2> Your ToDO List </h2>
<div class="containers" style="margin-left: 20px;">
    <table class="table">
        <thead>
            <th>ID</th>
            <th>Description</th>
            <th>Duration</th>
            <th>Delete </th>
            <th>Update </th>
        </thead>
        <tbody>
            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.id}</td>
                    <td>${todo.description}</td>
                    <td>${todo.date}</td>
                    <td><a href="delete-todo/${todo.id}" class="btn btn-warning"> Delete </a></td>
                    <td><a href="update-todo?id=${todo.id}" class="btn btn-warning"> Update </a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div><a href="add-todo" class="btn btn-success"> Add New Todo </a> </div>
<div>

    <script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.0/jquery.min.js"></script>
    
</body>
</html>
