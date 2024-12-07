<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>  <!-- Correct JSTL URI -->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FarmConnect</title>
</head>
<body>
    <!-- Display the 'message' attribute from the request -->
    <c:out value="${message}" /><br/>
    <!-- Link to the expert login page -->
    <a href="adminlogin">Try Again</a>
</body>
</html>
