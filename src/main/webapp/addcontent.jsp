<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Content</title>
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
    <%@ include file="expertnavbar.jsp" %>

    <!-- Sidebar -->
    <div class="sidebar">
        <a href="experthome">Home</a>
        <a href="expertprofile">My Profile</a>
        <a href="updateprofile">Update Profile</a>
        <a href="viewallfarmers">View All Farmers</a>
        <a href="addcontent">Add Content</a>
        <a href="viewallcontents">View All Content</a>
        <a href="expertlogout">Logout</a>
    </div>

    <!-- Main content -->
    <div class="main-content">
        <h2>Add New Content</h2>
        <form id="addContentForm" method="post" action="insertcontent" enctype="multipart/form-data">
            <div class="form-group">
                <label for="cname">Name:</label>
                <input type="text" id="cname" name="cname" class="form-control" placeholder="Enter content name" required>
            </div>
            <div class="form-group">
                <label for="cdescription">Description:</label>
                <textarea id="cdescription" name="cdescription" class="form-control" placeholder="Enter content description" required></textarea>
            </div>
            <div class="form-group">
                <label for="curl">URL:</label>
                <input type="text" id="curl" name="curl" class="form-control" placeholder="Enter a URL (optional)">
            </div>
            <div class="form-group">
                <label for="cimage">Image:</label>
                <input type="file" id="cimage" name="cimage" class="form-control" accept="image/*">
            </div>
            <div class="form-group">
                <label for="cpdf"></label>
                <input type="file" id="cpdf" name="cpdf" class="form-control" accept="application/pdf">
            </div>
            <div class="alert alert-danger" id="validationAlert">Please provide at least one of the following: Image, PDF, or URL.</div>
            <button type="submit" class="btn btn-primary">Add Content</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- JavaScript for form validation -->
    <script>
        document.getElementById("addContentForm").onsubmit = function(event) {
            const imageFile = document.getElementById("cimage").value;
            const pdfFile = document.getElementById("cpdf").value;
            const url = document.getElementById("curl").value;

            if (!imageFile && !pdfFile && !url) {
                const validationAlert = document.getElementById("validationAlert");
                validationAlert.style.display = "block";
                event.preventDefault();
            }
        };
    </script>
</body>
</html>
