<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f5f5f5;
}

.button-container {
    text-align: center;
    background-color: #e3d3bf;
    padding: 10px;
}

.button-container form {
    display: inline-block;
    margin-right: 10px;
}

.button-container input[type="submit"] {
    background-color: #8b4513;
    color: white;
    border: none;
    padding: 8px 16px;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
}

.button-container input[type="submit"]:hover {
    background-color: #654321;
}

form {
    margin: 50px auto;
    max-width: 600px;
    padding: 20px;
    border: 1px solid #ccc;
    background-color: #fff;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

form table {
    width: 100%;
}

form table td {
    padding: 10px;
}

form input[type="number"],
form input[type="text"],
form input[type="email"] {
    width: 100%;
    padding: 8px;
    margin-top: 5px;
    box-sizing: border-box;
}

form input[type="submit"] {
    background-color: #8b4513;
    color: white;
    border: none;
    padding: 8px 16px;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
}

form input[type="submit"]:hover {
    background-color: #654321;
}

</style>
</head>
<body>
<!DOCTYPE html>


<div class="button-container">
    <form action="/addEmployee">
        <input type="submit" value="Add Employee">
    </form>
    <form action="/update">
        <input type="submit" value="Update Employee">
    </form>
    <form action="/all">
        <input type="submit" value="show All">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete Employee">
    </form>
</div>

<form:form modelAttribute="department" action="addEmployeeResult">
    <table>
        <tr>
            <td> Department Id</td>
            <td><form:input type ="number" path="Did" required="true"/></td>
        </tr>
        <tr>
            <td> Department Name</td>
            <td><form:input type="text" path="Dname" required="true"/></td>
        </tr>
        <tr>
            <td> Department coach</td>
            <td><form:input type="text" path="CoachName" required="true"/></td>
        </tr>
        <tr>
            <td> Employee id</td>
            <td><form:input type="number" path="employee.id" required="true"/></td>
        </tr>
        <tr>
                    <td> Employee Name</td>
                    <td><form:input type ="text" path="employee.name" required="true"/></td>
                </tr>
        <tr>
                     <td> Employee Email </td>
                            <td><form:input type ="email" path="employee.email" required="true"/></td>
                        </tr>
                <tr>
                <tr>
                            <td> Employee Designation</td>
                            <td><form:input type="text" path="employee.designation" required="true"/></td>
                        </tr>
                        <tr>
                                    <td> Employee Street</td>
                                    <td><form:input type ="text" path="employee.address.street" required="true"/></td>
                                </tr>
                                <tr>
                                                                    <td> Employee City</td>
                                                                    <td><form:input type ="text" path="employee.address.city" required="true"/></td>
                                                                </tr>



                                <tr>

            <td><input type="submit" value="Add Details"></td>
        </tr>
    </table>
</form:form>
</body>
</html>