<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FarmConnect</title>
    <!-- Include Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            background-color: black; /* Black background for the form */
            color: white; /* White text inside the form */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 600px;
            margin: 30px auto;
        }

        .form-container label {
            font-weight: bold;
        }

        .form-container .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .form-container .btn-primary:hover {
            background-color: #0056b3;
        }

        .form-container .btn-secondary {
            background-color: #6c757d;
            border: none;
        }

        .form-container .btn-secondary:hover {
            background-color: #5a6268;
        }

        h3 {
            color: black; /* Keep the heading in black */
        }
    </style>
</head>
<body>

<%@ include file="mainnavbar.jsp" %>
<h3 align="center">Expert Registration Form</h3>

<div class="container">
    <div class="form-container">
        <form method="post" action="insertexpert" onsubmit="return validateForm()">
            <label for="ename">Enter Name</label>
            <input type="text" name="ename" id="ename" class="form-control" required/>
            <br/>

            <label>Select Gender</label><br/>
            <input type="radio" name="egender" value="male" class="form-check-input" required/>&nbsp;&nbsp;&nbsp; Male
            <input type="radio" name="egender" value="female" class="form-check-input" required/>&nbsp;&nbsp;&nbsp; Female
            <input type="radio" name="egender" value="others" class="form-check-input" required/>&nbsp;&nbsp;&nbsp; Others
            <br/><br/>

            <label for="edob">Select Date of Birth</label>
            <input type="date" name="edob" id="edob" class="form-control" required/>
            <br/>

            <label>Select Expertise</label><br/>
            <input type="radio" name="eexp" value="Soil Scientist" class="form-check-input" required/>&nbsp;&nbsp;&nbsp; Soil Scientist
            <input type="radio" name="eexp" value="Fertilizer Expert" class="form-check-input" required/>&nbsp;&nbsp;&nbsp; Fertilizer Expert
            <input type="radio" name="eexp" value="Plant Pathologist" class="form-check-input" required/>&nbsp;&nbsp;&nbsp; Plant Pathologist
            <br/><br/>

            <label for="econtact">Enter Contact No</label>
            <input type="tel" name="econtact" id="econtact" class="form-control" required pattern="^[6-9][0-9]{9}$" title="Contact number must start with 6, 7, 8, or 9 and must be 10 digits long" maxlength="10"/>
            <br/>

            <label for="eemail">Enter Email</label>
            <input type="email" name="eemail" id="eemail" class="form-control" required pattern="^[a-zA-Z0-9._%+-]+@gmail\.com$" title="Email must be a valid @gmail.com address"/>
            <br/>

            <label for="epwd">Enter Password</label>
            <input type="password" name="epwd" id="epwd" class="form-control" required/>
            <br/>

            <input type="submit" class="btn btn-primary" value="Register"/>
            <input type="reset" class="btn btn-secondary" value="Clear"/>
        </form>
    </div>
</div>

<!-- Include Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    function validateForm() {
        var name = document.getElementById("ename").value.trim();
        var contact = document.getElementById("econtact").value.trim();
        var email = document.getElementById("eemail").value.trim();
        var password = document.getElementById("epwd").value;

        // Validate Name (should not be '1234' or 'abcd')
        if (name === "1234" || name.toLowerCase() === "abcd") {
            alert("Name cannot be '1234' or 'abcd'.");
            return false;
        }

        // Validate Contact Number (must start with 6, 7, 8, or 9 and be 10 digits long)
        if (!/^[6-9][0-9]{9}$/.test(contact)) {
            alert("Contact number must start with 6, 7, 8, or 9 and must be 10 digits long.");
            return false;
        }

        // Validate Email (must end with @gmail.com)
        var emailPattern = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;
        if (!emailPattern.test(email)) {
            alert("Email must be a valid @gmail.com address.");
            return false;
        }

        // Validate Password (at least 5 characters, 1 uppercase, 1 special character, and 1 number)
        var passwordPattern = /^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{5,}$/;
        if (!passwordPattern.test(password)) {
            alert("Password must be at least 5 characters long, contain one uppercase letter, one special character, and one number.");
            return false;
        }

        return true;
    }
</script>

</body>
</html>
