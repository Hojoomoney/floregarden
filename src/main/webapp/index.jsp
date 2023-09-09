<%@page import="java.util.*"%>
<%@page import="com.util.www.ProductDTO"%>
<%@page import="com.util.www.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="description"
	content="Granada is a premium, responsive and bootstrap based ecommerce template">

<!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/Floregarden/css/bootstrap.min.css">
<link rel="stylesheet" href="/Floregarden/css/revslider-section.css">
<link rel="stylesheet" href="/Floregarden/css/style.css">
<link rel="stylesheet" href="/Floregarden/css/responsive.css">

<!-- Favicon and Apple Icons -->
<link rel="icon" type="image/png"
	href="/Floregarden/images/icons/icon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="/Floregarden/images/icons/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/Floregarden/images/icons/apple-icon-72x72.png">

<!--- jQuery -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="/Floregarden/js/jquery-2.1.1.min.js"><\/script>')</script>
<meta charset="utf-8">
<title>FloreGarden</title>
</head>
<body>
	<% 
		ProductDAO dao = new ProductDAO(application);
		List<ProductDTO> list = new ArrayList<ProductDTO>();
		list = dao.getNewList();
		dao.close();
	%>
	<c:set var="bouquet" value="bouquet" />
	<c:set var="basket" value="basket" />
	<div id="wrapper">
		<jsp:include page="/header.jsp" />

		<section id="home-section"
			class="section full-height home-full-height parallax"
			data-stellar-background-ratio="0.3">

			<div class="container text-center">
				<div class="vcenter-container">
					<div class="vcenter">
						<div class="collection-content section-content light text-center">
							<h3>달콤함을 담는</h3>
							<h3>프로방스</h3>
							<h2>꽃다발</h2>
							<a href="<%= request.getContextPath() %>/product/category.pro?category=${ bouquet }" class="btn btn-custom-3 btn-lger min-width">구매하기</a>
						</div>
						<!-- End .collection-content -->
					</div>
					<!-- End .vcenter -->
				</div>
				<!-- End .vcenter-container -->
			</div>
			<!-- End .container -->
		</section>

		<section id="collection-section" class="section full-height parallax"
			data-stellar-background-ratio="0.3">
			<div class="container text-right">
				<div class="vcenter-container">
					<div class="vcenter">
						<div class="collection-content section-content light text-right">
							<h3>당신의 소중한</h3>
							<h3>분들에게 전하세요</h3>
							<h2>꽃바구니</h2>
							<a href="<%= request.getContextPath() %>/product/category.pro?category=${ basket }" class="btn btn-custom-3 btn-lger min-width">구매하기</a>
						</div>
						<!-- End .collection-content -->
					</div>
					<!-- End .vcenter -->
				</div>
				<!-- End .vcenter-container -->
			</div>
			<!-- End .container -->
		</section>

		<section id="products-section" class="section">
			<div class="container">
				<div class="carousel-container">
					<h2 class="carousel-title big text-center">새로운 상품</h2>
					<div class="row">
						<div
							class="owl-carousel products-section-carousel center-buttons color2">
							<% for(ProductDTO dto : list) { %>
							<div class="products-wrapper">
								<div class="product">
									<div class="product-top">
										<span class="hot-box top-left">New</span>
										<figure class="product-image-container">
											<a href="<%= request.getContextPath() %>/product/detail.pro?pno=<%= dto.getPno() %>" title="White linen sheer dress"> <img
												src="<%= request.getContextPath() %>/upload/<%= dto.getFileName() %>"
												alt="Product image" class="product-image"> <img
												src="<%= request.getContextPath() %>/upload/<%= dto.getFileName() %>"
												alt="Product image hover" class="product-image-hover">
											</a>
										</figure>
										<div class="product-action-container">
											<div class="product-action-wrapper action-responsive">
												<a href="<%= request.getContextPath() %>/product/addCart.pro?pno=<%= dto.getPno() %>&index=1" title="Add to Cart" class="product-add-btn" onclick='return confirm("상품을 장바구니에 담으시겠습니까?");'>
													<span class="add-btn-text">장바구니담기</span> <span
													class="product-btn product-cart">장바구니</span>
												</a> <a href="<%= request.getContextPath() %>/product/moveCart.pro?pno=<%= dto.getPno() %>" title="Add to Cart" class="product-add-btn" onclick='return confirm("바로 구매하시겠습니까?");'>
													<span class="add-btn-text">바로구매하기</span> <span
													class="product-btn product-cart">구매</span>
												</a>
											</div>
											<!-- End .product-action-wrapper -->
										</div>
										<!-- End .product-action-container -->
									</div>
									<!-- End .product-top -->
									<h3 class="product-name">
										<a href="<%= request.getContextPath() %>/product/detail.pro?pno=<%= dto.getPno() %>" title="White linen sheer dress"><%= dto.getpName() %></a>
									</h3>
									<div class="product-price-container">
										<span class="product-price"><fmt:formatNumber type="number" maxFractionDigits="3" value="<%= dto.getPrice() %>"/>원</span>
									</div>
									<!-- End .product-price-container -->
								</div><!-- End .product -->
								

<%-- 								<div class="product">
									<div class="product-top">
										<figure class="product-image-container">
											<a href="category.jsp" title="White linen sheer dress"> <img
												src="<%= request.getContextPath() %>/upload/<%= dto.getFileName() %>"
												alt="Product image" class="product-image"> <img
												src="<%= request.getContextPath() %>/upload/<%= dto.getFileName() %>"
												alt="Product image hover" class="product-image-hover">
											</a>
										</figure>
										<div class="product-action-container">
											<div class="product-action-wrapper action-responsive">
												<a href="#" title="Add to Cart" class="product-add-btn">
													<span class="add-btn-text">장바구니담기</span> <span
													class="product-btn product-cart">Cart</span>
												</a> <a href="#" title="Search"
													class="product-btn product-search">Search</a> <a href="#"
													title="Favorite" class="product-btn product-favorite">Favorite</a>
												<a href="#" title="Compare"
													class="product-btn product-compare">Compare</a>
											</div>
											<!-- End .product-action-wrapper -->
										</div>
										<!-- End .product-action-container -->
									</div>
									<!-- End .product-top -->
									<h3 class="product-name">
										<a href="category.jsp" title="White linen sheer dress"><%= dto.getpName() %></a>
									</h3>
									<div class="product-price-container">
										<span class="product-price">5.800원</span>
									</div>
									<!-- End .product-price-container -->
								</div>
								<!-- End .product --> --%>



							</div>
			<% } %>
							<!-- End .product-wrapper  
                            

                        		<!-- End .container -->
						</div>
						<!-- End .container -->
					</div>
					<!-- End .carousel-container -->
				</div>
				<!-- End .container -->
			</div>
			<div class="section-btn-container">
				<a href="#header" class="section-btn btn-prev"
					title="Previous Section">Previous Section</a>
			</div>
			<!-- End .section-btn-container -->
		</section>

		<jsp:include page="/footer.jsp" />

		<script src="/Floregarden/js/bootstrap.js"></script>
		<script src="/Floregarden/js/smoothscroll.js"></script>
		<script src="/Floregarden/js/waypoints.js"></script>
		<script src="/Floregarden/js/waypoints-sticky.js"></script>
		<script src="/Floregarden/js/jquery.debouncedresize.js"></script>
		<script src="/Floregarden/js/retina.min.js"></script>
		<script src="/Floregarden/js/jquery.placeholder.js"></script>
		<script src="/Floregarden/js/jquery.hoverIntent.min.js"></script>
		<script src="/Floregarden/js/owl.carousel.min.js"></script>
		<script src="/Floregarden/js/twitter/jquery.tweet.min.js"></script>
		<script src="/Floregarden/js/jquery.themepunch.tools.min.js"></script>
		<script src="/Floregarden/js/jquery.themepunch.revolution.min.js"></script>
		<script src="/Floregarden/js/jquery.stellar.min.js"></script>
		<script src="/Floregarden/js/maplabel.js"></script>
		<script src="/Floregarden/js/main.js"></script>
	</div>
</body>
</html>