package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService;
	
	private String url = "jdbc:mysql://localhost:3306/test_220617"; // 도메인 뒤에 접속할 데이터베이스명까지 적는다.
	private String id = "root";
	private String pw = "root";
	
	private Connection conn;
	private Statement statement;
	private ResultSet res;
	
	// Singleton 패턴: MysqlService라는 객체가 단 하나만 생성되도록 하는 디자인 패턴
	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	public void connect() {
		try {
			// 1. 드라이버 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());

			// 2. DB connection
			conn = DriverManager.getConnection(this.url, this.id, this.pw);
			
			// 3. statement: 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void disconnect() {
		try {
			// 연결 끊기
			statement.close();
			
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// select
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	// insert, update, delete
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
}
