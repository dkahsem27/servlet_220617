<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<form method="post" action="/lesson04/ex02_insert">
		<p>
			<b>이름</b>
			<input type="text" name="name"><br>
		</p>
		<p>
			<b>생년월일</b>
			<input type="text" name="yyyymmdd"><br>
		</p>
		<p>
			<b>이메일</b>
			<input type="text" name="email"><br>
		</p>
		<p>
			<b>자기소개</b>
			<textarea rows="5" cols="50" name="introduce"></textarea>
		</p>
		<p>
			<input type="submit" value="추가">
		</p>
	</form>
</body>
</html>