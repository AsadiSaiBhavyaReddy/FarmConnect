<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FarmConnect - View All Experts</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

    <!-- Include Sidebar (adminnavbar.jsp) -->
    <%@ include file="adminnavbar.jsp" %>
    
    <!-- Main Content -->
    <div class="main-content" style="margin-left: 240px; padding: 20px;">
        <h2>View All Experts</h2>
        
        <p>Total Experts: <c:out value="${count}"></c:out></p>

       
        
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>DATE OF BIRTH</th>
                    <th>EXPERTISE FIELD</th>
                    <th>EMAIL</th>
                    <th>CONTACT NO</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${expertlist}" var="expert">
                    <tr>
                        <td><c:out value="${expert.id}"></c:out></td>
                        <td><c:out value="${expert.name}"></c:out></td>
                        <td><c:out value="${expert.gender}"></c:out></td>
                        <td><c:out value="${expert.dateofbirth}"></c:out></td>
                        <td><c:out value="${expert.expertise}"></c:out></td>
                        <td><c:out value="${expert.email}"></c:out></td>
                        <td><c:out value="${expert.contactno}"></c:out></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
