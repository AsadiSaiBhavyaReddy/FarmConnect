<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Success</title>
</head>
<body>
    <h1>Product Added Successfully!</h1>
    <p><c:out value="${message}" /></p>
    <a href="viewallproducts">View All Products</a>
</body>
</html>
