<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%@ page import="java.util.List" %> --%>
<%-- <%@ page import="java.util.Arrays" %> --%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<!-- jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요. -->
	<%!
		public int getSum(int n) {
			int sum = 0;
			for (int i = 1; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	<h1>1부터 50까지의 합은 <%= getSum(50) %> 입니다</h1>
	
	<!-- 스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요. -->
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		for (int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		double avg = (double)sum / scores.length;
	%>
	<h1>평균 점수는 <%=avg %>입니다</h1>
	
	<!-- 아래 채점표로 시험점수가 몇점인지 구하세요. -->
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int resultScore = 0;
		/* Iterator<String> iter = scoreList.iterator();
		while (iter.hasNext()) {
			String score = iter.next();
			if (score.equals("O")) {
				resultScore += 100 / scoreList.size();
			}
		} */
		for (int i = 0; i < scoreList.size(); i++) {
			if (scoreList.get(i).equals("O")) {
				resultScore += 100 / scoreList.size();
			}
		}
	%>
	<h1>채점 결과는 <%= resultScore %>점 입니다.</h1>
	
	<!-- 주어진 생년월일을 가진 사람의 나이를 구하세요. -->
	<%
		String birthDay = "20010820";
		String birthYear = birthDay.substring(0, 4);
		// out.print(birthYear);
		int birthYearInt = Integer.parseInt(birthYear); // 2001
		
		int age = 2022 - birthYearInt + 1; // 한국나이 +1
	%>
	<h1> <%= birthDay %>의 나이는 <%= age %>세 입니다</h1>
</body>
</html>