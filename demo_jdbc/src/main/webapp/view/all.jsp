<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
        <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        .button-container {
            margin-bottom: 20px;
        }

        .button-container form {
            display: inline-block;
            margin-right: 10px;
        }
    </style>

</head>
<body>
<br>
<br>
<h2>Table form DataBase</h2>
<table border="1">
    <tr>

        <th>Department Id</th>
        <th>Department Name</th>
        <th>Department CoachName</th>
        <th>Employee ID</th>
                <th>Employee Name</th>
                <th>Employee Designation</th>
                <th>Employee Email</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="department" items="${departments}">
        <tr>
            <td><c:out value="${department.getDid()}"/></td>
            <td><c:out value="${department.getDname()}"/></td>
            <td><c:out value="${department.getCoachName()}"/></td>
            <td><c:out value="${department.employee.getId()}"/></td>
            <td><c:out value="${department.employee.getName()}"/></td>
            <td><c:out value="${department.employee.getDesignation()}"/></td>
            <td><c:out value="${department.employee.getEmail()}"/></td>
            <td>
                <form action="/updateDetails">
                    <input type="hidden" name="Did" value="${department.getDid()}">
                    <input type="submit" value="Update">
                </form>
            </td>
            <td>
                <form action="/Employee/delete">
                    <input type="hidden" name="Did" value="${department.getDid()}">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>