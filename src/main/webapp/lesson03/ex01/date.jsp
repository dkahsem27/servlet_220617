<%@page import="java.util.Calendar"%>
<%@ page pageEncoding="UTF-8"%>
<!-- 정적 방식 -->
<p>
	현재 시간: <%= Calendar.getInstance().getTime() %>
</p>