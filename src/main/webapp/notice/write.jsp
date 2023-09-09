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
<title>글 작성</title>
</head>
<style>

	
</style>

<body>
	<div id="wrapper">
		<jsp:include page="/header.jsp" />

		<div class="xlg-margin"></div>
		<!-- space -->

		<div class="container">
			<div class="row">
				<div class="col-md-12">
	
						<h3>글 작성</h3>
						<hr>
						<form action = "writeProc.jsp" method = "post">
							<table border = "1" width = "100%">
								<tr>
									<th style = "color : black"><input type = "text" name = "title" placeholder = "제목을 입력하세요" style = "width : 90%"></th>
								</tr>
								<tr>
									<td><textarea name = "content" placeholder ="내용을 입력하세요" style = "width : 90%; height : 300px"></textarea></td>
								</tr>
								<tr>
									<td align = "center"><input type = "submit" class= "btn btn-success" value ="작성 완료"></td>
								</tr>
							</table>
						</form>
	

				</div>
			</div>
		</div>
		
		
		<div class="xlg-margin"></div>
		<div class="xlg-margin"></div>



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