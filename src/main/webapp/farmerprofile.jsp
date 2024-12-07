<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.Farmer" %>
<%
   Farmer f = (Farmer) session.getAttribute("farmer");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Profile</title>
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
    <!-- Include Sidebar (farmernavbar.jsp) -->
    <%@ include file="farmernavbar.jsp" %>

    <!-- Main Content Section -->
    <div class="main-content">
        <h3 align="center">My Profile</h3>
        
        <!-- Profile Information Table -->
        <table>
            <tr>
                <th>ID</th>
                <td><%= f.getId() %></td>
            </tr>
            <tr>
                <th>Name</th>
                <td><%= f.getName() %></td>
            </tr>
            <tr>
                <th>Gender</th>
                <td><%= f.getGender() %></td>
            </tr>
            <tr>
                <th>Date of Birth</th>
                <td><%= f.getDateofbirth() %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%= f.getEmail() %></td>
            </tr>
            <tr>
                <th>Contact Number</th>
                <td><%= f.getContactno() %></td>
            </tr>
            <tr>
                <th>Crop Type</th>
                <td><%= f.getCropType() %></td>
            </tr>
            <tr>
                <th>Number of Acres</th>
                <td><%= f.getNoOfAcres() %></td>
            </tr>
            <tr>
                <th>Location</th>
                <td><%= f.getLocation() %></td>
            </tr>
        </table>
    </div>
</body>
</html>
