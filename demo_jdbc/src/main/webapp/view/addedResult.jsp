<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<style>
    .button-container {
        text-align: center;
    }

    .button-container form {
        display: inline-block;
        margin: 0 10px;
    }
</style>

<div class="button-container">
    <form action="/addEmployee">
        <input type="submit" value="Add Employee">
    </form>
    <form action="/update">
        <input type="submit" value="Update Employee">
    </form>
    <form action="/all">
        <input type="submit" value="show Employee">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete Employee">
    </form>
</div>



       <tr>
            <h1>Department Details</h1>
            <td><c:out value="${department.getDid()}"/></td><br>
            <td><c:out value="${department.getDname()}"/></td><br>
            <td><c:out value="${department.getCoachName()}"/></td><br>
            <h1> Employee Added Successfully</h1><br>
            <td><c:out value="${department.employee.getId()}"/></td><br>
            <td><c:out value="${department.employee.getName()}"/></td><br>
            <td><c:out value="${department.employee.getDesignation()}"/></td><br>
            <td><c:out value="${department.employee.getEmail()}"/></td><br>
        </tr>

<a href="addEmployee">Home</a>
</body>
</html>
