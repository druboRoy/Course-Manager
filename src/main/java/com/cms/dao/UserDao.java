package com.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.cms.model.User;
import com.cms.Util.DB;

public class UserDao {
    public User loginUser(String username, String password) {
        User user = null;
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";

        try (Connection conn = DB.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, username);
            stmt.setString(2, password);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setRole(rs.getString("role"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
    
    public boolean checkUsernameExists(String username) {
        String sql = "SELECT id FROM users WHERE username = ?";
        try (Connection conn = DB.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            return rs.next(); // true if found
        } catch (SQLException e) {
        	System.out.println("database issue 1");
        	System.out.println(e);
//            e.printStackTrace();
        }
        return false;
    }

    public boolean registerUser(User user) {
        if (checkUsernameExists(user.getUsername())) {
            return false; // username already taken
        }

        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
        try (Connection conn = DB.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword()); 
            ps.setString(3, user.getRole());
            int rows = ps.executeUpdate();
            return rows > 0;
        } catch (SQLException e) {
        	System.out.println("database issue 2");
        	System.out.println(e);
//            e.printStackTrace();
        }
        return false;
    }
}