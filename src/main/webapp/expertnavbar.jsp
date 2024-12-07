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
            margin-left: 240px;
            padding: 20px;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        Welcome to FarmConnect
    </header>

    <!-- Sidebar Section -->
    <div class="sidebar">
        <a href="experthome">Home</a>
        <a href="expertprofile">My Profile</a>
         <a href="updateprofile">Update Profile</a>
         <a href="viewallfarmers">View All Farmers</a>
          <a href="addcontent">Add Content</a>
           <a href="viewallcontents">View All Content</a>
           <a href="viewallqueries">View Queries</a>
            
        <a href="expertlogout">Logout</a>
    </div>

    
</body>
</html>
