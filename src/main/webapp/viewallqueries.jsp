<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FarmConnect - View Queries</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

    <!-- Include Sidebar (expertnavbar.jsp) -->
    <%@ include file="expertnavbar.jsp" %>
    
    <!-- Main Content -->
    <div class="main-content" style="margin-left: 240px; padding: 20px;">
        <h2>View All Queries</h2>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>FARMER NAME</th>
                    <th>CONTACT NO</th>
                    <th>QUERY</th>
                    <th>REPLY</th>  <!-- New column for Reply button -->
                </tr>
            </thead>
            <tbody>
                <!-- Iterate over the query list and display query details -->
                <c:forEach items="${querylist}" var="query">
                    <tr>
                        <td><c:out value="${query.id}"></c:out></td>
                        <td><c:out value="${query.name}"></c:out></td>
                        <td><c:out value="${query.contactNo}"></c:out></td>
                        <td><c:out value="${query.query}"></c:out></td>
                        <td>
                            <!-- Reply Button, redirects to reply page with query ID -->
                            <a href="addreply" class="btn btn-primary">Reply</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
