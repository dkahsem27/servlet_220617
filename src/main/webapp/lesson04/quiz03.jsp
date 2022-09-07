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
<style type="text/css">
	li {list-style: none;}
	a {text-decoration: none !important;}
	.text-orange {color: orange;}
	.bg-orange {background: orange;}
</style>
</head>
<body>
	<div class="container">
		<!-- header -->
		<header class="bg-orange">
			<h1><a href="#" class="text-center text-white">HONG당무 마켓</a></h1>
			<ul class="nav">
				<li class="nav-items"><a href="#" class="nav-link text-white">리스트</a></li>
				<li class="nav-items"><a href="#" class="nav-link text-white">물건 올리기</a></li>
				<li class="nav-items"><a href="#" class="nav-link text-white">마이 페이지</a></li>
			</ul>
		</header>
		<!-- contents:list -->
		<div class="list">
			<ul class="d-flex flex-wrap">
				<li>
					<div>
						<img alt="" src="상품이미지">
						<div class="font-weight-bold">[팝니다] 맥북 프로 팔아요</div>
						<div class="text-secondary">1800000원</div>
						<div class="text-orange">최준</div>
					</div>
				</li>
				<li>
					<div>
						<img alt="" src="상품이미지">
						<div class="font-weight-bold">[팝니다] 맥북 프로 팔아요</div>
						<div class="text-secondary">1800000원</div>
						<div class="text-orange">최준</div>
					</div>
				</li>
				<li>
					<div>
						<img alt="" src="상품이미지">
						<div class="font-weight-bold">[팝니다] 맥북 프로 팔아요</div>
						<div class="text-secondary">1800000원</div>
						<div class="text-orange">최준</div>
					</div>
				</li>
				<li>
					<div>
						<img alt="" src="상품이미지">
						<div class="font-weight-bold">[팝니다] 맥북 프로 팔아요</div>
						<div class="text-secondary">1800000원</div>
						<div class="text-orange">최준</div>
					</div>
				</li>
			</ul>
		</div>
		<!-- footer -->
		<footer>
			<div class="text-secondary">Copyright 2022. HONG All Rights Reserved.</div>
		</footer>
	</div>
</body>
</html>