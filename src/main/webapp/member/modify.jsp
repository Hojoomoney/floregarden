<%@page import="com.util.www.MemberDTO"%>
<%@page import="com.util.www.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if IE 9]> <html class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>회원정보 수정</title>
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
<style>

button {
	height : 80px;
}
</style>   
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
						<strong>회원정보 수정</strong>
					</h1>
					<div class="lg-margin"></div>
				<form action = "modifyProc.jsp" method = "post">
				<input type="hidden" name="uno" value="<%= dto.getUno() %>">
				<table width="100%">
						<tr>
							<th>구분</th>
							<th>내용</th>
						</tr>
						<tr>
							<td>아이디</td>
							<td><%= dto.getUserId() %></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type = "password" name = "userPwd" value = "<%= dto.getUserPwd() %>"></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type = "text" name = "userName" value = "<%= dto.getUserName() %>"></td>
						</tr>

						<tr>
							<td>이메일</td>
							<td><input type = "text" name = "email" value = "<%= dto.getEmail() %>"></td>
						</tr>

						<tr>
							<td>전화번호</td>
							<td><input type = "text" name = "telephone" value = "<%= dto.getTelephone() %>"></td>
						</tr>

						<tr>
							<td>주소</td>
							<td><input type = "text" name = "address" value = "<%= dto.getAddress() %>"></td>
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
                                <input type = "submit" class="btn btn-warning" value = "수정 완료"></button>
                              </div><!-- End .btn-group -->
                    

                            </div><!-- End .btn-group -->
					</form>
				</div>
			</div>
		</div>

		<div class="lg-margin"></div>
		<div class="lg-margin"></div>
		
		
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