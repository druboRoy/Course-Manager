package com.cms.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cms.dao.UserDao;
import com.cms.model.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        User user = new User();
        user.setUsername(username);
        user.setPassword(password); 
        user.setRole(role);

        boolean success = userDao.registerUser(user);

        if (success) {
            // Registration successful → redirect to login page
            request.setAttribute("successMessage", "Registration successful! Please log in.");
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        } else {
            // Username already exists
            request.setAttribute("errorMessage", "Username already taken. Please choose another.");
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        }
    }
}
