<%@page import="com.util.www.MemberDAO"%>
<%@page import="com.util.www.MemberDTO"%>
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
<title>내 정보</title>
<style>

button {
	height : 80px;
}
</style>
</head>
<body>
	<div id="wrapper">
		<jsp:include page="/header.jsp" />
		
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				<div class="lg-margin"></div>
				
				<% 
					String userId = (String) session.getAttribute("userId");
					MemberDAO dao = new MemberDAO(application);
					MemberDTO dto = dao.select(userId);	
					
				%>
				<h1>
						<strong>내 정보</strong>
					</h1>
					<div class="lg-margin"></div>
					
				<table width="100%">
						<tr>
							<th>아이디</th>
							<th><%= dto.getUserId() %></th>
						</tr>
						<tr>
							<td>이름</td>
							<td><%= dto.getUserName() %></td>
						</tr>

						<tr>
							<td>이메일</td>
							<td><%= dto.getEmail() %></td>
						</tr>

						<tr>
							<td>전화번호</td>
							<td><%= dto.getTelephone() %></td>
						</tr>

						<tr>
							<td>주소</td>
							<td><%= dto.getAddress() %></td>
						</tr>
						<tr>
							<td>가입일</td>
							<td><%= dto.getRegDate() %></td>
						</tr>

					</table>
					<div class="lg-margin"></div>
					<div class="lg-margin"></div>
					<div class="btn-group btn-group-justified">
                              <div class="btn-group">
                                <button class="btn btn-warning" onclick="location.href='/Floregarden/member/modify.jsp'">회원정보 수정</button>
                              </div><!-- End .btn-group -->
                              <div class="btn-group">
                                <button class="btn btn-danger" onclick="location.href='/Floregarden/member/withDrawn.jsp'">회원탈퇴</button>
                              </div><!-- End .btn-group -->

                            </div><!-- End .btn-group -->
				
				</div>
			</div>
		</div>

		<div class="lg-margin"></div>
		<div class="lg-margin"></div>

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