<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FarmConnect</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<!-- Include Sidebar (adminnavbar.jsp) -->
<%@ include file="adminnavbar.jsp" %>

<!-- Main Content Section -->
<div class="main-content" style="margin-left: 240px; padding: 20px;">
    <h3 class="text-center mt-4"><u>View Expert By Expertise</u></h3>

    <div class="container mt-5">
        <form method="post" action="displayexpert">
            <div class="form-group">
                <label for="auname">Select Expertise of Expert</label>
                <select name="id" class="form-control" required>
                    <option value="">---Select---</option>
                    <c:forEach items="${expertlist}" var="expert">
                        <option value="${expert.id}">${expert.id} - ${expert.name}</option>
                    </c:forEach>
                </select>
            </div>

            <button type="submit" class="btn btn-primary">View</button>
            <button type="reset" class="btn btn-secondary">Clear</button>
        </form>
    </div>
</div>

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
