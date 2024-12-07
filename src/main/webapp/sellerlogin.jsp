<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FarmConnect - Seller Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            background-color: black;
            color: white;
            padding: 20px;
            border-radius: 8px;
        }
        .form-container label {
            color: white;
        }
    </style>
</head>
<body>

<%@ include file="mainnavbar.jsp" %>
<h4 align="center" style="color:red">
    <c:out value="${message}" />
</h4>

<h3 class="text-center mt-4">Seller Login Form</h3>

<div class="container mt-5">
    <div class="form-container">
        <form method="post" action="checkSellerLogin">
            <div class="form-group">
                <label for="semail">Enter Email</label>
                <input type="email" name="semail" id="semail" class="form-control" required 
                       pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
                       title="Please enter a valid email address" />
            </div>
            <div class="form-group">
                <label for="spwd">Enter Password</label>
                <input type="password" name="spwd" id="spwd" class="form-control" required />
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
            <button type="reset" class="btn btn-secondary">Clear</button>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
