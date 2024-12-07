<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.User" %>
<%
    // Retrieve the User object from the session
    User u = (User) session.getAttribute("user");

    // Null check to handle cases where the session does not contain the User object
    if (u == null) {
        response.sendRedirect("userlogin");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        /* Basic styling */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        /* Main content styling */
        .main-content {
            margin-left: 240px;  /* Adjust for sidebar */
            padding: 20px;
        }

        /* Profile Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

    </style>
</head>
<body>
    <!-- Include Sidebar (usernavbar.jsp) -->
    <%@ include file="usernavbar.jsp" %>

    <!-- Main Content Section -->
    <div class="main-content">
        <h3 align="center">My Profile</h3>
        
        <!-- Profile Information Table -->
        <table>
            <tr>
                <th>ID</th>
                <td><%= u.getId() %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= u.getName() %></td>
            </tr>
            <tr>
                <th>Gender</th>
                <td><%= u.getGender() %></td>
            </tr>
            <tr>
                <th>Date of Birth</th>
                <td><%= u.getDob() %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%= u.getEmail() %></td>
            </tr>
            <tr>
                <th>Contact Number</th>
                <td><%= u.getContact() %></td>
            </tr>
        </table>
    </div>
</body>
</html>
