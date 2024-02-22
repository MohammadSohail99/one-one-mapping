<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../style.css">
    <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }
            .button-container {
                margin: 50px auto;
                width: 80%;
                text-align: center;
            }
            h1 {
                color: #333;
            }
            form {
                display: inline-block;
            }
            input[type="submit"] {
                padding: 10px 20px;
                margin: 10px;
                font-size: 16px;
                background-color: #8b4513; /* Brown color */
                color: #fff;
                border: none;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #654321; /* Darker brown on hover */
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
<form action="/updateDetails" class="align-center">
    <div class="form-group">
        <label for="Did">Enter ID:</label><br>
        <input type="number" id="Did" name="Did"><br>
        <br>
        <input type="submit" value="Previous Details">
    </div>
</form>
</body>
</html>
