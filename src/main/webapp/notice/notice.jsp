<%@page import="com.util.www.NoticeDTO"%>
<%@page import="java.util.*"%>
<%@page import="com.util.www.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>공지사항</title>
<meta name="description"
	content="Granada is a premium, responsive and bootstrap based ecommerce template">

<!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/Floregarden/css/bootstrap.min.css">
<link rel="stylesheet" href="/Floregarden/css/revslider-section.css">
<link rel="stylesheet" href="/Floregarden/css/style.css">
<link rel="stylesheet" href="/Floregarden/css/responsive.css">

<!-- Favicon and Apple Icons -->
<link rel="icon" type="image/png" href="/Floregarden/images/icons/icon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="/Floregarden/images/icons/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/Floregarden/images/icons/apple-icon-72x72.png">

<!--- jQuery -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="/Floregarden/js/jquery-2.1.1.min.js"><\/script>')
</script>
<meta charset="utf-8">
<title>Insert title here</title>
</head>

<body>
		<%
		Map<String, Object> param = new HashMap<String, Object>();
			NoticeDAO dao = new NoticeDAO(application);
			String searchWord = request.getParameter("searchWord");
			if (searchWord != null) {
				param.put("searchWord", searchWord);
			}
			List<NoticeDTO> list = dao.getList(param);
			dao.close();
		%>
	<div id="wrapper">
		<jsp:include page="/header.jsp" />

		<div class="xlg-margin"></div>
		<!-- space -->

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1>
						<strong>공지사항</strong>
					</h1>
					<hr>
					<form>
					<table width="100%">
						<tr>
							<th width="80%">제목</th>
							<th width="20%">작성일</th>
						</tr>
					<% for(NoticeDTO dto : list) { %>
						<tr>
							<td><a href = "notice_read.jsp?bno=<%= dto.getBno() %>"><%= dto.getTitle() %></a></td>
							<td><%= dto.getRegDate() %></td>
						</tr>
					<% } %>	

					</table>

					</form>
					<br />
					<table width = "100%">
						<tr>
							<td>1  |  2  |  3  |  4 |  5 |  6 |  7 </td>
						</tr>
					</table>
					<p></p>
				</div>
				<div class="col-md-3">
						<form>
					<div class="input-group">
							
							<input type="text" class="form-control" name="searchWord"> 
							<span class="input-group-btn"> <input class="btn btn-default" type="submit" value="검색"></span>
							

					</div>
					<!-- /input-group -->
						</form>
				</div>
			</div>
		</div>
		
		




		<jsp:include page="/footer.jsp" />


		<script src="/Floregarden/js/bootstrap.min.js"></script>
		<script src="/Floregarden/js/smoothscroll.js"></script>
		<script src="/Floregarden/js/waypoints.js"></script>
		<script src="/Floregarden/js/waypoints-sticky.js"></script>
		<script src="/Floregarden/js/jquery.debouncedresize.js"></script>
		<script src="/Floregarden/js/retina.min.js"></script>
		<script src="/Floregarden/js/imagesloaded.min.js"></script>
		<script src="/Floregarden/js/jquery.placeholder.js"></script>
		<script src="/Floregarden/js/jquery.hoverIntent.min.js"></script>
		<script src="/Floregarden/js/twitter/jquery.tweet.min.js"></script>
		<script src="/Floregarden/js/main.js"></script>

	</div>
</body>
</html>