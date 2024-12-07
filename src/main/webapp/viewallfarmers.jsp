<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FarmConnect - View All Farmers</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

    <!-- Include Sidebar (farmernavbar.jsp) -->
    <%@ include file="adminnavbar.jsp" %>
    
    <!-- Main Content -->
    <div class="main-content" style="margin-left: 240px; padding: 20px;">
        <h2>View All Farmers</h2>
        
        <p>Total Farmers: <c:out value="${count1}"></c:out></p>
        
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>DATE OF BIRTH</th>
                    <th>CONTACT NO</th>
                    <th>EMAIL</th>
                    <th>CROP TYPE</th>
                    <th>NO OF ACRES</th>
                    <th>LOCATION</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${farmerlist}" var="farmer">
                    <tr>
                        <td><c:out value="${farmer.id}"></c:out></td>
                        <td><c:out value="${farmer.name}"></c:out></td>
                        <td><c:out value="${farmer.gender}"></c:out></td>
                        <td><c:out value="${farmer.dateofbirth}"></c:out></td>
                        <td><c:out value="${farmer.contactno}"></c:out></td>
                        <td><c:out value="${farmer.email}"></c:out></td>
                        <td><c:out value="${farmer.cropType}"></c:out></td>
                        <td><c:out value="${farmer.noOfAcres}"></c:out></td>
                        <td><c:out value="${farmer.location}"></c:out></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
