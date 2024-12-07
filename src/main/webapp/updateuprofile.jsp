<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.User" %>
<%
    // Retrieve the User object from the session
    User user = (User) session.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update User Profile - FarmConnect</title>
    <style>
        /* Main content styling */
        .main-content {
            margin-left: 240px; /* Matches the sidebar width */
            padding: 20px;
        }

        h3 {
            text-align: center;
            color: #343a40;
            margin-bottom: 20px;
        }

        .form-control {
            margin-bottom: 15px;
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .btn {
            width: 100%;
            margin-top: 10px;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-primary {
            background-color: green;
            color: white;
        }

        .btn-secondary {
            background-color: #ddd;
            color: black;
        }

        .btn-primary:hover {
            background-color: darkgreen;
        }

        .btn-secondary:hover {
            background-color: #bbb;
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
    <!-- Include the Navbar -->
    <jsp:include page="usernavbar.jsp" />

    <!-- Main Content Section -->
    <div class="main-content">
        <h3>Update User Profile</h3>
        <form method="post" action="updateUser" onsubmit="return validateForm()">
            <label for="uid">User ID</label>
            <input type="number" name="uid" class="form-control" value="<%=user.getId() %>" readonly required/>

            <label for="uname">Name</label>
            <input type="text" name="uname" class="form-control" value="<%=user.getName() %>" required/>

            <label>Gender</label>
            <div class="radio-group">
                <div>
                    <input type="radio" name="ugender" value="male" class="form-check-input" 
                        <%= "male".equals(user.getGender()) ? "checked" : "" %> required/>
                    <label for="male">Male</label>
                </div>
                <div>
                    <input type="radio" name="ugender" value="female" class="form-check-input" 
                        <%= "female".equals(user.getGender()) ? "checked" : "" %> required/>
                    <label for="female">Female</label>
                </div>
                <div>
                    <input type="radio" name="ugender" value="others" class="form-check-input" 
                        <%= "others".equals(user.getGender()) ? "checked" : "" %> required/>
                    <label for="others">Others</label>
                </div>
            </div>

            <label for="udob">Date of Birth</label>
            <input type="date" name="udob" class="form-control" value="<%=user.getDob() %>" required/>

            <label for="ucontact">Contact No</label>
            <input type="tel" name="ucontact" class="form-control" value="<%=user.getContact() %>" 
                required pattern="[0-9]{10}" title="Enter a valid 10-digit phone number" maxlength="10"/>

            <label for="uemail">Email</label>
            <input type="email" name="uemail" class="form-control" value="<%=user.getEmail() %>" readonly required/>

            <label for="upwd">Password</label>
            <input type="password" name="upwd" class="form-control" value="<%=user.getPassword() %>" required/>

            <input type="submit" class="btn btn-primary" value="Update"/>
            <input type="reset" class="btn btn-secondary" value="Clear"/>
        </form>
    </div>

    <script>
        function validateForm() {
            const contact = document.forms[0]["ucontact"].value;
            if (contact.length !== 10) {
                alert("Please enter a valid 10-digit contact number.");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
