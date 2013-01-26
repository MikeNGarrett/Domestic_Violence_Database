package org.worldbank.connector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Connector {

	public void connectToAndQueryDatabase(String username, String password) throws Exception 
	{
		Connection con = DriverManager.getConnection("jdbc:myDriver:myDatabase", username, password);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT a, b, c FROM Table1");

		while (rs.next()) 
		{
			int x = rs.getInt("a");
			String s = rs.getString("b");
			float f = rs.getFloat("c");
		}
	}
}

/*
 * 
 * 
 * public Connection getConnection() throws SQLException { Connection conn =
 * null; Properties connectionProps = new Properties();
 * connectionProps.put("user", this.username); connectionProps.put("password",
 * this.password);
 * 
 * if (this.dbms.equals("mysql")) { conn = DriverManager.getConnection( "jdbc:"
 * + this.dbms + "://" + this.serverName + ":" + this.portNumber + "/",
 * connectionProps); } System.out.println("Connected to database"); return conn;
 * }
 * 
 * 
 * public static void main (String [] args) { try { Class.forName(””); //Or any
 * other driver } catch(Exception x) { System.out.println( “Unable to load the
 * driver class!” ); }
 * 
 * } }
 */