<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- jquery slim 제거-->
<!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style type="text/css">
	* {box-sizing: border-box;}
	li {list-style: none;}
	a {text-decoration: none !important;}
	.text-orange {color: orange;}
	.bg-orange {background: orange;}
	.text-chocolate {color: chocolate;}
	.nav {height: 60px;}
	.nav a {font-size: 20px;}
	
	.item {width: 32%; border: 1px solid orange;}
	.item:not(:last-child, :nth-child(3n)) {margin-right: 2%;}
	.item:hover {background: orange; transition: all 200ms;}
	.item > .inner {overflow: hidden; cursor: default;}
	.image {width: 100%; height: 200px; background: #eee; text-align: center; line-height: 200px; font-size: 25px;}
	.image > img {min-width: 100%; height: 200px; object-fit: cover;}
</style>
</head>
<body>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select * from `seller` as a join `used_goods` as b on a.id = b.sellerId order by b.id desc";
	ResultSet result = ms.select(selectQuery);
%>
	<div class="container">
		<!-- header -->
		<header class="bg-orange">
			<h1 class="py-3 text-center">
				<a href="/lesson04/quiz03.jsp" class="text-center font-weight-bold text-white">홍당무 마켓</a>
			</h1>
			<ul class="nav nav-fill align-items-center justify-content-around">
				<li class="nav-items"><a href="/lesson04/quiz03.jsp" class="nav-link text-white font-weight-bold">리스트</a></li>
				<li class="nav-items"><a href="/lesson04/quiz03_1.jsp" class="nav-link text-white font-weight-bold">물건 올리기</a></li>
				<li class="nav-items"><a href="#" class="nav-link text-white font-weight-bold">마이 페이지</a></li>
			</ul>
		</header>
		<!-- contents:list -->
		<div class="list">
			<ul class="d-flex flex-wrap w-100 pl-0">
			<%
				while (result.next()) {
					if (result.getString("pictureUrl") == null || result.getString("pictureUrl").equals("")) {
			%>
				<li class="item mt-3 p-3">
					<div class="inner">
						<div class="image"><div class="text-secondary">이미지 없음</div></div>
						<div class="mt-2 font-weight-bold"><%= result.getString("title") %></div>
						<div class="mt-1 text-secondary"><%= result.getInt("price") %>원</div>
						<div class="mt-1 text-chocolate"><%= result.getString("nickname") %></div>
					</div>
				</li>
			<%
					} else {
			
			%>
				<li class="item mt-3 p-3">
					<div class="inner">
						<div class="image"><img src="<%= result.getString("pictureUrl") %>" alt="상품이미지"></div>
						<div class="mt-2 font-weight-bold"><%= result.getString("title") %></div>
						<div class="mt-1 text-secondary"><%= result.getInt("price") %>원</div>
						<div class="mt-1 text-chocolate"><%= result.getString("nickname") %></div>
					</div>
				</li>
			<%
					}
				}
			%>
			</ul>
		</div>
		<!-- footer -->
		<footer class="py-5 text-center">
			<small class="text-secondary">Copyright 2022. HONG All Rights Reserved.</small>
		</footer>
	</div>
<%
	ms.disconnect();
%>
</body>
</html>