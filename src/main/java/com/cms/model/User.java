package com.cms.model;

public class User {
    private int id;
    private String username;
    private String role;
    private String password;

    // Getters and Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getUsername() { return username; }
    public void setUsername(String username) { this.username = username; }
    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
    public String getPassword() {return password;}
    public void setPassword(String pass) {this.password=pass;}
}
