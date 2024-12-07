<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Government Subsidies</title>
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

        /* Government Schemes Section */
        .govt-schemes {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        /* Heading inside Government Schemes */
        .govt-schemes h2 {
            text-align: center;
            color: #28a745;
        }

        /* Paragraph inside Government Schemes */
        .govt-schemes p {
            font-size: 16px;
            color: #555;
            text-align: justify;
        }

        /* List inside Government Schemes */
        .govt-schemes ul {
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
        <!-- Government Schemes Section -->
        <div class="govt-schemes">
            <h2>Government Subsidies</h2>
            <p>
                Government schemes and subsidies play a crucial role in supporting farmers by providing financial assistance, ensuring food security, and promoting agricultural growth. These programs help farmers adopt modern farming techniques, increase productivity, and overcome financial challenges. With the right resources and government support, farmers can improve their livelihood and contribute to the nation's agricultural success.
            </p>
            <h3>Key Government Schemes and Subsidies:</h3>
            <ul>
                <li><strong>Pradhan Mantri Fasal Bima Yojana (PMFBY):</strong> Provides crop insurance to farmers to protect them against crop loss due to natural calamities, pests, and diseases.</li>
                <li><strong>National Mission on Agricultural Extension and Technology (NMAET):</strong> Aims to promote agricultural technology and extension services to enhance farm productivity.</li>
                <li><strong>Soil Health Management (SHM):</strong> Offers financial assistance for soil testing, training farmers in maintaining soil health, and promoting sustainable agricultural practices.</li>
                <li><strong>Subsidy for Drip and Sprinkler Irrigation Systems:</strong> Encourages efficient water usage by providing subsidies to farmers for installing irrigation systems.</li>
                <li><strong>Rashtriya Krishi Vikas Yojana (RKVY):</strong> Aimed at improving agricultural production and income, this scheme promotes the overall development of the agricultural sector.</li>
                <li><strong>Pradhan Mantri Krishi Sinchayee Yojana (PMKSY):</strong> Focuses on increasing irrigation coverage in agricultural areas, ensuring water use efficiency, and improving farm productivity.</li>
            </ul>
            <p>
                These schemes are part of the government's effort to create a sustainable, productive, and prosperous agricultural ecosystem. Farmers can avail of these subsidies and schemes through various government portals, banks, and agricultural cooperatives. With continuous support and subsidies, agriculture can remain a thriving sector, contributing to food security and economic growth.
            </p>
        </div>
    </div>
</body>
</html>
