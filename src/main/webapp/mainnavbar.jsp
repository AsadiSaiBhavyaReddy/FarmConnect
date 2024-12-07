<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>FarmConnect</title>
<style>
    /* Body background image and overall styling */
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://eu-images.contentstack.com/v3/assets/bltdd43779342bd9107/blt1645b96b020bdced/64380d5d8d2c523d0da7467d/543212762.jpg');
        background-size: cover;
        background-position: center;
        margin: 0;
        text-align: center;
        color: white;
        height: 100vh;
    }

    /* Navbar styling with decreased height */
    .navbar {
        background-color: rgba(0, 0, 0, 0.7);
        padding: 15px 10px; /* Decreased padding */
        border-radius: 5px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        position: fixed;
        top: 0;
        width: 100%;
        z-index: 1;
    }

    .navbar a {
        color: white;
        font-size: 18px; /* Adjusted font size */
        margin: 0 10px;
        text-decoration: none;
        padding: 8px 12px; /* Decreased padding */
    }

    .navbar a:hover {
        background-color: #333;
        border-radius: 5px;
    }

    /* Add space below navbar */
    .content {
        margin-top: 75px; /* Adjusted margin to give space below navbar */
    }

    /* Center the heading inside the navbar */
    .navbar .navbar-header h2 {
        color: white;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        margin: 0;
        font-size: 36px; /* Decreased font size */
    }

    /* Flexbox for centering */
    .navbar .navbar-header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        width: 100%;
    }

    /* Animated text styling */
    .animated-text {
        font-size: 48px;
        font-weight: bold;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        display: inline-block;
        width: 50%; /* Set the width to 50% */
        margin: 0 auto; /* Center the header */
    }

    .animated-text span {
        display: inline-block;
        opacity: 0;
        animation: fadeIn 1s forwards;
    }

    .animated-text span:nth-child(1) { animation-delay: 0s; }
    .animated-text span:nth-child(2) { animation-delay: 0.1s; }
    .animated-text span:nth-child(3) { animation-delay: 0.2s; }
    .animated-text span:nth-child(4) { animation-delay: 0.3s; }
    .animated-text span:nth-child(5) { animation-delay: 0.4s; }
    .animated-text span:nth-child(6) { animation-delay: 0.5s; }
    .animated-text span:nth-child(7) { animation-delay: 0.6s; }
    .animated-text span:nth-child(8) { animation-delay: 0.7s; }
    .animated-text span:nth-child(9) { animation-delay: 0.8s; }
    .animated-text span:nth-child(10) { animation-delay: 0.9s; }
    .animated-text span:nth-child(11) { animation-delay: 1s; }
    .animated-text span:nth-child(12) { animation-delay: 1.1s; }
    .animated-text span:nth-child(13) { animation-delay: 1.2s; }
    .animated-text span:nth-child(14) { animation-delay: 1.3s; }
    .animated-text span:nth-child(15) { animation-delay: 1.4s; }

    @keyframes fadeIn {
        0% {
            opacity: 0;
            transform: translateY(-20px);
        }
        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>

</head>
<body>
    <!-- Navigation bar -->
    <div class="navbar">
        <a href="/">Home</a>
        <a href="expertreg">Expert Registration</a>
        <a href="farmerreg">Farmer Registration</a>
        <a href="expertlogin">Expert Login</a>
        <a href="farmerlogin">Farmer Login</a>
        <a href="adminlogin">Admin Login</a>
        <a href="userreg">User Registration</a>
        <a href="userlogin">User Login</a>
        <a href="sellerreg">Seller Registration</a>
        <a href="sellerlogin">Seller Login</a>
    </div>

    <!-- Main content with header -->
    <div class="content">
        <div class="animated-text">
           
            
            <span>F</span><span>a</span><span>r</span><span>m</span><span>C</span><span>o</span><span>n</span><span>n</span><span>e</span><span>c</span><span>t</span>
        </div>
    </div>
</body>
</html>
