<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit Farmer Query</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        /* Header styling */
        header {
            background-color: green;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 24px;
        }

        /* Sidebar styling */
        .sidebar {
            width: 220px;
            background-color: #f8f8f8;
            height: 100vh;
            position: fixed;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        /* Sidebar links styling */
        .sidebar a {
            padding: 10px 20px;
            text-decoration: none;
            color: #333;
            display: block;
            transition: background 0.3s, box-shadow 0.3s;
            margin: 5px 0;
            border-radius: 4px;
        }

        .sidebar a:hover {
            background-color: #ddd;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        }

        /* Main content styling */
        .main-content {
            margin-left: 240px; /* Matches the width of the sidebar */
            padding: 20px;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .alert {
            display: none;
        }
    </style>
</head>
<body>
    <%@ include file="farmernavbar.jsp" %>

  
    <div class="content">
        <h2>Submit Your Query</h2>
        <form method="post" action="submitQuery"> <!-- Correct the form action -->
            <div class="form-group">
                <label for="name">Farmer Name:</label>
                <input type="text" id="name" name="name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="contactNo">Contact No:</label>
                <input type="text" id="contactNo" name="contactNo" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="query">Your Query:</label>
                <textarea id="query" name="query" class="form-control" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit Query</button>
        </form>
    </div>

    <!-- External JS Libraries -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
