<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FarmConnect - View Products</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

    <!-- Include Sidebar (sellernavbar.jsp) -->
    <%@ include file="sellernavbar.jsp" %>
    
    <!-- Main Content -->
    <div class="main-content" style="margin-left: 240px; padding: 20px;">
        <h2>View All Products</h2>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>DESCRIPTION</th>
                    <th>COST</th>
                    <th>PRODUCT LINK</th>
                    <th>IMAGE</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate over the product list and display product details -->
                <c:forEach items="${productList}" var="product">
                    <tr>
                        <td><c:out value="${product.id}"></c:out></td>
                        <td><c:out value="${product.name}"></c:out></td>
                        <td><c:out value="${product.description}"></c:out></td>
                        <td><c:out value="${product.cost}"></c:out></td>
                        <td>
                            <!-- Display product URL as clickable link -->
                            <a href="${product.url}" target="_blank"><c:out value="${product.url}"></c:out></a>
                        </td>
                        <td>
                            <!-- Display image (assuming product has an image stored as Blob) -->
                            <img src="displayprodimage?id=${product.id}" alt="Product Image" width="100">
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
