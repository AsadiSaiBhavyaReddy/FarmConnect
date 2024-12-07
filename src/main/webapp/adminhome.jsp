<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FarmConnect - Data Visualization</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!-- Include Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <!-- Include Sidebar (adminnavbar.jsp) -->
    <%@ include file="adminnavbar.jsp" %>
    
    <!-- Main Content -->
    <div class="main-content" style="margin-left: 240px; padding: 20px;">
        <h2>FarmConnect - Total Experts</h2>

        <!-- Individual Chart for Total Experts -->
        <canvas id="expertsChart" width="300" height="150"></canvas>

        <h2>FarmConnect - Total Farmers</h2>

        <!-- Individual Chart for Total Farmers -->
        <canvas id="farmersChart" width="300" height="150"></canvas>

        <h2>FarmConnect - Total Users</h2>

        <!-- Individual Chart for Total Users -->
        <canvas id="usersChart" width="300" height="150"></canvas>

        <h2>FarmConnect - Comparison of Total Experts, Farmers, and Users</h2>

        <!-- Comparison Chart for Total Experts, Total Farmers, and Total Users -->
        <canvas id="comparisonChart" width="500" height="250"></canvas>

        <script>
            // Get data from JSP variables
            var totalExperts = ${count};  // Passed from the controller
            var totalFarmers = ${count1};  // Passed from the controller
            var totalUsers = ${count2};  // Passed from the controller

            // Individual Chart for Total Experts
            var ctx1 = document.getElementById('expertsChart').getContext('2d');
            var expertsChart = new Chart(ctx1, {
                type: 'bar',
                data: {
                    labels: ['Experts'],
                    datasets: [{
                        label: 'Total Experts',
                        data: [totalExperts],
                        backgroundColor: 'rgba(54, 162, 235, 0.6)', // Blue
                        borderColor: 'rgba(54, 162, 235, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });

            // Individual Chart for Total Farmers
            var ctx2 = document.getElementById('farmersChart').getContext('2d');
            var farmersChart = new Chart(ctx2, {
                type: 'bar',
                data: {
                    labels: ['Farmers'],
                    datasets: [{
                        label: 'Total Farmers',
                        data: [totalFarmers],
                        backgroundColor: 'rgba(75, 192, 192, 0.6)', // Green
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });

            // Individual Chart for Total Users
            var ctx3 = document.getElementById('usersChart').getContext('2d');
            var usersChart = new Chart(ctx3, {
                type: 'bar',
                data: {
                    labels: ['Users'],
                    datasets: [{
                        label: 'Total Users',
                        data: [totalUsers],
                        backgroundColor: 'rgba(255, 159, 64, 0.6)', // Orange
                        borderColor: 'rgba(255, 159, 64, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });

            // Comparison Chart for Total Experts, Farmers, and Users
            var ctx4 = document.getElementById('comparisonChart').getContext('2d');
            var comparisonChart = new Chart(ctx4, {
                type: 'bar',
                data: {
                    labels: ['Experts', 'Farmers', 'Users'],
                    datasets: [{
                        label: 'Total',
                        data: [totalExperts, totalFarmers, totalUsers],
                        backgroundColor: [
                            'rgba(54, 162, 235, 0.6)',  // Blue for Experts
                            'rgba(75, 192, 192, 0.6)',  // Green for Farmers
                            'rgba(255, 159, 64, 0.6)'   // Orange for Users
                        ],
                        borderColor: [
                            'rgba(54, 162, 235, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
        </script>
    </div>

</body>
</html>
