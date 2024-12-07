<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>View All Expert Requests</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
            margin: 20px 0;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .btn-danger {
            background-color: #f44336;
        }
        .btn-danger:hover {
            background-color: #da190b;
        }
    </style>
</head>
<body>
    <h1>Expert Requests</h1>
    <c:if test="${not empty experts}">
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Date of Birth</th>
                    <th>Expertise</th>
                    <th>Contact No</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="expert" items="${experts}">
                    <tr>
                        <td>${expert.id}</td>
                        <td>${expert.name}</td>
                        <td>${expert.gender}</td>
                        <td>${expert.dateofbirth}</td>
                        <td>${expert.expertise}</td>
                        <td>${expert.contactno}</td>
                        <td>${expert.email}</td>
                        <td>
                            <form action="approveExpert" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${expert.id}" />
                                <button type="submit">Approve</button>
                            </form>
                            <form action="declineExpert" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${expert.id}" />
                                <button type="submit" class="btn-danger">Decline</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
    <c:if test="${empty experts}">
        <p>No expert requests found.</p>
    </c:if>
</body>
</html>
