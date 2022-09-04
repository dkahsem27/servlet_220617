<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이번달 달력</title>
<!-- jQuery : datepicker 라이브러리 위에 있어야 한다.  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- jquery slim 제거-->
<!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<style type="text/css">
	table tr th:first-child, table tr td:first-child {color: red;}
	table tr th:last-child, table tr td:nth-child(7) {color: blue;}

</style>
</head>
<body>
<%
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	
	int year = cal.get(Calendar.YEAR); // 이번년도
	int month = cal.get(Calendar.MONTH) + 1; // 이번달 (0부터 시작하므로 +1)
	cal.set(year, month - 1, 1); // 시작날짜설정 (이번년도, 이번달(0부터 시작하므로 -1), 1일)
	
	int date = cal.get(Calendar.DATE); // 오늘날짜
	int day = cal.get(Calendar.DAY_OF_WEEK); // 오늘요일 일:1 ~ 토:7
	int endDate = cal.getActualMaximum(Calendar.DATE); // 이번달 마지막날
%>
	<div class="container">
		<h1 class="text-center py-3"><%= sdf.format(cal.getTime()) %></h1>
		<table class="table text-center">
			<thead>
				<tr>
					<th>일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>
			<tbody>
				<tr>
			<%
				for (int i = 1; i < day; i++) { // 시작일 이전 공백 설정
			%>
					<td class="display-4"> </td>
			<%
				}
			%>
			<%
				for (int i = 1; i <= endDate; i++) {
			%>
					<td class="display-4"><%= i %></td>
				
			<% 
					if (day % 7 == 0) { // 일주일 지나면 줄바꿈
			%>
					<tr>
			<%
					}
					day++;
				}
			%>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>