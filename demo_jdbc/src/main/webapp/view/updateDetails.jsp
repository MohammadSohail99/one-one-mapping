<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../style.css">
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
        <input type="submit" value="show All Employee">
    </form>
    <form action="/delete">
        <input type="submit" value="Delete Employee">
    </form>
</div>

<form:form modelAttribute="empUpd" action="Employee/update">
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