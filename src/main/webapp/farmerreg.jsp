<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FarmConnect - Farmer Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Background image for the page */
        body {
            background-image: url('https://eu-images.contentstack.com/v3/assets/bltdd43779342bd9107/blt1645b96b020bdced/64380d5d8d2c523d0da7467d/543212762.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            font-family: Arial, sans-serif; /* Set font for the page */
        }

        /* Main Content Box with black background */
        .content {
            margin-top: 100px;
            background-color: rgba(0, 0, 0, 0.8); /* Black background with opacity */
            color: white; /* White text color for contrast */
            padding: 40px;
            border-radius: 12px; /* Rounded corners for the box */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            width: 50%;
            margin-left: auto;
            margin-right: auto;
        }

        h3 {
            color: white;
            text-align: center;
        }

        label {
            color: white;
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }

        input[type="text"], input[type="date"], input[type="email"], input[type="password"], input[type="tel"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 8px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            color: black;
            background-color: #f8f9fa; /* Light background for input fields */
        }

        .radio-group {
            display: flex;
            gap: 10px;
        }

        input[type="submit"], input[type="reset"] {
            width: auto;
            padding: 10px 20px;
            margin-top: 20px;
            border: none;
            border-radius: 8px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #45a049;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .input-group-append button {
            background-color: #4CAF50;
            color: white;
            border-radius: 8px;
            border: none;
        }

        .input-group-append button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<%@ include file="mainnavbar.jsp" %>
<h3 align="center">Farmer Registration Form</h3>

<div class="container content">
    <form method="post" action="insertfarmer" onsubmit="return validateForm()">
        <label for="fname">Enter Name</label>
        <input type="text" name="fname" class="form-control" required/>
        <br/>

        <label>Select Gender</label><br/>
        <input type="radio" name="fgender" value="male" class="form-check-input" required/> &nbsp;&nbsp;&nbsp;&nbsp;Male   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="radio" name="fgender" value="female" class="form-check-input" required/>&nbsp;&nbsp;&nbsp;&nbsp; Female&nbsp;&nbsp;&nbsp;
        <input type="radio" name="fgender" value="others" class="form-check-input" required/>&nbsp;&nbsp;&nbsp;&nbsp; Others&nbsp;&nbsp;&nbsp;
        <br/><br/>

        <label for="fcontact">Enter Contact No</label>
        <input type="tel" name="fcontact" class="form-control" required pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number" maxlength="10"/>
        <br/>

        <label for="fdob">Select Date of Birth</label>
        <input type="date" name="fdob" id="fdob" class="form-control" required/>
        <br/>

        <label for="femail">Enter Email</label>
        <input type="email" name="femail" class="form-control" required pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Please enter a valid email address (must contain '@')" />
        <br/>

        <label for="fpwd">Enter Password</label>
        <div class="input-group">
            <input 
                type="password" 
                name="fpwd" 
                id="fpwd" 
                class="form-control" 
                required 
                pattern="(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[A-Za-z0-9!@#$%^&*]{5,}" 
                title="Password must be at least 5 characters long, include one uppercase letter, one number, and one special character."
            />
            <div class="input-group-append">
                <button 
                    type="button" 
                    class="btn btn-outline-secondary" 
                    id="togglePassword" 
                    onclick="togglePasswordVisibility()">Show</button>
            </div>
        </div>
        <br/>

        <label for="fcrop">Type of Crop</label>
        <input type="text" name="fcrop" class="form-control" required/>
        <br/>

        <label for="facres">Number of Acres</label>
        <input type="number" name="facres" class="form-control" required/>
        <br/>

        <label for="flocation">Enter Location</label>
        <input type="text" name="flocation" class="form-control" required/>
        <br/>

        <input type="submit" class="btn btn-primary" value="Register"/>
        <input type="reset" class="btn btn-secondary" value="Clear"/>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    // Password visibility toggle
    function togglePasswordVisibility() {
        const passwordField = document.getElementById('fpwd');
        const toggleButton = document.getElementById('togglePassword');
        if (passwordField.type === 'password') {
            passwordField.type = 'text';
            toggleButton.innerText = 'Hide';
        } else {
            passwordField.type = 'password';
            toggleButton.innerText = 'Show';
        }
    }

    // Form validation
    function validateForm() {
        var password = document.forms[0]["fpwd"].value;

        // Check password pattern explicitly
        const passwordPattern = /(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[A-Za-z0-9!@#$%^&*]{5,}/;
        if (!passwordPattern.test(password)) {
            alert("Password must be at least 5 characters long, include one uppercase letter, one number, and one special character.");
            return false;
        }

        return true;
    }
</script>

</body>
</html>
