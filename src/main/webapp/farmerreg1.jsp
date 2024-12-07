<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FarmConnect - Farmer Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<%@ include file="adminnavbar.jsp" %>
<h3 align="center">Farmer Registration Form</h3>

<div class="container">
    <form method="post" action="insertfarmer1" onsubmit="return validateForm()">
        <label for="fname">Enter Name</label>
        <input type="text" name="fname" class="form-control" required/>
        <br/>

        <label>Select Gender</label><br/>
        <input type="radio" name="fgender" value="male" class="form-check-input" required/>&nbsp;&nbsp;&nbsp; Male
        <input type="radio" name="fgender" value="female" class="form-check-input" required/>&nbsp;&nbsp;&nbsp; Female
        <input type="radio" name="fgender" value="others" class="form-check-input" required/>&nbsp;&nbsp;&nbsp; Others
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
        <input type="password" name="fpwd" class="form-control" required/>
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
    function validateForm() {
        var contact = document.forms[0]["fcontact"].value;
        var email = document.forms[0]["femail"].value;

        // Validate Contact Number (exactly 10 digits)
        if (contact.length !== 10) {
            alert("Please enter a valid 10-digit contact number.");
            return false;
        }

        // Validate Email (should contain '@')
        if (!email.includes("@")) {
            alert("Please enter a valid email address with '@' symbol.");
            return false;
        }

        return true;
    }
</script>

</body>
</html>
