	<%@page import="com.util.www.ProductDTO"%>
<%@page import="java.util.*"%>
<%@page import="com.util.www.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link rel="icon" type="image/png" href="/Floregarden/images/icons/icon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="/Floregarden/images/icons/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/Floregarden/images/icons/apple-icon-72x72.png">


<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="/Floregarden/js/jquery-2.1.1.min.js"><\/script>')</script>
<meta charset="utf-8">
<title>꽃</title>
</head>
		

<body>
	<% 
		String category = request.getParameter("category");
	
	%>
	<div id="wrapper">
		<jsp:include page="/header.jsp" />


		<!-- 본문 시작 -->
		<section id="content" role="main">
			<div class="breadcrumb-container">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<ul class="breadcrumb">
								<li><a href="/Floregarden/index.jsp" title="Home">Home</a></li>
								<li class="active"><%= category %></li>
							</ul>
						</div>
						<!-- End .col-md-12 -->
					</div>
					<!-- End .row -->
				</div>
				<!-- End .container -->
			</div>
			<!-- End .breadcrumb-container -->

			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div id="category-banner">
							<% if(category.equals("flowers") || category.equals("bouquet") || category.equals("basket") || category.equals("box")) { %>
							<img src="/Floregarden/images/categoryimg_1.jpg" class="img-responsive">
								<div class="banner-container">
									<div class="vcenter-container">
										<div class="vcenter">
											<div class="banner-content">
												<h1>
													<span>사랑하는 사람에게</span>꽃다발
												</h1>
											
											</div>
										</div>
										<!-- End .vcenter -->
									</div>
									<!-- End .vcenter-container -->
								</div>
								<!-- End .banner-content -->
								<% } else if (category.equals("plants") || category.equals("cactus") || category.equals("air") || category.equals("orchid")) { %>
							
							<img src="/Floregarden/images/categoryimg_2.jpg" class="img-responsive">
																<div class="banner-container">
									<div class="vcenter-container">
										<div class="vcenter">
											<div class="banner-content">
												<h1>
													<span>다육이/선인장/공기정화식물/</span>서양난/동양난
												</h1>
											
											</div>
										</div>
										<!-- End .vcenter -->
									</div>
									<!-- End .vcenter-container -->
								</div>
								<!-- End .banner-content -->
							<% } else if (category.equals("special") || category.equals("mothersday") || category.equals("gradu") || category.equals("christ")){ %>
								<img src="/Floregarden/images/categoryimg_3.jpg" class="img-responsive">
								<div class="banner-container">
									<div class="vcenter-container">
										<div class="vcenter">
											<div class="banner-content">
												<h1>
													<span>사랑하고 존경하는 분들을 위한</span>특별한 꽃
												</h1>
											
											</div>
										</div>
										<!-- End .vcenter -->
									</div>
									<!-- End .vcenter-container -->
								</div>
								<!-- End .banner-content -->
								<% } else { %>
							<img src="/Floregarden/images/categoryimg_4.jpg" class="img-responsive">
																<div class="banner-container">
									<div class="vcenter-container">
										<div class="vcenter">
											<div class="banner-content">
												<h1>
													<span>수반/유리병/오브제/</span>화병
												</h1>
											
											</div>
										</div>
										<!-- End .vcenter -->
									</div>
									<!-- End .vcenter-container -->
								</div>
								<!-- End .banner-content -->	
							<% } %>
						</div>
						<!-- End #category-banner -->

						<div class="lg-margin"></div>
						<!-- space -->

						<div class="row">
						
						
			<jsp:include page="aside.jsp" /> <!-- aside include -->
							
							
							<div class="col-md-9 padding-right-lg">
							
<!-- 								<div id="category-filter-bar" class="clearfix">
									<div class="pull-left clearfix">

										<div class="pull-left sort-filter">
											<div class="normal-selectbox clearfix">
												<select id="sort-filter" name="sort-filter"
													class="selectbox">
													<option value="Default">Sort By: Default</option>
													<option value="Price">Sort By: Price</option>
													<option value="Size">Sort By: Size</option>
													<option value="Rating">Sort By: Rating</option>
													<option value="Color">Sort By: Color</option>
												</select>
											</div>
											End .normal-selectbox
										</div>
										End .sort-filter

										<div class="pull-left show-filter">
											<div class="normal-selectbox clearfix">
												<select id="show-filter" name="show-filter"
													class="selectbox">
													<option value="15">Show: 15</option>
													<option value="20">Show: 20</option>
													<option value="25">Show: 25</option>
													<option value="30">Show: 30</option>
													<option value="40">Show: 40</option>
												</select>
											</div>
											End .normal-selectbox
										</div>
										End .sort-filter

									</div>
									End .pull-left

									<div class="sm-margin visible-xs clearfix"></div>
									space

									<div class="pull-right clearfix">
										<a href="compare.html"
											class="btn btn-custom-8 btn-compare pull-right">Compare</a>
										<div class="view-btn-group pull-right">
											<a href="category.html"
												class="btn btn-view btn-view-grid active">Grid View</a> <a
												href="category-list.html" class="btn btn-view btn-view-list">List
												View</a>
										</div>
										End .view-btn-group
									</div>
									End .pull-right
								</div>
								End #category-filter-bar -->

								<div class="category-grid">

									<div class="row">
										<c:forEach items="${ product }" var="product">
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
															<a href="<%= request.getContextPath() %>/product/addCart.pro?pno=${ product.pno}&index=2&category=<%= category %>" title="Add to Cart" class="product-add-btn" onclick='return confirm("상품을 장바구니에 담으시겠습니까?");'>
																<span class="add-btn-text">장바구니담기</span> <span
																class="product-btn product-cart">장바구니</span>
															</a><a href="<%= request.getContextPath() %>/product/moveCart.pro?pno=${ product.pno}" title="Add to Cart" class="product-add-btn" onclick='return confirm("바로 구매하시겠습니까?");'>
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

									<div class="pagination-container clear-margin clearfix">
										<span class="pagination-info"> Items 1 to 18 of 120
											total </span>
										<!-- End.pagination-info -->
										<ul class="pagination pull-right">
											<li class="active"><span>1</span></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a class="next-page" href="#">Next</a></li>
										</ul>
									</div>
									<!-- End pagination-container -->

								</div>
								<!-- End .category-grid -->

								<div class="md-margin2x visible-sm visible-xs"></div>
								<!-- space -->
							</div>
							<!-- End .col-md-9 -->


						</div>
						<!-- End .row -->
					</div>
					<!-- End .col-sm-12 -->
				</div>
				<!-- End .row -->
			</div>
			<!-- End .container -->

			<div class="lg-margin3x hidden-xs"></div>
			<!-- space -->
			<div class="md-margin2x visible-xs"></div>
			<!-- space -->

		</section>
		<!-- End #content -->


		<jsp:include page="/footer.jsp" />

	</div>

	<!-- end of 본문 -->


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
</body>
</html>