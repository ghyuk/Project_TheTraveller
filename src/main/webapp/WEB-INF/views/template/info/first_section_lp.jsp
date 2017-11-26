<!-- <link rel="stylesheet" href="/resources/include/css/bootstrap.css"/> -->
<!-- 
<!-- <script type="text/javascript" src="/resources/include/js/bootstrap.min.js"></script> -->
<!-- 얘가 있어야 슬라이드 가능 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});

	$(".carousel").carousel({
		pause : "hover"
	})
</script>

<style type="text/css">
figure.snip1349 {
	/* font-family: 'Raleway', Arial, sans-serif; */
	font-family: 'Montserrat', sans-serif;
	position: relative;
	float: left;
	overflow: hidden;
	margin: 10px 1%;
	/*  min-width: 230px;
		  max-width: 315px; */
	width: 100%;
	color: #000000;
	text-align: center;
	-webkit-perspective: 50em;
	perspective: 50em;
}

figure.snip1349 * {
	-webkit-box-sizing: padding-box;
	box-sizing: padding-box;
	-webkit-transition: all 0.2s ease-out;
	transition: all 0.2s ease-out;
}

figure.snip1349 img {
	width: 100%;
	max-height: 430px;
	min-height: 430px;
	vertical-align: top;
}

figure.snip1349 figcaption {
	top: 35%;
	left: 20%;
	right: 20%;
	bottom: 5%;
	position: absolute;
	opacity: 0;
	z-index: 1;
	-webkit-transform: translateY(-100%);
	transform: translateY(-100%);
}

figure.snip1349 h2, figure.snip1349 h4 {
	margin: 30px;
}

figure.snip1349 h2 {
	font-weight: 600;
	text-transform: uppercase;
}

figure.snip1349 h4 {
	font-weight: 400;
}

figure.snip1349:after {
	background-color: #ffffff;
	position: absolute;
	content: "";
	display: block;
	top: 20px;
	left: 20%;
	right: 20%;
	bottom: 20px;
	-webkit-transition: all 0.4s ease-in-out;
	transition: all 0.4s ease-in-out;
	-webkit-transform: rotateX(90deg);
	transform: rotateX(90deg);
	-webkit-transform-origin: 50% 50%;
	-ms-transform-origin: 50% 50%;
	transform-origin: 50% 50%;
	opacity: 0;
}

figure.snip1349 a {
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	position: absolute;
	z-index: 1;
}

figure.snip1349:hover figcaption, figure.snip1349.hover figcaption {
	-webkit-transform: translateY(-50%);
	transform: translateY(-50%);
	opacity: 1;
	-webkit-transition-delay: 0.2s;
	transition-delay: 0.2s;
}

figure.snip1349:hover:after, figure.snip1349.hover:after {
	-webkit-transform: rotateX(0);
	transform: rotateX(0);
	opacity: 0.9;
}
/* end of css about image hover */
.col-md-5 h1 {
	font-weight: 600;
	font-family: 'Montserrat', sans-serif;
}

col-md-5 p {
	font-weight: 400;
	font-family: 'Montserrat', sans-serif;
}

body {
	background-color: white;
}
</style>

<div class="main">
	<div class="container tim-container">
		<div id="extras">
			<div class="space"></div>
			<div class="row">
				<div class="col-md-7 col-md-offset-0 col-sm-10 col-sm-offset-1">
					<div class="text-center">
						<div id="carousel">
						
							<div id="carousel-first-generic" class="carousel slide"
								data-ride="carousel" data-interval="2000">
								<!-- Indicators -->
								<ol class="carousel-indicators">

									<c:forEach var="golist" items="${golist }" varStatus="status">
										<c:if test="${status.index == 0 }">
											<li data-target="#carousel-first-generic"
												data-slide-to="${status.index }" class="active"></li>
										</c:if>
										<c:if test="${status.index != 0 }">
											<li data-target="#carousel-first-generic"
												data-slide-to="${status.index }"></li>
										</c:if>
									</c:forEach>
								</ol>

								<!-- Wrapper for slides -->
								<div class="carousel-inner">
									<c:forEach var="golist" items="${golist }" varStatus="status">
										<c:if test="${status.index == 0 }">
											<div class="item active" data-num="${golist.i_code }">
												<figure class="snip1349">
													<img src="/resources/image/${golist.i_image}.jpg"
														alt="${status.index }" />
													<figcaption>
														<h2 id="title">${golist.i_name }</h2>
														<h4 id="content">${golist.i_content}</h4>
													</figcaption>
													<a href="#"></a>
												</figure>
											</div>
										</c:if>
										<c:if test="${status.index != 0 }">
											<div class="item" data-num="${golist.i_code }">
												<figure class="snip1349">
													<img src="/resources/image/${golist.i_image}.jpg"
														alt="${status.index }" />
													<figcaption>
														<h2 id="title">${golist.i_name }</h2>
														<h4 id="content">${golist.i_content}</h4>
													</figcaption>
													<a href="#"></a>
												</figure>
											</div>
										</c:if>
									</c:forEach>

								</div>

								<!-- Controls -->
								<!-- <a class="left carousel-control" href="#carousel-left-generic" data-slide="prev">
						        <span class="fa fa-angle-left"></span>
						      </a>
						      <a class="right carousel-control" href="#carousel-left-generic" data-slide="next">
						        <span class="fa fa-angle-right"></span>
						      </a> -->
							</div>
						</div>
						<!-- end carousel -->
					</div>
				</div>
				<div class="col-md-5 col-sm-12">
					<h1 class="text-center">Where To Go</h1>
					<hr>
					<p>Creative Tim offers Bootstrap based design elements that
						speed up your development work. From plugins to complex kits, we
						have everything you need.</p>
					<p>We love the web and care deeply for how users interact with
						a digital product. The idea behind Creative Tim was creating a
						standard of things we actually need and would personally use
						inside our web projects. We power businesses and individuals to
						create better looking web projects around the world.</p>
					<p>We take great interest in how our customers use our
						resources and offer strong support and unlimited updates. We are
						constantly thinking about how to make our products intuitive,
						beautiful and extremely easy to understand, so feel free to tell
						us your thoughts!</p>

				</div>
			</div>
		</div>
		<!--     end extras -->
	</div>
	<!-- end container -->
	<div class="space-30"></div>
</div>