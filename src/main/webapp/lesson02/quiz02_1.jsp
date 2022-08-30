<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery : datepicker 라이브러리 위에 있어야 한다.  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- jquery slim 제거-->
<!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="display-4 text-center">
	<%
		Date now = new Date();
		SimpleDateFormat sdf;
		// SimpleDateFormat time = new SimpleDateFormat("현재 시간은 hh시 mm분 ss초 입니다.");
		// SimpleDateFormat date = new SimpleDateFormat("오늘 날짜는 yyyy년 MM월 dd일 입니다.");
		
		String type = request.getParameter("type");
		if (type.equals("time")) {
			sdf = new SimpleDateFormat("현재 시간은 hh시 mm분 ss초 입니다.");
			out.print(sdf.format(now));
			// out.print(time.format(now));
		} else if (type.equals("date")) {
			sdf = new SimpleDateFormat("오늘 날짜는 yyyy년 MM월 dd일 입니다.");
			out.print(sdf.format(now));
			// out.print(date.format(now));
		} 
	%>
	</div>
	
</body>
</html>