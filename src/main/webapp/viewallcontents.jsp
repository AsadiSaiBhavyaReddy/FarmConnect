<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FarmConnect - View Contents</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

    <!-- Include Sidebar -->
    <%@ include file="expertnavbar.jsp" %>
    
    <!-- Main Content -->
    <div class="main-content" style="margin-left: 240px; padding: 20px;">
        <h2>View All Contents</h2>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>URL</th>
                    <th>Image</th>
                  <!--   <th>PDF</th> -->
                </tr>
            </thead>
            <tbody>
                <!-- Iterate over the content list and display content details -->
                <c:forEach items="${contentlist}" var="content">
                    <tr>
                        <td><c:out value="${content.id}"></c:out></td>
                        <td><c:out value="${content.name}"></c:out></td>
                        <td><c:out value="${content.description}"></c:out></td>
                        <td>
                            <!-- Display URL as a clickable link -->
                            <a href="${content.url}" target="_blank"><c:out value="${content.url}"></c:out></a>
                        </td>
                        <td>
                            <!-- Display image if available -->
                            <c:if test="${content.image != null}">
                                <img src="displayprodimage9?id=${content.id}" alt="Content Image" width="100">
                            </c:if>
                        </td>
                        <td>
                           <%--  <!-- Display PDF link if available -->
                            <c:if test="${content.pdfUpload != null}">
                                <a href="displaypdf?id=${content.id}" target="_blank">View PDF</a>
                            </c:if> --%>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
