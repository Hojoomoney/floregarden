<%@page import="com.util.www.FaqDTO"%>
<%@page import="com.util.www.FaqDAO"%>
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

<body>
<%
	String faqno = request.getParameter("faqno");
			FaqDAO dao = new FaqDAO(application);
			FaqDTO dto = dao.read(Integer.parseInt(faqno));
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
						<strong><%= dto.getTitle() %></strong>
					</h2>
					<hr>
					<table width="100%" border="1">
						<tr>
							<td></td>
						</tr>
						<tr>
							<td style="font-size:20px;"><%= dto.getContent() %></td>
						</tr>

						<tr>
							<td>1  |  2  |  3  |  4 |  5 |  6 |  7 </td>
						</tr>
					</table>
					<p></p>
				</div>
				<div class="col-md-3">
						
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