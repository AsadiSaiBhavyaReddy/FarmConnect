<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agricultural Information and Resources</title>
    <style>
        /* Container for the content */
        .container {
            width: 70%;
            margin-left: auto;
            margin-right: auto;
            padding: 20px;
            margin-top: 50px; /* Reduced margin-top to push content up */
        }

        /* Main content styling */
        .main-content {
            margin-left: 240px;  /* Adjust for sidebar */
            padding: 30px;
            background-color: white;  /* White background for main content */
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
            border-radius: 8px; /* Rounded corners */
        }

        /* Header Section */
        h1 {
            text-align: center;
            color: #333;
        }

        /* Agricultural Information Section */
        .agri-info {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        /* Heading inside Agricultural Information */
        .agri-info h2 {
            text-align: center;
            color: #28a745;
        }

        /* Paragraph inside Agricultural Information */
        .agri-info p {
            font-size: 16px;
            color: #555;
            text-align: justify;
        }

        
    </style>
</head>
<body>
    <!-- Include Sidebar (usernavbar.jsp) -->
    <%@ include file="usernavbar.jsp" %>
    <div class="container">
        <!-- Agricultural Information Section -->
        <div class="agri-info">
            <h2>Agricultural Information and Resources</h2>
            <p>
                Agriculture plays a pivotal role in providing food, raw materials, and sustaining economies. Agricultural information is essential to understand the latest trends, techniques, and technologies to enhance productivity and sustainability in farming. Resources for farmers, including crop management tips, irrigation practices, and soil health advice, are critical to modern farming. By leveraging resources like government programs, agricultural research, and community networks, farmers can improve yields, reduce costs, and ensure the long-term health of their lands.
            </p>
            <h3>Key Agricultural Resources:</h3>
            <ul>
                <li><strong>Crop Management:</strong> Tips on crop rotation, pest control, and disease management.</li>
                <li><strong>Irrigation Techniques:</strong> Efficient irrigation methods to conserve water while optimizing crop growth.</li>
                <li><strong>Soil Health:</strong> Best practices for maintaining and improving soil fertility.</li>
                <li><strong>Sustainable Farming:</strong> Techniques for reducing environmental impact while increasing agricultural output.</li>
                <li><strong>Government Programs:</strong> Information on subsidies, grants, and programs available to support farmers.</li>
            </ul>
            <p>
                Accessing agricultural information and resources can help farmers optimize their operations, increase productivity, and ensure the long-term sustainability of their farms. These resources can be found through agricultural extension services, online platforms, and local agricultural cooperatives.
            </p>
        </div>
    </div>
</body>

</html>
