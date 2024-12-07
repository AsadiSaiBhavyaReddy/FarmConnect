
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Email Form</title>
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
            width: 240px; /* Sidebar width */
            position: fixed;
            top: 0;
            left: 0;
            background-color: black; /* Black background */
            color: white;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
        }

        .sidebar h3 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: white;
        }

        .sidebar a {
            padding: 12px 20px;
            text-decoration: none;
            font-size: 16px;
            color: white; /* White text */
            display: block;
            border-bottom: 1px solid gray;
            transition: all 0.3s;
        }

        .sidebar a:hover {
            background-color: gray;
            color: black;
        }

        .sidebar a.active {
            background-color: white; /* Highlight active item */
            color: black;
        }

        /* Main Content Styling */
        .main-content {
            margin-left: 240px; /* Matches sidebar width */
            padding: 20px;
            background-color: #f8f9fa;
            min-height: 100vh;
        }

        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 600px;
            margin: auto;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: black;
        }

        .form-container label {
            font-weight: bold;
        }

        .form-container button {
            background-color: black; /* Black button */
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-container button:hover {
            background-color: gray;
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <h3>FarmConnect Admin</h3>
        <a href="adminhome">Home</a>
        <a href="viewallexperts">View All Experts</a>
        <a href="viewallfarmers">View All Farmers</a>
        <a href="viewallusers">View All Users</a>
        <a href="viewallproducts1">View All Products</a>
        <a href="viewexpertequests">Experts Requests</a>
        <a href="deleteexpert">Delete Expert</a>
        <a href="deletefarmer">Delete Farmer</a>
        <a href="deleteuser">Delete User</a>
        <a href="viewexpertbyid">View All Expert By Id</a>
        <a href="farmerreg1">Farmer Registration</a>
        <a href="emailForm" class="active">Send Mail</a>
        <a href="adminlogin">Log Out</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="form-container">
            <h2>Send Email</h2>
            <form action="/sendEmail" method="post">
                <div class="form-group">
                    <label for="from">From:</label>
                    <input type="email" class="form-control" id="from" name="from" placeholder="Enter your email" required>
                </div>
                <div class="form-group">
                    <label for="to">To:</label>
                    <input type="email" class="form-control" id="to" name="to" placeholder="Enter recipient's email" required>
                </div>
                <div class="form-group">
                    <label for="subject">Subject:</label>
                    <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter email subject" required>
                </div>
                <div class="form-group">
                    <label for="message">Message:</label>
                    <textarea class="form-control" id="message" name="message" rows="5" placeholder="Type your message here" required></textarea>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Send Email</button>
                </div>
            </form>
        </div>
    </div>

</body>
</html>
