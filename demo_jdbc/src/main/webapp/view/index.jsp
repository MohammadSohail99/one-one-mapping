<%@page language="java"%>
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

.button-container h1 {
    margin-bottom: 20px;
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

</style>

</head>
<body>
<div class="button-container">
    <h1>Employee Application</h1>
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
</body>
</html>
