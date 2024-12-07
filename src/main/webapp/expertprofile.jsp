<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.Expert" %>
<%
    // Retrieve the Expert object from the session
    Expert e = (Expert) session.getAttribute("expert");

    // Null check to handle cases where the session does not contain the Expert object
    if (e == null) {
        response.sendRedirect("expertlogin");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expert Profile</title>
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
    <!-- Include Sidebar (expertnavbar.jsp) -->
    <%@ include file="expertnavbar.jsp" %>

    <!-- Main Content Section -->
    <div class="main-content">
        <h3 align="center">My Profile</h3>
        
        <!-- Profile Information Table -->
        <table>
            <tr>
                <th>ID</th>
                <td><%= e.getId() %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= e.getName() %></td>
            </tr>
            <tr>
                <th>Gender</th>
                <td><%= e.getGender() %></td>
            </tr>
            <tr>
                <th>Date of Birth</th>
                <td><%= e.getDateofbirth() %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%= e.getEmail() %></td>
            </tr>
            <tr>
                <th>Expertise</th>
                <td><%= e.getExpertise() %></td>
            </tr>
            <tr>
                <th>Contact Number</th>
                <td><%= e.getContactno() %></td>
            </tr>
        </table>
    </div>
</body>
</html>
