<%@page import="com.util.www.NoticeDTO"%>
<%@page import="com.util.www.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>FloreGarden</title>
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
<style>
	button {
		float:right;
	}
</style>

<body>
	<%
	String bno = request.getParameter("bno");
			NoticeDAO dao = new NoticeDAO(application);
			NoticeDTO dto = dao.read(Integer.parseInt(bno));
			dao.close();
	%>
	<div id="wrapper">
		<jsp:include page="/header.jsp" />

		<div class="xlg-margin"></div>
		<!-- space -->

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>
						<strong>공지사항</strong>
					</h2>
					<hr>
					
					<table width="100%" border="1">
						<tr>
							<td><h3><%= dto.getTitle() %></h3></td>
						</tr>
						<tr>
							<td style = "text-align: right;">작성일 : <%= dto.getRegDate() %></td>
						</tr>
						<tr>
							<td><h5><%= dto.getContent() %></h5></td>
						</tr>
						
					</table>
					<button class = "btn btn-success" onClick = "location.href='notice.jsp'">목록 보기</button>
					<p></p>
				</div>
				<div class="col-md-3">
						<form action="noticeProc.jsp" method="post">
					<div class="input-group">
							<input type="text" class="form-control"> 
							<span class="input-group-btn"> <input class="btn btn-default" type="submit" value="검색">
							</span>

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