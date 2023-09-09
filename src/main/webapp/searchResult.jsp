<%@page import="com.util.www.NoticeDTO"%>
<%@page import="java.util.*"%>
<%@page import="com.util.www.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	
	<div id="wrapper">
		<jsp:include page="/header.jsp" />

		<div class="xlg-margin"></div>
		<!-- space -->

		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3>
						<c:choose>
						<c:when test="${ searchList.size() == 0 }">
						<strong>검색된 상품이 없습니다.</strong>
						</c:when>
						<c:otherwise>
						<strong>검색결과 : ${ searchList.size() }개</strong>
						</c:otherwise>
						</c:choose>
					</h3>
														<div class="row">
										<c:forEach items="${ searchList }" var="product">
										<div class="col-sm-4 md-margin2x">
											<div class="product">
												<div class="product-top">
													<figure class="product-image-container">
														<a href="<%= request.getContextPath() %>/product/detail.pro?pno=${ product.pno }" title="White linen sheer dress">
															<img src="<%= request.getContextPath() %>/upload/${ product.fileName }"
															alt="Product image" class="product-image"> <img
															src="<%= request.getContextPath() %>/upload/${ product.fileName }"
															alt="Product image hover" class="product-image-hover">
														</a>
													</figure>
													<div class="product-action-container">
														<div class="product-action-wrapper action-responsive">
															<a href="<%= request.getContextPath() %>/product/detail.pro?pno=${ product.pno}" title="Add to Cart" class="product-add-btn" >
													<span class="add-btn-text">상세정보</span> <span
													class="product-btn product-cart">상세정보</span>
												</a>
														</div>
														<!-- End .product-action-wrapper -->
													</div>
													<!-- End .product-action-container -->
												</div>
												<!-- End .product-top -->
												<h3 class="product-name">
													<a href="<%= request.getContextPath() %>/product/detail.pro?pno=${ product.pno }" title="White linen sheer dress">${ product.pName }
														</a>
												</h3>
												<div class="product-price-container">
													<span class="product-price"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ product.price}" />원</span>
												</div>
												<!-- End .product-price-container -->
											</div>
											<!-- End .product -->
										</div>
										<!-- Emd .col-sm-4 -->
										</c:forEach>
									</div>
									<!-- End .row -->
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