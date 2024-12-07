<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FarmConnect</title>
    <style>
        /* Basic styling */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4; /* Light background color for the page */
        }

        /* Header styling */
        header {
            background-color: #28a745; /* Vibrant green for header */
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Soft shadow effect */
        }

        /* Sidebar styling */
        .sidebar {
            width: 220px;
            background-color: #ffffff; /* White background for sidebar */
            height: 100vh; /* Full viewport height */
            position: fixed;
            top: 0;
            left: 0;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            border-right: 2px solid #ddd; /* Thin border on the right of the sidebar */
            overflow-y: auto; /* Makes the sidebar scrollable */
        }

        /* Sidebar links styling */
        .sidebar a {
            padding: 12px 20px;
            text-decoration: none;
            color: #333;
            display: block;
            transition: background 0.3s, box-shadow 0.3s;
            margin: 8px 0;
            border-radius: 4px;
            font-size: 16px; /* Slightly larger font size for readability */
        }

        .sidebar a:hover {
            background-color: #f0f0f0; /* Light gray background on hover */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2); /* Subtle shadow for hover effect */
        }

        /* Main content styling */
        .main-content {
            margin-left: 240px; /* To account for the sidebar width */
            padding: 20px;
        }

        /* Responsive adjustments */
        @media screen and (max-width: 768px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
                box-shadow: none;
                border-right: none;
            }
            .sidebar a {
                font-size: 18px;
            }
            .main-content {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        Welcome to FarmConnect User Dashboard
    </header>

    <!-- Sidebar Section -->
    <div class="sidebar">
        <a href="userhome">Home</a>
        <a href="userprofile">My Profile</a>
        <a href="updateuprofile">Update Profile</a>
        <a href="about">About</a>
        <a href="air">Agri-Info</a>
        <a href="gss">Govt Subsidies</a>
        <a href="mts">Market Services</a>
        <a href="tsd">Training and Development</a>
        <a href="sof">Sustainability and Organic Farming</a>
        <a href="hls">Health and Livelihood Support</a>
        <a href="pft">Promote Fair Trade</a>
        <a href="schemespart">Schemes Information</a>
        <a href="userlogout">Logout</a>
    </div>

    <!-- Main Content Section -->
    <div class="main-content">
        <!-- Content for the user dashboard will be here -->
    </div>
</body>
</html>
