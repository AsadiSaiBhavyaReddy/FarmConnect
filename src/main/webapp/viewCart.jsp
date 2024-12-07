<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ include file="farmernavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
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
        .cart-container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .cart-item {
            display: flex;
            justify-content: space-between;
            padding: 15px;
            border-bottom: 1px solid #ddd;
            align-items: center;
        }
        .cart-item:last-child {
            border-bottom: none;
        }
        .item-details {
            flex-grow: 1;
        }
        .item-name {
            font-size: 1.2em;
            color: #333;
        }
        .item-description {
            font-size: 0.9em;
            color: #666;
        }
        .item-cost {
            font-weight: bold;
            color: #4CAF50;
        }
        .remove-btn {
            color: #e74c3c;
            font-weight: bold;
            cursor: pointer;
            border: none;
            background: none;
        }
        .cart-total {
            text-align: right;
            margin-top: 20px;
            font-size: 1.2em;
            font-weight: bold;
            color: #333;
        }
        .proceed-btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            font-size: 1.2em;
            cursor: pointer;
            margin-top: 20px;
            border-radius: 5px;
        }
        .proceed-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Your Cart</h2>
    <div class="cart-container">
        <c:if test="${not empty cartItems}">
            <c:forEach items="${cartItems}" var="item">
                <div class="cart-item">
                    <div class="item-details">
                        <div class="item-name"><c:out value="${item.name}"></c:out></div>
                        <div class="item-description"><c:out value="${item.description}"></c:out></div>
                        <div class="item-cost">$<c:out value="${item.cost}"></c:out></div>
                    </div>
                    <form method="post" action="removeFromCart">
                        <input type="hidden" name="productId" value="${item.id}">
                        <button type="submit" class="remove-btn">Remove</button>
                    </form>
                </div>
            </c:forEach>
            <div class="cart-total">
                
            </div>
            <button class="proceed-btn" onclick="window.location.href='paymentPage'">Proceed to Pay</button>
        </c:if>
        <c:if test="${empty cartItems}">
            <p>Your cart is empty!</p>
        </c:if>
    </div>
</body>
</html>
