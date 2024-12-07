<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FarmConnect</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        /* Basic Reset */
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        /* Sidebar Styles */
        .sidebar {
            height: 100%;
            width: 240px; /* Width of the sidebar */
            position: fixed;
            top: 0;
            left: 0;
            background-color: #111;
            padding-top: 20px;
            color: white;
        }

        .sidebar a {
            padding: 12px 16px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
            border-bottom: 1px solid #ddd;
        }

        .sidebar a:hover {
            background-color: #575757;
        }

        /* Main Content Styling */
        .main-content {
            margin-left: 240px;
            padding: 20px;
        }

        h2 {
            text-align: center;
        }

        /* Styling for Links in Navbar */
        .sidebar a {
            text-align: left;
            padding-left: 30px;
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <h3 align="center">FarmConnect Seller</h3>
        <a href="sellerhome">Home</a>
        <a href="addproduct">Add Product</a>
        <a href="viewallproducts">View All Product</a>
        <a href="sellerlogout">LogOut</a>
        
       
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Content specific to each page will go here -->
        <h2>Welcome To FarmConnect</h2>
    </div>

</body>
</html>
