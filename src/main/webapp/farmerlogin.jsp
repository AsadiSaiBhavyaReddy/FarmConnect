<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FarmConnect - Farmer Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
        }
        h3, h4 {
            color: #343a40;
        }
        .container {
            background-color: #000;  /* Set form background to black */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            color: #fff;  /* Set text color inside form to white */
            width: 50%; /* Set the form width to 50% */
            margin: 0 auto; /* Center the form horizontally */
        }
        h1 {
            color: #007bff; /* Set FarmConnect text color to blue */
            text-align: center;
        }
        .form-group label {
            font-weight: bold;
            color: #fff;  /* Set label text color to white */
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
            color: black; /* Change the text color to black */
        }
        .text-center a:hover {
            text-decoration: underline;
        }
        .modal-content {
            padding: 20px;
            color: black; /* Change text color to black inside the modal */
        }
        .modal-header {
            background-color: #f1f1f1;
            border-bottom: 1px solid #ddd;
        }
        .modal-body label {
            color: black; /* Set label text color to black */
        }
        .modal-body .form-group input {
            color: black; /* Set input text color to black */
        }
        .modal-footer {
            background-color: #f1f1f1;
            border-top: 1px solid #ddd;
        }
    </style>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>

<h4 align="center" style="color:red">
    <c:out value="${message}" />
</h4>

<h3 class="text-center mt-4">Farmer Login Form</h3>

<div class="container mt-5">
    <form method="post" action="checkFarmerLogin">
        <div class="form-group">
            <label for="femail">Enter Email</label>
            <input type="email" name="femail" id="femail" class="form-control" required 
                   pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
                   title="Please enter a valid email address" />
        </div>
        <div class="form-group">
            <label for="fpwd">Enter Password</label>
            <input type="password" name="fpwd" id="fpwd" class="form-control" required />
        </div>
        <button type="submit" class="btn btn-primary">Login</button>
        <button type="reset" class="btn btn-secondary">Clear</button>
    </form>
    <div class="text-center mt-3">
        <a href="#" data-toggle="modal" data-target="#forgotPasswordModal">Forgot Password?</a>
    </div>
</div>

<!-- Forgot Password Modal -->
<div class="modal fade" id="forgotPasswordModal" tabindex="-1" role="dialog" aria-labelledby="forgotPasswordLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="forgotPasswordLabel">Forgot Password</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form method="post" action="forgotPassword">
                <div class="modal-body">
                    <!-- Label for Text Box -->
                    <label for="forgotEmail" class="font-weight-bold">Enter Email</label>
                    <!-- Text Box -->
                    <div class="form-group">
                        <input type="email" name="email" id="forgotEmail" 
                               class="form-control" required 
                               placeholder="Enter your registered email address"
                               pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
                               title="Please enter a valid email address" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
