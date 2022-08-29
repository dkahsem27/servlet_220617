package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String keyword = request.getParameter("keyword");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>검색하기</title></head><body>");
		
		Iterator<String> iter = list.iterator();
		while (iter.hasNext()) {
			String line = iter.next();
//			if (line.contains(keyword)) {
//				line = line.replace(keyword, "<strong>" + keyword + "</strong>");
//				out.print(line + "<br>");
//			}
			
			// 풀이 1
//			if (line.contains(keyword)) {
//				line = line.replaceAll(keyword + "/g", "<b>" + keyword + "</b>"); // replaceAll 메소드를 쓰면 정규식으로 표현 가능
//				out.print(line + "<br>");
//			}
			
			// 풀이 2
			if (line.contains(keyword)) {
				String[] words = line.split(keyword);
				out.print(words[0] + "<b>" + keyword + "</b>" + words[1] + "<br>");
			}
		}
		
//		for (int i = 0; i < list.size(); i++) {
//			// 리스트 하나씩 돌아야 함
//			// list에 i번째가 contains keyword 가 참이면 해당 i번째 list를 출력한다
//			if (list.get(i).contains(keyword)) {
//				out.print(list.get(i) + "<br>");
//			}
//		}
		
//		for (String line : list) {
//			if (list.get(i).contains(keyword)) {
//				out.print(list.get(i) + "<br>");
//			}
//		}
		
		out.print("</body></html>");
		
	}
}
