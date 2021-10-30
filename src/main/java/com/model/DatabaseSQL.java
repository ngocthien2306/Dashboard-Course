package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseSQL {
	public static void main(String[] args) {
		String sqlConnect = "jdbc:postgresql://localhost:5432/dashboard";
		String username = "postgres";
		String password = "ngocthien2306.com";
		try {
			Connection connection = DriverManager.getConnection(sqlConnect, username, password );
			System.out.println("Ok");
			connection.close();
		} catch (SQLException e) {
			System.out.println("Error!");
			e.printStackTrace();
		}
		
	}
}
