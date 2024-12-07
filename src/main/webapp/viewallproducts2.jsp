<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ include file="farmernavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Products</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        h2 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }
        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
        }
        .product-card {
            width: 250px;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            text-align: center;
            transition: transform 0.3s ease;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            height: 380px; /* Fixed height for all product cards */
        }
        .product-card:hover {
            transform: scale(1.05);
        }
        .product-image img {
            width: 100%;
            height: 200px; /* Fixed height for images */
            object-fit: cover; /* Ensures the image covers the space without distortion */
        }
        .product-details {
            padding: 15px;
            flex-grow: 1;
        }
        .product-details h3 {
            font-size: 1.2em;
            color: #333;
            margin-bottom: 10px;
        }
        .product-details p {
            font-size: 0.9em;
            color: #666;
            margin-bottom: 10px;
        }
        .product-cost {
            font-weight: bold;
            color: #4CAF50;
            margin-bottom: 15px;
        }
        .product-link {
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
        }
        .product-link:hover {
            text-decoration: underline;
        }
        .cart-btn {
            font-size: 1.2em;
            cursor: pointer;
            color: #4CAF50;
            background: none;
            border: 1px solid #4CAF50;
            padding: 5px 15px;
            border-radius: 5px;
            transition: background 0.3s ease;
        }
        .cart-btn:hover {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <h2>Products</h2>
    <div class="product-container">
        <c:forEach items="${productList}" var="product">
            <div class="product-card">
                <div class="product-image">
                    <img src="displayprodimage2?id=${product.id}" alt="Product Image">
                </div>
                <div class="product-details">
                    <h3><c:out value="${product.name}"></c:out></h3>
                    <p><c:out value="${product.description}"></c:out></p>
                    <p class="product-cost">$<c:out value="${product.cost}"></c:out></p>
                    
                    <form method="post" action="addToCart">
                        <input type="hidden" name="productId" value="${product.id}">
                        <button type="submit" class="cart-btn">🛒 Add to Cart</button>
                    </form>
                </div>
            </div>
        </c:forEach>
    </div>

    <div style="text-align: center; margin-top: 20px;">
        <!-- <a href="viewCart">View Cart</a> -->
    </div>
</body>
</html>
