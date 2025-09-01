<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Management System</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <div class="container d-flex flex-column justify-content-center align-items-center vh-100">
        <div class="card shadow-lg p-5 rounded-4" style="max-width: 500px; width: 100%;">
            <h1 class="text-center mb-4">Welcome to</h1>
            <h2 class="text-center text-primary mb-4">Course Management System</h2>

            <p class="text-center text-muted mb-5">
                Please choose an option to continue
            </p>

            <div class="d-grid gap-3">
                <a href="Login.jsp" class="btn btn-primary btn-lg rounded-pill">Login</a>
                <a href="Register.jsp" class="btn btn-outline-primary btn-lg rounded-pill">Register</a>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
