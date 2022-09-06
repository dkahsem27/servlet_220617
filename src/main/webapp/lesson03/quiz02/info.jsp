<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//아티스트 정보 
	
	Map<String, Object> artistInfo = new HashMap<>();
	artistInfo.put("name", "아이유");
	artistInfo.put("debute", 2008);
	artistInfo.put("agency", "EDAM엔터테인먼트");
	artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
	
	
	//아이유 노래 리스트 
	List<Map<String, Object>> musicList = new ArrayList<>();
	
	Map<String, Object> musicInfo = new HashMap<>();
	musicInfo.put("id", 1);
	musicInfo.put("title", "팔레트");
	musicInfo.put("album", "Palette");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	musicInfo.put("time", 217);
	musicInfo.put("composer", "아이유");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);
	
	musicInfo = new HashMap<>();
	musicInfo.put("id", 2);
	musicInfo.put("title", "좋은날");
	musicInfo.put("album", "Real");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
	musicInfo.put("time", 233);
	musicInfo.put("composer", "이민수");
	musicInfo.put("lyricist", "김이나");
	musicList.add(musicInfo);
	
	musicInfo = new HashMap<>();
	musicInfo.put("id", 3);
	musicInfo.put("title", "밤편지");
	musicInfo.put("album", "palette");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
	musicInfo.put("time", 253);
	musicInfo.put("composer", "제휘,김희원");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);
	
	musicInfo = new HashMap<>();
	musicInfo.put("id", 4);
	musicInfo.put("title", "삐삐");
	musicInfo.put("album", "삐삐");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
	musicInfo.put("time", 194);
	musicInfo.put("composer", "이종훈");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);
	
	musicInfo = new HashMap<>();
	musicInfo.put("id", 5);
	musicInfo.put("title", "스물셋");
	musicInfo.put("album", "CHAT-SHIRE");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
	musicInfo.put("time", 194);
	musicInfo.put("composer", "아이유,이종훈,이채규");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);
	
	musicInfo = new HashMap<>();
	musicInfo.put("id", 6);
	musicInfo.put("title", "Blueming");
	musicInfo.put("album", "Love poem");
	musicInfo.put("singer", "아이유");
	musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
	musicInfo.put("time", 217);
	musicInfo.put("composer", "아이유,이종훈,이채규");
	musicInfo.put("lyricist", "아이유");
	musicList.add(musicInfo);
%>

<%
	// 상세정보를 보여줄 target map 세팅
	Map<String, Object> target = null;
	
	// 1. 목록에서 클릭하고 들어온 경우(id값)
	if (request.getParameter("id") != null) {
		int paramId = Integer.parseInt(request.getParameter("id"));
		for (Map<String, Object> music : musicList) {
			if (paramId == (int)music.get("id")) {
				target = music;
				break; // id는 값이 하나기 때문에 반복문을 덜 돌리기 위해서 break;
			}
		}
	}
	
	// 2. 상단에서 검색한 경우(search값)
	if (request.getParameter("search") != null) {
		String paramSearch = request.getParameter("search");
		for (Map<String, Object> music : musicList) {
			if (paramSearch.equals((String)music.get("title"))) { // Object인 상태이기 때문에 String으로 캐스팅 해준다
				target = music;
				break;
			}
		}
	}
%>
<%
	if (target != null) {
%>
<section class="contents w-100 mt-4">
	<!-- 곡 정보 -->
	<h4 class="mb-3 font-weight-bold">곡 정보</h4>
	<div class="d-flex p-3 border border-success">
		<img alt="앨범이미지" width=200 src="<%= target.get("thumbnail") %>">
		<div class="ml-4">
			<h2><%= target.get("title") %></h2>
			<div class="text-success font-weight-bold mb-3"><%= target.get("singer") %></div>
			<div class="text-secondary detail">
				<div class="d-flex">
					<div class="detail-title">앨범</div>
					<div><%= target.get("album") %></div>
				</div>
				<div class="d-flex">
					<div class="detail-title">재생시간</div>
					<div><%= (int)target.get("time") / 60 %>:<%= (int)target.get("time") % 60 %></div>
				</div>
				<div class="d-flex">
					<div class="detail-title">작곡가</div>
					<div><%= musicInfo.get("composer") %></div>
				</div>
				<div class="d-flex">
					<div class="detail-title">작사가</div>
					<div><%= musicInfo.get("lyricist") %></div>
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
</section>
<%
	} else {
%>
<section class="contents">
	<div class="text-secondary mt-5">정보 없음</div>
</section>
<%
	}
%>