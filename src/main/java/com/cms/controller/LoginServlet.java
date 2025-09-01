package com.cms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.cms.dao.UserDao;
import com.cms.model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = userDao.loginUser(username, password);

        if (user != null) {
            // Login successful, create session and store user info
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // Redirect based on user role
            String role = user.getRole();
//            System.out.println(role);
            if ("ADMIN".equals(role)) {
                response.sendRedirect("AdminDashboard.jsp");
            } else if ("TEACHER".equals(role)) {
                response.sendRedirect("TeacherDashboard.jsp");
            } else {
                response.sendRedirect("StudentDashboard.jsp");
            }
        } else {
            // Login failed, forward back to login page with an error message
            request.setAttribute("errorMessage", "Invalid username or password");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
    }
}