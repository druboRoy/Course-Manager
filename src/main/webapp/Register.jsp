<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Registration - Course Management System</title>
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
            padding: 2rem;
            width: 100%;
            max-width: 480px;
            animation: fadeInUp 0.8s ease;
        }

        h2 {
            font-weight: 700;
            color: #2563eb;
        }

        .form-label {
            font-weight: 500;
            color: #475569;
        }

        .form-control, .form-select {
            border-radius: 0.75rem;
            padding: 0.75rem;
        }

        .btn {
            font-weight: 600;
            transition: all 0.3s ease;
            border-radius: 2rem;
        }

        .btn-success {
            background: #16a34a;
            border: none;
        }

        .btn-success:hover {
            background: #15803d;
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(22, 163, 74, 0.3);
        }

        .btn-outline-secondary {
            border: none;
            background: #f1f5f9;
            color: #334155;
        }

        .btn-outline-secondary:hover {
            background: #e2e8f0;
            color: #111827;
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(100, 116, 139, 0.2);
        }

        .alert {
            font-size: 0.9rem;
            border-radius: 0.75rem;
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
    <div class="card">
        <h2 class="text-center mb-4">📝 User Registration</h2>

        <!-- Display error or success messages -->
        <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            String successMessage = (String) request.getAttribute("successMessage");
            if (errorMessage != null) {
        %>
            <div class="alert alert-danger" role="alert"><%= errorMessage %></div>
        <%
            }
            if (successMessage != null) {
        %>
            <div class="alert alert-success" role="alert"><%= successMessage %></div>
        <%
            }
        %>

        <!-- Registration form -->
        <form action="register" method="post">
            <!-- Username -->
            <div class="mb-3">
                <label for="username" class="form-label">👤 Username</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
            </div>

            <!-- Password -->
            <div class="mb-3">
                <label for="password" class="form-label">🔒 Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
            </div>

            <!-- Role -->
            <div class="mb-3">
                <label for="role" class="form-label">🎓 Role</label>
                <select class="form-select" id="role" name="role" required>
                    <option value="">-- Select Role --</option>
                    <option value="teacher">Teacher</option>
                    <option value="student">Student</option>
                </select>
            </div>

            <!-- Buttons -->
            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-success btn-lg">✅ Register</button>
                <a href="index.jsp" class="btn btn-outline-secondary btn-lg">🏠 Home</a>
            </div>
        </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
