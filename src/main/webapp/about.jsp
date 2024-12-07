<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - Farming</title>
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

        /* About Us Section */
        .about-us {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        /* Heading inside About Us */
        .about-us h2 {
            text-align: center;
            color: #28a745;
        }

        /* Paragraph inside About Us */
        .about-us p {
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
        <!-- About Us Section -->
        <div class="about-us">
            <h2>About Us - Farming</h2>
            <p>
                Farming is the backbone of agriculture, providing food, raw materials, and employment. It plays a critical role in feeding the global population, offering various types of crops like vegetables, fruits, and grains. With sustainable farming practices, we can preserve the soil and environment for future generations. Farmers use advanced techniques and machinery to increase crop yields and improve quality. In addition to food production, farming also provides raw materials for industries like textiles and biofuels. The dedication of farmers ensures the smooth running of supply chains globally, from farm to table. At the heart of it, farming is about nurturing the earth and its resources to support life.
                At Farmer Benefit System, we are committed to empowering farmers and enhancing their livelihoods through innovative solutions. Our platform is designed to provide farmers with a comprehensive set of tools and services that help them improve productivity, access financial support, and enhance sustainability in agriculture.

We recognize that farmers play a crucial role in feeding the world, and we aim to support them by addressing challenges such as market access, resource management, and financial inclusion. Our system offers tailored solutions that connect farmers to essential resources, including government schemes, agricultural education, advanced technologies, and financial assistance programs.

By leveraging cutting-edge technology and a deep understanding of the agricultural landscape, we strive to create a more inclusive and sustainable agricultural ecosystem. Our mission is to ensure that farmers, regardless of their location or scale, can thrive in a rapidly changing world. Through the Farmer Benefit System, we seek to make a meaningful difference in the lives of those who feed us all.

Join us in building a better future for farmers, one step at a time.

                
            </p>
        </div>
    </div>
</body>
</html>
