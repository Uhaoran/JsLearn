package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public class JdbcConn {
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rset = null;

	private static final String URL = "jdbc:postgresql://localhost:5432/hr";
	private static final String USER = "postgres";
	private static final String PASSWORD = "postgres";
	
	/**
	  * データベース連接
	  * @return
	  * @throws ClassNotFoundException
	  */

	 public Connection getDbcom() throws ClassNotFoundException {
	  if (conn == null) {
	   Class.forName("org.postgresql.Driver");
	   try {
	    conn = DriverManager.getConnection(URL, USER, PASSWORD);
	    stmt = conn.createStatement();
	   } catch (SQLException ex) {
	   }
	  }
	  return conn;

	 }

	 public ResultSet tt(String sql) throws SQLException {
	  ResultSet resultSet;
	  Statement query = null;
	  try {
	   query = conn.createStatement();
	  } catch (SQLException ex) {
	   Logger.getLogger(JdbcConn.class.getName()).log(Level.SEVERE, null, ex);
	  }
	  resultSet = query.executeQuery(sql);

	  return resultSet;
	 }

	 public void insert(String sql) throws SQLException {

	  System.out.println(sql);
	  stmt.execute(sql);

	 }

	 public void closeDbcom() throws SQLException {
	  if (rset != null) {
	   rset.close();
	  }
	  if (stmt != null) {
	   stmt.close();
	  }
	  if (conn != null) {
	   conn.close();
	  }
	 }
	
}
