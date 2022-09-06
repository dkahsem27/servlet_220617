package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Quiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// response header -> contentType
		response.setContentType("text/plain");

		// db 연동, 커넥트 메소드 호출
		MysqlService ms = MysqlService.getInstance(); // 싱글턴 객체 생성
		ms.connect(); // DB연결
		
		// insert
		String insertQuery = "insert into `real_estate` (realtorId, address, area, type, price, rentPrice) "
				+ "values (3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null)";
		try {
			ms.update(insertQuery); // 인서트 수행
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		// select
		String selectQuery = "select `address`, `area`, `type` from `real_estate` order by `id` desc limit 10";
		
		// 출력
		try {
			PrintWriter out = response.getWriter();
			ResultSet resultSet = ms.select(selectQuery); // 셀렉트 수행
			
			while (resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area"); //Integer <- null 가능
				String type = resultSet.getString("type");
				out.println("매물주소: " + address + ", 면적: " + area + ", 타입: " + type);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// db 연결 해제
		ms.disconnect();
	}
}
