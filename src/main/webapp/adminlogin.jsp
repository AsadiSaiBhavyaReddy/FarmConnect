<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FarmConnect</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            background-color: black; /* Black background for the form box */
            color: white; /* White text inside the form */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 500px;
            margin: auto;
        }

        .form-container label {
            font-weight: bold;
        }

        .form-container .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .form-container .btn-primary:hover {
            background-color: #0056b3;
        }

        .form-container .btn-secondary {
            background-color: #6c757d;
            border: none;
        }

        .form-container .btn-secondary:hover {
            background-color: #5a6268;
        }

        h3 {
            color: black; /* Keep the heading in black */
        }
    </style>
</head>
<body>

<%@ include file="mainnavbar.jsp" %>
<h3 class="text-center mt-4">Admin Login Form</h3>

<div class="container mt-5">
    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <div class="form-group">
                <label for="auname">Enter Username</label>
                <input type="text" name="auname" id="auname" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="apwd">Enter Password</label>
                <input type="password" name="apwd" id="apwd" class="form-control" required />
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Login</button>
                <button type="reset" class="btn btn-secondary">Clear</button>
            </div>
        </form>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
