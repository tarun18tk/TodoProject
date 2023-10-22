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
<h2> Your ToDO List </h2>
<div class="containers">
    <table class="table">
        <thead>
            <th>ID</th>
            <th>Description</th>
            <th>Duration</th>
            <th>Action </th>
        </thead>
        <tbody>

            <c:forEach items="${todos}" var="todo">
                <tr>
                    <td>${todo.id}</td>
                    <td>${todo.description}</td>
                    <td>${todo.date}</td>
                    <td><a href="delete-todo?id=${todo.id}" class="btn btn-warning"> Delete </a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
<div>
</body>
</html>
