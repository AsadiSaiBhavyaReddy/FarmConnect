<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FarmConnect - View Contents</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px;
        }

        .card {
            flex: 1 1 calc(30% - 20px); /* Increase the width to 30% */
            max-width: 30%;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column;
        }

        .card:hover {
            transform: translateY(-10px); /* Slight hover effect */
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .card img {
            height: 200px;
            object-fit: cover;
            width: 100%;
        }

        .card-body {
            display: flex;
            flex-direction: column;
            justify-content: space-between; /* This keeps the content at the top and the button at the bottom */
            gap: 10px;
            padding: 15px;
            background-color: #fff;
            height: 100%;
        }

        .btn-view {
            text-align: center;
            margin-top: auto; /* Push the button to the bottom */
        }

        .card-title {
            font-size: 1.2rem;
            font-weight: bold;
        }

        .card-text {
            font-size: 1rem;
            color: #555;
        }

        .btn-primary {
            width: 100%;
            padding: 8px;
        }
    </style>
</head>
<body>

    <!-- Include Sidebar -->
    <%@ include file="farmernavbar.jsp" %>

    <!-- Main Content -->
    <div class="main-content" style="margin-left: 240px; padding: 20px;">
        <h2>View All Contents</h2>
        <div class="card-container">
            <!-- Iterate over the content list and display content details -->
            <c:forEach items="${contentlist}" var="content">
                <div class="card">
                    <!-- Display image -->
                    <c:if test="${content.image != null}">
                        <img src="displayprodimage9?id=${content.id}" alt="Content Image" class="card-img-top">
                    </c:if>
                    <div class="card-body">
                        <h5 class="card-title"><c:out value="${content.name}"/></h5>
                        <p class="card-text"><c:out value="${content.description}"/></p>
                        <!-- Display URL if available -->
                        <c:if test="${content.url != null}">
                            <p class="btn-view">
                                <a href="${content.url}" target="_blank" class="btn btn-primary btn-sm">Visit URL</a>
                            </p>
                        </c:if>
                        <!-- Display PDF link if available -->
                        <%-- <c:if test="${content.pdfUpload != null}">
                            <p>
                                <a href="displaypdf?id=${content.id}" target="_blank" class="btn btn-secondary btn-sm">View PDF</a>
                            </p>
                        </c:if> --%>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

</body>
</html>
