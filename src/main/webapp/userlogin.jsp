<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FarmConnect - User Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Light background color for the page */
        }
        .container {
            background-color: #343a40;  /* Light black background for the form */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            color: #fff;  /* Set text color inside form to white */
            width: 50%; /* Set the form width to 50% */
            margin: 0 auto; /* Center the form horizontally */
        }
        h3 {
            color: #fff;  /* White color for the heading */
        }
        .form-group label {
            color: #fff;  /* White label text */
        }
        .form-group input {
            border-radius: 5px;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }
        .btn-secondary:hover {
            background-color: #5a6268;
            border-color: #545b62;
        }
        .text-center a {
            color: #007bff;
        }
        .text-center a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<%@ include file="mainnavbar.jsp" %>
<h4 align="center" style="color:red">
    <c:out value="${message} "></c:out>
</h4>

<h3 class="text-center mt-4">User Login Form</h3>

<div class="container mt-5">
    <form method="post" action="checkuserlogin">
        <div class="form-group">
            <label for="uemail">Enter Email</label>
            <input type="text" name="uemail" id="uemail" class="form-control" required />
        </div>
        <div class="form-group">
            <label for="upwd">Enter Password</label>
            <input type="password" name="upwd" id="upwd" class="form-control" required />
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
        <button type="reset" class="btn btn-secondary">Clear</button>
    </form>
    
    <!-- Link to the registration page if the user is not registered -->
    <p class="mt-3 text-center">
        <a href="userreg" class="btn btn-link">Not registered? Register here</a>
    </p>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
