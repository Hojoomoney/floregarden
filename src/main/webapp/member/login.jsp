<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>로그인</title>
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
<script>window.jQuery || document.write('<script src="/Floregarden/js/jquery-2.1.1.min.js"><\/script>')</script>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/header.jsp" />

		<section id="content" role="main">
			<div class="breadcrumb-container">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li><a href="index.jsp" title="Home">Home</a></li>
								<li class="active">Login</li>
							</ul>
						</div>
						<!-- End .col-md-12 -->
					</div>
					<!-- End .row -->
				</div>
				<!-- End .container -->
			</div>
			<!-- End .breadcrumb-container -->

			<div class="xs-margin half"></div>
			<!-- space -->

			<div class="container">
				<div class="row">

					<div class="col-sm-6 padding-right-md">

						<img src='/Floregarden/images/cherryblossom.jpg'>

					</div>
					<!-- End .col-md-6 -->

					<div class="xlg-margin visible-xs clearfix"></div>
					<!-- space -->

					<div class="col-sm-6 padding-left-md">
						<form action="loginProc.jsp" id="login-form">
							<h2 class="color2">회원 로그인</h2>
							<div class="form-group">
								<label for="login-form" class="form-label">아이디<span
									class="required"></span></label> <input type="text" name="userId"
									id="login-form" class="form-control input-lg" required>
							</div>
							<!-- End .form-group -->
							<div class="form-group">
								<label for="login-form" class="form-label">비밀번호<span
									class="required"></span></label> <input type="password" name="userPwd"
									id="login-form" class="form-control input-lg" required>
							</div>
							<!-- End .form-group -->

							<div class="xs-margin"></div>

							<!-- 버튼 2개로 변경 -->
                            <div class="btn-group btn-group-justified">
                              <div class="btn-group">
                                <input type="submit" class="btn btn-warning" value ="로그인">
                              </div><!-- End .btn-group -->
                              <div class="btn-group">
                                <button class="btn btn-success" onclick="location.href='register.jsp'">회원가입</button>
                              </div><!-- End .btn-group -->

                            </div><!-- End .btn-group -->
						</form>
				
										
								
					</div>
					<!-- End .col-md-6 -->
				</div>
				<!-- End .row -->
			</div>
			<!-- End .container -->

			<div class="lg-margin2x"></div>
			<!-- space -->

		</section>
		<!-- End #content -->

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