
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
<div class="main">
	<div class="container tim-container">
		<div id="extras">
			<div class="space"></div>
			<div class="row">
				<div class="col-md-7 col-md-offset-0 col-sm-10 col-sm-offset-1">
					<div class="text-center">
						<div id="carousel">
							<!--    
						            IMPORTANT - This carousel can have a special class for a smooth transition "gsdk-transition". Since javascript cannot be overwritten, if you want to use it, you can use the bootstrap.js or bootstrap.min.js from the GSDKit or you can open your bootstrap.js file, search for "emulateTransitionEnd(600)" and change it with "emulateTransitionEnd(1200)"     
						            
						    -->
							<div id="carousel-third-generic" class="carousel slide"
								data-ride="carousel" data-interval="2000">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<c:forEach var="eatlist" items="${dolist }" varStatus="status">
										<c:if test="${status.index == 0 }">
											<li data-target="#carousel-third-generic"
												data-slide-to="${status.index }" class="active"></li>
										</c:if>
										<c:if test="${status.index != 0 }">
											<li data-target="#carousel-third-generic"
												data-slide-to="${status.index }"></li>
										</c:if>
									</c:forEach>
								</ol>

								<!-- Wrapper for slides -->
								<div class="carousel-inner">
									<c:forEach var="dolist" items="${dolist }" varStatus="status">
										<c:if test="${status.index == 0 }">
											<div class="item active" data-num="${dolist.i_code }">
												<figure class="snip1349">
													<img src="/resources/image/${dolist.i_image}.jpg"
														alt="${status.index }" />
													<figcaption>
														<h2 id="title">${dolist.i_name }</h2>
														<h4 id="content">${dolist.i_content}</h4>
													</figcaption>
													<a href="#"></a>
												</figure>
											</div>
										</c:if>
										<c:if test="${status.index != 0 }">
											<div class="item" data-num="${dolist.i_code }">
												<figure class="snip1349">
													<img src="/resources/image/${dolist.i_image}.jpg"
														alt="${status.index }" />
													<figcaption>
														<h2 id="title">${dolist.i_name }</h2>
														<h4 id="content">${dolist.i_content}</h4>
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
					<h1 class="text-center">What To Do</h1>
					<hr>
					
					<div id="content3" >
					
					
					</div>

				</div>
			</div>
		</div>
		<!--     end extras -->
	</div>
	<!-- end container -->
	<div class="space-30"></div>
</div>