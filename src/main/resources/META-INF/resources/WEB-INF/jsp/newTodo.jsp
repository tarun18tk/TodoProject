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
    <h2> Add New Todo </h2>
    <form:form method="post" modelAttribute="todo">
        <div class="form-group">
            <label for="id">ID:</label>
            <form:hidden path="id" id="id" class="form-control" />
        </div>
        <div class="form-group">
            <label for="description">Enter Description:</label>
            <form:input path="description" id="description" class="form-control" placeholder="${todo.description}" />
            <form:errors path="description" class="cssClass"></form:errors><br>
        </div>
        <div class="form-group">
            <label for="date">Enter Date:</label>
            <form:input path="date" id="date" type="date" class="form-control" placeholder="${todo.date}" />
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>

    
</body>
</html>
