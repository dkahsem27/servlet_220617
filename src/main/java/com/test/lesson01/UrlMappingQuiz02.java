package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");	// 대문자HH는 24시간제, hh는 12시간제
		
		PrintWriter out = response.getWriter();
		out.println(sdf.format(now));
	}
}
