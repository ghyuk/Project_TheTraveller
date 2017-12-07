
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
	#content{
	text-align: left;}
</style>

<div class="main">
	<div class="container tim-container">
		<div id="extras">
			<div class="space"></div>
			<div class="row">
				<div class="col-md-5 col-sm-12">
					<h1 class="text-center">What To Eat</h1>
					<hr>
					
					<div id="content2" >
						<p>국제 도시 뉴욕에는 세계적인 실력을 가진 요리사가 운영하는 레스토랑이 즐비하다. </p>
						<p>이탈리아, 프랑스, 일본 본토보다 더 훌륭한 수준의 요리를 선보이고 있어 미식가들의 발길이 끊이지 않는다. </p>
						<p>고급요리 외에도 저렴하지만 양과 질 모두 만족할 만한 델리, 패스트푸드점은 물론 동남아 요리를 비롯한 다양한 나라의 음식을 즐길 수 있다.</p>
						<p>동유럽과 이탈리아 이민자의 손에 의해 유명해진 것이 베이글, 치즈 케이크, 뉴욕풍 피자이다. </p>
						<p>허가를 받은 이동식 식료품 가게가 약 4000점 있으며 대부분이 이민자들이 경영한다. 그 중에서 현대 뉴욕의 길거리 음식으로 인기를 끈 것이 팔라펠이나 케밥 등 중동 요리이다. 또한, 핫도그와 프레즐은 길거리 음식의 대표적인 음식이다. </p>
					</div>

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