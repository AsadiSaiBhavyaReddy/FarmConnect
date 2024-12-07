<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Government Schemes</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body and general styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            color: #333;
            line-height: 1.6;
        }

        /* Container for the content */
        .container {
            width: 70%;
            margin: 50px auto 0; /* Centering container and spacing from top */
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1); /* Adding depth */
            border-radius: 8px; /* Rounded corners for the container */
        }

        /* Main content styling */
        .main-content {
            margin-left: 240px;  /* Adjust for sidebar */
            padding: 30px;
            background-color: white;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        /* Header Section */
        h1 {
            text-align: center;
            color: #2d3436;
            margin-bottom: 20px;
            font-size: 28px;
        }

        /* Government Schemes Section */
        .govt-schemes {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }

        /* Heading inside Government Schemes */
        .govt-schemes h2 {
            text-align: center;
            color: #28a745;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Paragraph inside Government Schemes */
        .govt-schemes p {
            font-size: 16px;
            color: #555;
            text-align: justify;
            margin-bottom: 20px;
        }

        /* List inside Government Schemes */
        .govt-schemes ul {
            font-size: 16px;
            color: #555;
            list-style-type: disc;
            margin-left: 20px;
            margin-bottom: 20px;
        }

        /* Link Styling */
        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        /* Hover effect for links */
        a:hover {
            color: #0056b3;
            text-decoration: underline;
        }

        /* Schemes List */
        .scheme-section h2 {
            text-align: center;
            font-size: 22px;
            color: #2d3436;
            margin-bottom: 20px;
        }

        .scheme-list {
            list-style: none;
            padding: 0;
        }

        .scheme-list li {
            margin-bottom: 10px;
        }

        /* Back Button Styling */
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
        }

        .back-link a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
        }

        .back-link a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
    <!-- Include Sidebar (usernavbar.jsp) -->
    <%@ include file="usernavbar.jsp" %>
    <div class="container">
        <!-- Schemes Section -->
        <div class="scheme-section">
            <h2>Farming Schemes</h2>
            <ul class="scheme-list">
                <li><a href="scheme1.html" target="_blank">National Crop Insurance Scheme</a></li>
                <li><a href="scheme2.html" target="_blank">Pradhan Mantri Kisan Samman Nidhi</a></li>
                <li><a href="scheme3.html" target="_blank">Organic Farming Promotion Scheme</a></li>
                <li><a href="scheme4.html" target="_blank">Farming Equipment Subsidy Scheme</a></li>
            </ul>
        </div>
    </div>
</body>
</html>
