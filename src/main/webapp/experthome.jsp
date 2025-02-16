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
    <title>Welcome Expert</title>
    <style>
        /* Basic styling */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        /* Header styling */
        header {
            background-color: green;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 24px;
        }

        /* Main content styling */
        .main-content {
            margin-left: 240px;  /* Adjust for sidebar */
            padding: 20px;
        }
    </style>
</head>
<body>
    <!-- Include Sidebar (expertnavbar.jsp) -->
    <%@ include file="expertnavbar.jsp" %>

    <!-- Main Content Section -->
    <div class="main-content">
       
        <h1>Welcome, <%= e.getName() %>!</h1>
        <p>This is your dashboard where you can manage your profile and logout.</p>
    </div>
</body>
</html>
