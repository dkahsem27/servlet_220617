<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="d-flex align-items-center py-3">
	<h1><a href="/lesson03/quiz02/list_template.jsp" class="text-success">Melong</a></h1>
	<div class="search col-10 d-flex align-items-center">
		<form method="get" action="/lesson03/quiz02/info_template.jsp">
			<div class="input-group">
				<input type="text" class="form-control" name="search" value="<%= request.getParameter("search") %>">
				<div class="input-group-append">
					<button class="btn btn-success" type="submit">검색</button>
				</div>
			</div>
		</form>
	</div>
</header>