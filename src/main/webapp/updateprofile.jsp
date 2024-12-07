<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.Expert" %>
<%
    // Retrieve the Expert object from the session
    Expert e = (Expert) session.getAttribute("expert");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FarmConnect - Expert Update Profile</title>
    <!-- Include Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Custom styling for content layout */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        /* Sidebar Adjustment */
        .main-content {
            margin-left: 240px; /* Adjust for sidebar */
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin-top: 20px;
        }

        h3 {
            text-align: center;
            color: #343a40;
            margin-bottom: 20px;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .btn {
            width: 100%;
            margin-top: 10px;
        }

        /* Style adjustments for radio buttons */
        .radio-group {
            display: flex;
            justify-content: space-between;
            padding: 10px 0;
        }

        .radio-group label {
            margin-right: 15px;
        }

        .form-check-input {
            margin-right: 10px;
        }

    </style>
</head>
<body>

    <!-- Include Expert Navbar -->
    <%@ include file="expertnavbar.jsp" %>

    <!-- Main Content Wrapper -->
    <div class="main-content">
        <h3>Expert Update Profile</h3>

        <!-- Form to Update Expert Profile -->
        <div class="container">
            <form method="post" action="update" onsubmit="return validateForm()">
                <label for="eid">Enter Id</label>
                <input type="number" name="eid" class="form-control" value="<%=e.getId() %>" readonly   required/>
                <br/>
                
                <label for="ename">Enter Name</label>
                <input type="text" name="ename" class="form-control" value="<%=e.getName() %>"    required/>
                <br/>

                <label>Select Gender</label>
                <div class="radio-group">
                    <div>
                        <input type="radio" name="egender" value="male" class="form-check-input" required/>
                        <label for="male">Male</label>
                    </div>
                    <div>
                        <input type="radio" name="egender" value="female" class="form-check-input" required/>
                        <label for="female">Female</label>
                    </div>
                    <div>
                        <input type="radio" name="egender" value="others" class="form-check-input" required/>
                        <label for="others">Others</label>
                    </div>
                </div>

                <label for="edob">Select Date of Birth</label>
                <input type="date" name="edob" id="edob" class="form-control" required/>
                <br/>

                <label>Select Expertise</label>
                <div class="radio-group">
                    <div>
                        <input type="radio" name="eexp" value="Soil Scientist" class="form-check-input" required/>
                        <label for="soil-scientist">Soil Scientist</label>
                    </div>
                    <div>
                        <input type="radio" name="eexp" value="Fertilizer Expert" class="form-check-input" required/>
                        <label for="fertilizer-expert">Fertilizer Expert</label>
                    </div>
                    <div>
                        <input type="radio" name="eexp" value="Plant Pathologist" class="form-check-input" required/>
                        <label for="plant-pathologist">Plant Pathologist</label>
                    </div>
                </div>
                <br/>

                <label for="econtact">Enter Contact No</label>
                <input type="tel" name="econtact" class="form-control"  value="<%=e.getContactno() %>"    required pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number" maxlength="10"/>
                <br/>

                <label for="eemail">Enter Email</label>
                <input type="email" name="eemail" class="form-control"  value="<%=e.getEmail() %>" readonly      required pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Please enter a valid email address (must contain '@')" />
                <br/>

                <label for="epwd">Enter Password</label>
                <input type="password" name="epwd" class="form-control" value="<%=e.getPassword() %>"       required/>
                <br/>

                <input type="submit" class="btn btn-primary" value="Update"/>
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
            var contact = document.forms[0]["econtact"].value;
            var email = document.forms[0]["eemail"].value;

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

            return true;
        }
    </script>

</body>
</html>
