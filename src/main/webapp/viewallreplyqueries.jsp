<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FarmConnect - View All Reply Queries</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

    <!-- Include Sidebar (sellernavbar.jsp) -->
    <%@ include file="farmernavbar.jsp" %>
    
    <!-- Main Content -->
    <div class="main-content" style="margin-left: 240px; padding: 20px;">
        <h2>View All Reply Queries</h2>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Reply ID</th>
                    <th>Query ID</th>
                    <th>Reply Description</th>
                    <th>Expert Name</th>
                    <th>Timestamp</th>
                   
                </tr>
            </thead>
            <tbody>
                <!-- Iterate over the reply query list and display details -->
                <c:forEach items="${replyqueryList}" var="replyQuery">
                    <tr>
                        <td><c:out value="${replyQuery.id}"></c:out></td>
                        <td><c:out value="${replyQuery.queryId}"></c:out></td>
                        <td><c:out value="${replyQuery.reply}"></c:out></td>
                        <td><c:out value="${replyQuery.expertName}"></c:out></td>
                        <td><c:out value="${replyQuery.timestamp}"></c:out></td>
                        <td>
                            <!-- Display reply URL as clickable link -->
                 
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
