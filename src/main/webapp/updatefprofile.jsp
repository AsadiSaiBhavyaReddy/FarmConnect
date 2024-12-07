<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.Farmer" %>
<%
    // Retrieve the Farmer object from the session
    Farmer f = (Farmer) session.getAttribute("farmer");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FarmConnect - Farmer Update Profile</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .main-content {
            margin-left: 240px;
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

    <%@ include file="farmernavbar.jsp" %>

    <div class="main-content">
        <h3>Farmer Update Profile</h3>
        <div class="container">
            <form method="post" action="updateFarmer" onsubmit="return validateForm()">
                <label for="fid">Enter Id</label>
                <input type="number" name="fid" class="form-control" value="<%=f.getId() %>" readonly required/>
                
                <label for="fname">Enter Name</label>
                <input type="text" name="fname" class="form-control" value="<%=f.getName() %>" required/>

                <label>Select Gender</label>
                <div class="radio-group">
                    <div>
                        <input type="radio" name="fgender" value="male" class="form-check-input" 
                            <%= "male".equals(f.getGender()) ? "checked" : "" %> required/>
                        <label for="male">Male</label>
                    </div>
                    <div>
                        <input type="radio" name="fgender" value="female" class="form-check-input" 
                            <%= "female".equals(f.getGender()) ? "checked" : "" %> required/>
                        <label for="female">Female</label>
                    </div>
                    <div>
                        <input type="radio" name="fgender" value="others" class="form-check-input" 
                            <%= "others".equals(f.getGender()) ? "checked" : "" %> required/>
                        <label for="others">Others</label>
                    </div>
                </div>

                <label for="fdob">Select Date of Birth</label>
                <input type="date" name="fdob" class="form-control" value="<%=f.getDateofbirth() %>" required/>

                <label for="fcontact">Enter Contact No</label>
                <input type="tel" name="fcontact" class="form-control" value="<%=f.getContactno() %>" 
                    required pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number" maxlength="10"/>

                <label for="femail">Enter Email</label>
                <input type="email" name="femail" class="form-control" value="<%=f.getEmail() %>" 
                    readonly required pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Please enter a valid email address" />

                <label for="fpwd">Enter Password</label>
                <input type="password" name="fpwd" class="form-control" value="<%=f.getPassword() %>" required/>

                <label for="fcroptype">Crop Type</label>
                <input type="text" name="fcroptype" class="form-control" value="<%=f.getCropType() %>" required/>

                <label for="fnoofacres">Number of Acres</label>
                <input type="number" name="fnoofacres" class="form-control" value="<%=f.getNoOfAcres() %>" required/>

                <label for="flocation">Location</label>
                <input type="text" name="flocation" class="form-control" value="<%=f.getLocation() %>" required/>

                <input type="submit" class="btn btn-primary" value="Update"/>
                <input type="reset" class="btn btn-secondary" value="Clear"/>
            </form>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        function validateForm() {
            const contact = document.forms[0]["fcontact"].value;
            if (contact.length !== 10) {
                alert("Please enter a valid 10-digit contact number.");
                return false;
            }
            return true;
        }
    </script>

</body>
</html>
