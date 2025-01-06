package com.ticket.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection 
{
	public static Connection conn = null;
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		if(conn==null || true) 
		{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/movieticket","root","12345");
		}
		return conn;
	}	
}