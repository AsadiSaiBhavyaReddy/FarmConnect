<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sustainability and Organic Farming</title>
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

        /* Sustainability and Organic Farming Section */
        .sustainability-organic {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        /* Heading inside Sustainability and Organic Farming */
        .sustainability-organic h2 {
            text-align: center;
            color: #28a745;
        }

        /* Paragraph inside Sustainability and Organic Farming */
        .sustainability-organic p {
            font-size: 16px;
            color: #555;
            text-align: justify;
        }

        /* List inside Sustainability and Organic Farming */
        .sustainability-organic ul {
            font-size: 16px;
            color: #555;
            list-style-type: disc;
            margin-left: 20px;
        }
    </style>
</head>
<body>
    <!-- Include Sidebar (usernavbar.jsp) -->
    <%@ include file="usernavbar.jsp" %>
    <div class="container">
        <!-- Sustainability and Organic Farming Section -->
        <div class="sustainability-organic">
            <h2>Sustainability and Organic Farming</h2>
            <p>
                Sustainability and organic farming practices play a crucial role in ensuring long-term food security, reducing environmental impact, and promoting healthier ecosystems. Organic farming focuses on using natural inputs, crop rotation, and sustainable practices to cultivate crops without the use of synthetic pesticides, fertilizers, or genetically modified organisms (GMOs). Sustainability in agriculture refers to the ability to meet current food needs without compromising the ability of future generations to meet their own needs.
            </p>
            <h3>Benefits of Organic Farming:</h3>
            <ul>
                <li><strong>Healthier Food:</strong> Organic farming practices result in food that is free from synthetic pesticides, herbicides, and fertilizers, providing consumers with safer, healthier produce.</li>
                <li><strong>Soil Health:</strong> Organic farming enhances soil quality through practices such as composting, crop rotation, and cover cropping, which improve soil fertility, water retention, and biodiversity.</li>
                <li><strong>Environmental Protection:</strong> Organic farming reduces environmental pollution by avoiding chemical inputs that can contaminate water, air, and soil. It also supports biodiversity by providing a habitat for beneficial insects and wildlife.</li>
                <li><strong>Carbon Sequestration:</strong> By using practices like agroforestry and reduced tillage, organic farming can help store carbon in the soil, contributing to the fight against climate change.</li>
                <li><strong>Reduced Chemical Usage:</strong> Organic farming eliminates the need for synthetic chemicals, which can be harmful to the environment and human health. It also promotes the use of natural pest control methods like biological control agents and companion planting.</li>
            </ul>
            <h3>Sustainable Practices in Organic Farming:</h3>
            <ul>
                <li><strong>Crop Rotation:</strong> Alternating crops on the same land helps to improve soil health, reduce pest and disease cycles, and enhance biodiversity.</li>
                <li><strong>Composting:</strong> Using organic waste materials like manure, leaves, and food scraps to create nutrient-rich compost improves soil fertility and structure.</li>
                <li><strong>Agroforestry:</strong> Integrating trees into farming systems helps to increase biodiversity, prevent soil erosion, and create microclimates that benefit crops and livestock.</li>
                <li><strong>Water Conservation:</strong> Implementing efficient irrigation systems, such as drip irrigation, and using organic mulch, helps to conserve water and improve water use efficiency.</li>
                <li><strong>Green Manuring:</strong> Growing specific crops like legumes that can be tilled back into the soil to add nutrients, particularly nitrogen, promoting healthy soil and reducing the need for synthetic fertilizers.</li>
            </ul>
            <p>
                The shift towards organic and sustainable farming is crucial for a healthier planet, as it helps mitigate the effects of climate change, promotes biodiversity, and ensures that future generations have access to safe, nutritious food. Governments, farmers, and consumers all have a role to play in supporting the growth of organic farming through incentives, education, and conscious purchasing decisions.
            </p>
        </div>
    </div>
</body>
</html>
