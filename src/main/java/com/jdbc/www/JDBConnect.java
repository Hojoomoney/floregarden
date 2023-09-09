package com.jdbc.www;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;

public class JDBConnect {

	public Connection conn;
	public PreparedStatement pstmt;
	public ResultSet rs;

	public JDBConnect() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "hr";
			String pwd = "hr";
			conn = DriverManager.getConnection(url,id,pwd);
			System.out.println("DB 연결 성공");

		} catch (Exception e) {
			System.out.println("DB 연결 실패");
		}

	}
	public void close() {

		try {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
			System.out.println("JDBC 자원해제");
		} catch (SQLException e) {
			System.out.println("JDBC 자원해제 실패" + e.getMessage());
		}
	}

	public JDBConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("OracleDriver");
			Class.forName(driver);
			String url = application.getInitParameter("OracleUrl");
			String id = application.getInitParameter("OracleId");
			String pwd = application.getInitParameter("OraclePwd");
			conn = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB 연결 성공(매개변수 생성자)");

		} catch (Exception e) {
			System.out.println("DB 연결 실패(매개변수 생성자): " + e.getMessage());
		}
	}

}
