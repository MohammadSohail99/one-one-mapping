<!DOCTYPE html>
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

.align-center {
    text-align: center;
}

.form-group {
    margin-top: 20px;
}

label {
    font-weight: bold;
}

input[type="number"],
input[type="text"] {
    padding: 5px;
    margin-bottom: 10px;
    width: 100%;
    box-sizing: border-box;
}

input[type="submit"] {
    background-color: #8b4513;
    color: white;
    border: none;
    padding: 8px 16px;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #654321;
}

</style>
</head>
<body>
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
<form action="/Employee/delete" class="align-center">
    <div class="form-group">
        <label for="Did">Enter ID:</label><br>
        <input type="number" id="Did" name="Did"><br>
        <br>
        <input type="submit" value="Delete">
    </div>
</form>

</body>
</html>
