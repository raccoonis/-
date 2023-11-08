package db;

import java.sql.*;

public class DB {
	private String host = "jdbc:oracle:thin:@localhost:1521";
	private String username = "system";
	private String password = "1234";
	
	private Connection conn;
	
	public DB() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		this.conn = DriverManager.getConnection(host, username, password);
	}
	
	public ResultSet query(String queryStr) throws SQLException {
		PreparedStatement pstmt = conn.prepareStatement(queryStr);
		return pstmt.executeQuery();
	}
	
	public ResultSet query(String queryStr, Object[] params) throws SQLException {
		PreparedStatement pstmt = conn.prepareStatement(queryStr);
		for (int i = 0; i < params.length; i++) {
			pstmt.setObject(i + 1, params[i]);
		}
		return pstmt.executeQuery();
	}
}
