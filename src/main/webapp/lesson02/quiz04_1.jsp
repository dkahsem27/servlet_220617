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
	<%
		int num1 = Integer.valueOf(request.getParameter("num1"));
		int num2 = Integer.valueOf(request.getParameter("num2"));
		String[] signArr = request.getParameterValues("sign");
		double result = 0;
		String signStr = "";
		for (String sign : signArr) {
			if (sign.equals("+")) {
				result = (double)num1 + num2;
				signStr = "+";
			} else if (sign.equals("-")) {
				result = (double)num1 - num2;
				signStr = "-";
			} else if (sign.equals("*")) {
				result = (double)num1 * num2;
				signStr = "X";
			} else if (sign.equals("/")) {
				result = (double)num1 / num2;
				signStr = "÷";
			}
		}
		
	%>
	
	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-3">
			<%= num1 %> <%= signStr %> <%= num2 %> = 
			<span class="text-info"><%= result %></span>
		</div>
	</div>
</body>
</html>