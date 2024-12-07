<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.klef.jfsd.springboot.model.Expert" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FarmConnect - Display Experts</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Basic styling */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Light background color */
        }

        /* Sidebar adjustment */
        .main-content {
            margin-left: 240px;  /* Adjust for sidebar */
            padding: 20px;
        }

        /* Table styling */
        table {
            width: 80%;
            margin: 0 auto; /* Center align */
            border-collapse: collapse;
            background-color: #ffffff; /* White background */
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Light shadow */
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
            font-size: 16px;
        }

        th {
            background-color: #000000; /* Black background */
            color: #ffffff; /* White text */
        }

        td {
            color: #495057; /* Darker text for readability */
        }

        tr:hover {
            background-color: #f1f3f5; /* Row hover effect */
        }

        h3 {
            text-align: center;
            color: #343a40;
            margin-bottom: 20px;
        }

        .back-button {
            margin-bottom: 10px;
            text-align: left;
        }

        .back-button a {
            margin-left: 9%; /* Align with the table */
        }
    </style>
</head>
<body>
    <!-- Include Admin Navbar -->
    <%@ include file="adminnavbar.jsp" %>

    <!-- Main Content -->
    <div class="main-content">
        <h3>Display Experts</h3>

        <!-- Back Button -->
        <div class="back-button">
            <a href="viewexpertbyid" class="btn btn-primary">Back</a>
        </div>
        
        <!-- Table to Display Expert Information -->
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Date of Birth</th>
                <th>Email</th>
                <th>Expertise</th>
                <th>Contact Number</th>
            </tr>
            <tr>
                <td><c:out value="${c.id}" /></td>
                <td><c:out value="${c.name}" /></td>
                <td><c:out value="${c.gender}" /></td>
                <td><c:out value="${c.dateofbirth}" /></td>
                <td><c:out value="${c.email}" /></td>
                <td><c:out value="${c.expertise}" /></td>
                <td><c:out value="${c.contactno}" /></td>
            </tr>
        </table>
    </div>
</body>
</html>