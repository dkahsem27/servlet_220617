package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		int n1 = Integer.parseInt(request.getParameter("number1"));
		int n2 = Integer.valueOf(request.getParameter("number2"));
		int addition = n1 + n2;
		int subtraction = n1 - n2;
		int multiplication = n1 * n2;
		int division = n1 / n2;
		
		PrintWriter out = response.getWriter();
		
//		{
//		    "addition": 1570,
//		    "subtraction": 1430,
//		    "multiplication": 105000,
//		    "division": 21
//		}		
		out.print("{" + 
				"\"addition\":" + addition + 
				", \"subtraction\":" + subtraction + 
				", \"multiplication\":" + multiplication + 
				", \"division\":" + division + 
				"}");
	}
}
