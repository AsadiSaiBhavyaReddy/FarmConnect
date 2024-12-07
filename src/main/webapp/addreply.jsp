<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Reply to Query</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .sidebar {
            height: 100vh;
            background-color: #f8f9fa;
            padding-top: 20px;
            position: fixed;
            width: 250px;
        }
        .sidebar a {
            display: block;
            padding: 10px 15px;
            text-decoration: none;
            color: #000;
            font-size: 18px;
        }
        .sidebar a:hover {
            background-color: #ddd;
        }
        .content {
            margin-left: 260px;
            padding: 20px;
        }
    </style>
</head>
<body>
    <%@ include file="expertnavbar.jsp" %>  <!-- Include expert's navbar -->

 
    <!-- Main content -->
    <div class="content">
        <h2>Add Reply to Query</h2>
        <form method="post" action="insertreply" enctype="multipart/form-data">
            <div class="form-group">
                <label for="queryId">Query ID:</label>
                <input type="text" id="queryId" name="queryId" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="reply">Reply Description:</label>
                <textarea id="reply" name="reply" class="form-control" required></textarea>
            </div>
            <div class="form-group">
                <label for="expertName">Expert Name:</label>
                <input type="text" id="expertName" name="expertName" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="timestamp">Timestamp:</label>
                <input type="date" id="timestamp" name="timestamp" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="replyUrl">Reply URL (Optional):</label>
                <input type="text" id="replyUrl" name="replyUrl" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">Submit Reply</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
