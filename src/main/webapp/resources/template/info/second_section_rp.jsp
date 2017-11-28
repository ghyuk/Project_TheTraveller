
<script type="text/javascript">
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});

	$(".carousel").carousel({
		pause : "hover"
	})
</script>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="main">
	<div class="container tim-container">
		<div id="extras">
			<div class="space"></div>
			<div class="row">
				<div class="col-md-5 col-sm-12">
					<h1 class="text-center">What To Eat</h1>
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
				<div class="col-md-7 col-md-offset-0 col-sm-10 col-sm-offset-1">
					<div class="text-center">
						<div id="carousel">
							<div id="carousel-second-generic" class="carousel slide"
								data-ride="carousel" data-interval="2000">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<c:forEach var="eatlist" items="${eatlist }" varStatus="status">
										<c:if test="${status.index == 0 }">
											<li data-target="#carousel-second-generic"
												data-slide-to="${status.index }" class="active"></li>
										</c:if>
										<c:if test="${status.index != 0 }">
											<li data-target="#carousel-second-generic"
												data-slide-to="${status.index }"></li>
										</c:if>
									</c:forEach>
								</ol>

								<!-- Wrapper for slides -->
								<div class="carousel-inner">
									<c:forEach var="eatlist" items="${eatlist }" varStatus="status">
										<c:if test="${status.index == 0 }">
											<div class="item active" data-num="${eatlist.i_code }">
												<figure class="snip1349">
													<img src="/resources/image/${eatlist.i_image}.jpg"
														alt="${status.index }" />
													<figcaption>
														<h2 id="title">${eatlist.i_name }</h2>
														<h4 id="content">${eatlist.i_content}</h4>
													</figcaption>
													<a href="#"></a>
												</figure>
											</div>
										</c:if>
										<c:if test="${status.index != 0 }">
											<div class="item" data-num="${eatlist.i_code }">
												<figure class="snip1349">
													<img src="/resources/image/${eatlist.i_image}.jpg"
														alt="${status.index }" />
													<figcaption>
														<h2 id="title">${eatlist.i_name }</h2>
														<h4 id="content">${eatlist.i_content}</h4>
													</figcaption>
													<a href="#"></a>
												</figure>
											</div>
										</c:if>
									</c:forEach>

								</div>


							</div>
						</div>
						<!-- end carousel -->
					</div>
				</div>

			</div>
		</div>
		<!--     end extras -->
	</div>
	<!-- end container -->
	<div class="space-30"></div>
</div>