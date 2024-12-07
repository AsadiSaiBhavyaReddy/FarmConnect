<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FarmConnect</title>
    <!-- Link to Font Awesome CDN for icon support -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Basic styling */
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
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        /* Cart icon styling in the header */
        .cart-header-icon {
            font-size: 2em;
            cursor: pointer;
        }

        /* Navigation Bar Styling */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #333;
            overflow: hidden;
        }

        /* Navbar links styling */
        .navbar a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            text-align: center;
            transition: background 0.3s;
            display: block;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Main content styling */
        .main-content {
            padding: 20px;
        }

        /* Navbar active class styling */
        .navbar a.active {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <span>Welcome to FarmConnect Farmer Dashboard</span>
        <!-- Cart icon in the header -->
        <a href="viewCart" class="cart-header-icon">
            <i class="fas fa-shopping-cart"></i>
        </a>
    </header>

    <!-- Navigation Bar Section -->
    <div class="navbar">
        <a href="farmerhome" class="active">Home</a>
        <a href="farmerprofile">My Profile</a>
        <a href="updatefprofile">Update Profile</a>
        <a href="viewallproducts2">View Products</a>
        <a href="viewallcontents1">View Content</a>
         <a href="addquery">Query</a>
         <a href="viewallreplyqueries">View Quries Reply</a>

        <a href="farmerlogout">Logout</a>
    </div>

    <!-- Main Content Section -->
    <div class="main-content">
        <!-- Content goes here -->
    </div>
</body>
</html>
