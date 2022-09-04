<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱</title>
<!-- jQuery : datepicker 라이브러리 위에 있어야 한다.  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        

<!-- bootstrap CDN link -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- jquery slim 제거-->
<!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style type="text/css">
	.detail {font-size: 14px;}
	.detail-title {min-width: 80px;}
</style>
</head>
<body>
	<div class="container">
		<!-- header -->
		<header class="d-flex align-items-center py-3">
			<h1 class="text-success">Melong</h1>
			<div class="d-flex ml-5 w-100">
				<input type="text" class="form-control col-5">
				<a href="#" class="btn btn-info">검색</a>
			</div>
		</header>
		<!-- nav -->
		<nav class="mt-3">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
			</ul>
		</nav>
		<!-- contents:list -->
		<div class="contents w-100 mt-4">
			<!-- 아티스트 정보 -->
			<div class="d-flex p-3 border border-success">
				<img alt="아티스트이미지" width=180 src="http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG">
				<div class="ml-4">
					<h2 class="font-weight-bold">아이유</h2>
					<div>EDAM엔터테인먼트</div>
					<div>2008 데뷔</div>
				</div>
			</div>
			<!-- 곡 목록 -->
			<div class="mt-4">
				<h3 class="mb-3 font-weight-bold">곡 목록</h3>
				<div class="px-3">
					<table class="table text-center">
						<thead>
							<tr class="row">
								<th class="col-3">No</th>
								<th class="col-6">제목</th>
								<th class="col-3">앨범</th>
							</tr>
						</thead>
						<tbody>
							<tr class="row">
								<td class="col-3">1</td>
								<td class="col-6"><a href="#">팔레트</a></td>
								<td class="col-3">Palette</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- contents:detail -->
		<div class="contents w-100 mt-4">
			<!-- 곡 정보 -->
			<h4 class="mb-3 font-weight-bold">곡 정보</h4>
			<div class="d-flex p-3 border border-success">
				<img alt="앨범이미지" width=200 src="https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG">
				<div class="ml-4">
					<h2>삐삐</h2>
					<div class="text-success font-weight-bold mb-3">아이유</div>
					<div class="text-secondary detail">
						<div class="d-flex">
							<div class="detail-title">앨범</div>
							<div>삐삐</div>
						</div>
						<div class="d-flex">
							<div class="detail-title">재생시간</div>
							<div>3:14</div>
						</div>
						<div class="d-flex">
							<div class="detail-title">작곡가</div>
							<div>이종훈</div>
						</div>
						<div class="d-flex">
							<div class="detail-title">작사가</div>
							<div>아이유</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 가사 -->
			<div class="mt-4">
				<h4 class="mb-3 font-weight-bold">가사</h4>
				<hr>
				<div>가사 정보 없음</div>
			</div>
		</div>
		<!-- footer -->
		<footer class="py-3">
			<hr>
			<small class="text-secondary">Copyright 2022. Melong All Rights Reserved.</small>
		</footer>
	</div>
</body>
</html>