<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Course Management System</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #e0f2fe, #f8fafc);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            border: none;
            border-radius: 1.5rem;
            background: #fff;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
            animation: fadeInUp 0.8s ease;
        }

        h1 {
            font-weight: 600;
            color: #334155;
        }

        h2 {
            font-weight: 700;
            color: #2563eb;
        }

        .btn {
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .btn-primary {
            background: #2563eb;
            border: none;
        }

        .btn-primary:hover {
            background: #1d4ed8;
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(37, 99, 235, 0.3);
        }

        .btn-outline-primary:hover {
            background: #2563eb;
            color: #fff;
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(37, 99, 235, 0.3);
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card p-5 text-center" style="max-width: 480px; margin: auto;">
            <h1 class="mb-3">Welcome to</h1>
            <h2 class="mb-4">Course Management System</h2>
            <p class="text-muted mb-4">Please choose an option to continue</p>

            <div class="d-grid gap-3">
                <a href="Login.jsp" class="btn btn-primary btn-lg rounded-pill">
                    🔑 Login
                </a>
                <a href="Register.jsp" class="btn btn-outline-primary btn-lg rounded-pill">
                    📝 Register
                </a>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
