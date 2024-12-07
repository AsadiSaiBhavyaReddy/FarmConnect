<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FarmConnect - Seller Registration</title>
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

        /* Main Content Box */
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

        /* Add black background color to the form specifically */
        form {
            background-color: black; /* Set black background color for the form */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.5);
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

<h3 align="center">Seller Registration Form</h3>

<div class="container">
    <form method="post" action="insertseller" onsubmit="return validateForm()">
        <label for="sname">Enter Name</label>
        <input type="text" name="sname" class="form-control" required/>
        <br/>

        <label>Select Gender</label><br/>
        <input type="radio" name="sgender" value="male" required/> Male
        <input type="radio" name="sgender" value="female" required/> Female
        <input type="radio" name="sgender" value="others" required/> Others
        <br/>

        <label for="sdob">Select Date of Birth</label>
        <input type="date" name="sdob" class="form-control" required/>
        <br/>

        <label for="scontact">Enter Contact No</label>
        <input type="tel" name="scontact" class="form-control" required pattern="[0-9]{10}" maxlength="10" title="Please enter a valid 10-digit contact number"/>
        <br/>

        <label for="semail">Enter Email</label>
        <input type="email" name="semail" class="form-control" required pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Please enter a valid email address with '@'"/>
        <br/>

        <label for="spwd">Enter Password</label>
        <input type="password" name="spwd" class="form-control" required pattern="(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{5,}" 
        title="Password must be at least 5 characters long and include one capital letter, one number, and one special character."/>
        <br/>

        <label for="sbusinessName">Enter Business Name</label>
        <input type="text" name="sbusinessName" class="form-control" required/>
        <br/>

        <label for="sproductsType">Enter Products Selling Types</label>
        <input type="text" name="sproductsType" class="form-control" required/>
        <br/>

        <label for="saddress">Enter Address</label>
        <input type="text" name="saddress" class="form-control" required/>
        <br/>

        <label for="sregistration_date">Select Registration Date</label>
        <input type="date" name="sregistration_date" class="form-control" required/>
        <br/>

        <input type="submit" class="btn btn-primary" value="Register"/>
        <input type="reset" class="btn btn-secondary" value="Clear"/>
    </form>
</div>

<!-- Include Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    function validateForm() {
        var contact = document.forms[0]["scontact"].value;
        var email = document.forms[0]["semail"].value;
        var password = document.forms[0]["spwd"].value;

        // Validate Contact Number (exactly 10 digits)
        if (contact.length !== 10) {
            alert("Please enter a valid 10-digit contact number.");
            return false;
        }

        // Validate Email (should contain '@')
        if (!email.includes("@")) {
            alert("Please enter a valid email address with '@'.");
            return false;
        }

        // Validate Password (5+ characters, one capital letter, one number, one special character)
        var passwordRegex = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{5,}$/;
        if (!passwordRegex.test(password)) {
            alert("Password must be at least 5 characters long and include one capital letter, one number, and one special character.");
            return false;
        }

        return true;
    }
</script>

</body>
</html>
