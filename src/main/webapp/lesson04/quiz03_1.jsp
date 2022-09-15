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
	a {text-decoration: none !important;}
	.text-orange {color: orange;}
	.bg-orange {background: orange;}
	.text-chocolate {color: chocolate;}
	.nav {height: 60px;}
	.nav a {font-size: 20px;}
	
	.contents {margin: 0 auto;}
</style>
</head>
<body>
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
		<!-- contents:update -->
		<section class="contents px-5">
			<div class="display-4 py-5">물건 올리기</div>
			<form method="post" action="/lesson04/quiz03_insert">
				<div class="d-flex justify-content-between">
					<select name="nickname" class="form-control col-3">
						<option>-아이디 선택-</option>
						<option>-</option>
					</select>
					<input type="text" name="title" placeholder="제목" class="form-control col-5">
					<div class="input-group col-3 px-0">
					  <input type="text" name="price" placeholder="가격" class="form-control">
					  <div class="input-group-append">
					    <span class="input-group-text">원</span>
					  </div>
					</div>
				</div>
			</form>
			<textarea rows="10" class="w-100 mt-3"></textarea>
			<div class="input-group mt-2">
			  <div class="input-group-prepend">
			    <span class="input-group-text">이미지 URL</span>
			  </div>
			  <input type="text" class="form-control">
			</div>
			<button type="submit" class="btn btn-light w-100 mt-3">저장</button>
		</section>
		<!-- footer -->
		<footer class="py-5 text-center">
			<small class="text-secondary">Copyright 2022. HONG All Rights Reserved.</small>
		</footer>
	</div>
</body>
</html>