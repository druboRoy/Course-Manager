package com.cms.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
	private static final String url = "jdbc:mysql://localhost:3306/cms";
	private static final String userName = "cms_user";
	private static final String pass = "strongpassword";
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(ClassNotFoundException e) {
			System.out.println(e);
		}
	}
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url,userName,pass);
	}
}
