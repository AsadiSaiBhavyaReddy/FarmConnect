<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FarmConnect - Delete User</title>
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
        <h2>Delete User</h2>

        <!-- Table to display users -->
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>DATE OF BIRTH</th>
                    <th>CONTACT NO</th>
                    <th>EMAIL</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through the user list and display each user -->
                <c:forEach items="${userlist}" var="user">
                    <tr>
                        <td><c:out value="${user.id}"></c:out></td>
                        <td><c:out value="${user.name}"></c:out></td>
                        <td><c:out value="${user.gender}"></c:out></td>
                        <td><c:out value="${user.dob}"></c:out></td>
                        <td><c:out value="${user.contact}"></c:out></td>
                        <td><c:out value="${user.email}"></c:out></td>
                        <td>
                            <!-- Link to trigger the delete action for this user -->
                            <a href='<c:url value="delete2?id=${user.id}" />' onclick="return confirm('Are you sure you want to delete this user?');">DELETE</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
