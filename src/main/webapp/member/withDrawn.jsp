<%@page import="com.util.www.MemberDTO"%>
<%@page import="com.util.www.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if IE 9]> <html class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>회원탈퇴</title>
        <meta name="description" content="Granada is a premium, responsive and bootstrap based ecommerce template">

        <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="/Floregarden/css/bootstrap.min.css">
        <link rel="stylesheet" href="/Floregarden/css/jquery.selectbox.css">
        <link rel="stylesheet" href="/Floregarden/css/style.css">
        <link rel="stylesheet" href="/Floregarden/css/responsive.css">
        
        <!-- Favicon and Apple Icons -->
        <link rel="icon" type="image/png" href="/Floregarden/images/icons/icon.png">
        <link rel="apple-touch-icon" sizes="57x57" href="/Floregarden/images/icons/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/Floregarden/images/icons/apple-icon-72x72.png">

        <!--- jQuery -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="/Floregarden/js/jquery-2.1.1.min.js"><\/script>')</script>
        
    </head>
 
<body>
	<div id="wrapper">
		<jsp:include page="/header.jsp" />
		
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				<div class="lg-margin"></div>
				
				
				<h1>
						<strong>회원탈퇴</strong>
					</h1>
					<div class="lg-margin"></div>
					
				<form action = "withDrawnProc.jsp" method = "post">
					<h2>비밀번호를 입력해주세요</h2>
					<hr>
					<input type = "password" name = "userPwd" width = "200px">
					 <input type = "submit" class="btn btn-danger" value = "회원 탈퇴">
				</form>
					
					<div class="lg-margin"></div>
					<div class="lg-margin"></div>
		
		</div>
		</div>
		</div>
		<jsp:include page="/footer.jsp" />
		
	</div>	
	<script src="/Floregarden/js/bootstrap.min.js"></script>
    <script src="/Floregarden/js/smoothscroll.js"></script>
    <script src="/Floregarden/js/waypoints.js"></script>
    <script src="/Floregarden/js/waypoints-sticky.js"></script>
	<script src="/Floregarden/js/jquery.debouncedresize.js"></script>
    <script src="/Floregarden/js/retina.min.js"></script>
    <script src="/Floregarden/js/imagesloaded.min.js"></script>
    <script src="/Floregarden/js/jquery.placeholder.js"></script>
    <script src="/Floregarden/js/jquery.hoverIntent.min.js"></script>
    <script src="/Floregarden/js/jquery.selectbox.min.js"></script>
    <script src="/Floregarden/js/twitter/jquery.tweet.min.js"></script>
    <script src="/Floregarden/js/main.js"></script>
</body>
</html>