<%@page import="java.util.*"%>
<%@page import="com.util.www.FaqDAO"%>
<%@page import="com.util.www.FaqDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>플로어가든 관리자</title>
<meta charset="utf-8">
<meta name="robots" content="noindex">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.5">
<link rel="stylesheet" href='/Floregarden/admin/admin.css'>
<link rel="stylesheet" href="/Floregarden/css/style.css">
</head>
<style>
button.login {
	width: 100px;
	height: 50px;
	background: greenyellow;
	color: black;
	display: block;
	margin: auto;
}

button.logout {
	width: 100px;
	height: 50px;
	background: orangered;
	color: black;
	display: block;
	margin: auto;
}
</style>

<body>


	<jsp:include page="/admin/sidebar.jsp" />

	<!-- (B) MAIN -->
	<%
		Map<String, Object> param = new HashMap<String, Object>();
			FaqDAO dao = new FaqDAO(application);
			String searchWord = request.getParameter("searchWord");
			if (searchWord != null) {
				param.put("searchWord", searchWord);
			}
			List<FaqDTO> list = dao.getList(param);
			dao.close();
		%>
	<main id="pgmain">
		<%	if(session.getAttribute("adminId") != null) { %>
			<form>
				<div class="input-group">

					<input type="text" class="form-control" name="searchWord">
					<span class="input-group-btn"> <input
						 type="submit" value="검색"></span>


				</div>
				<!-- /input-group -->
			</form>
		<form>
			<table width="100%">
				<tr>
					<th width="80%">제목</th>
					<th width="20%">작성일</th>
				</tr>
				<% for(FaqDTO dto : list) { %>
				<tr>
					<td><a
						href="/Floregarden/admin/faq/faq_read.jsp?faqno=<%= dto.getFaqno() %>"><%= dto.getTitle() %></a></td>
					<td><%= dto.getRegDate() %></td>
				</tr>
				<% } %>

			</table>
		</form>
		<div class="col-md-3">
			<div style="text-align: center;">
					<button class="button-blue" onclick ="location.href = '/Floregarden/admin/faq/faq_write.jsp';" style="display:inline-block;">작성하기</button>
					</div>
		</div>
		<% } %>

	</main>
</body>
</html>