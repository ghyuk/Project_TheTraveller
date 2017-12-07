
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
						<p>미국의 영화 산업 중에서도 뉴욕은 중요한 역할을 하고 있다. 초기 아방가르드 영화인 맨해타는 뉴욕에서 촬영되었다.</p><p> 2,000개 이상의 예술, 문화 단체와 500개 이상의 크고 작은 아트 갤러리가 뉴욕 내에 있다.뉴욕은 예술에 대한 지출이 미국 정부의 국가 예술 기금 예산보다 많다.</p>
						<p> 19세기에는, 카네기 홀과 메트로폴리탄 미술관 등 중요 문화 시설의 네트워크가 구축되었다. 전등의 출현으로 정교한 극장 작품이 생겨나 1880년대에는 브로드웨이와 42번가 극장에서 브로드웨이 뮤지컬로 알려지게되는 새로운 연극이 상연하게 되었다.</p>
						<p>이민자의 영향을 강하게 받아 해리건 앤 하트, 조지 M. 코언 등의 작품은 희망과 야심 등의 테마를 많이 도입한 이야기의 노래를 이용했다. 이 작품은 현재 뉴욕 연극계의 주력이 되고 있다. 좌석수가 500석이 넘는 39개의 대극장은 타임스 스퀘어 극장 지구에 있다. 그 극장에서는 공연을 펼치고, 그 공연 또한 브로드웨이라고 불리기도 한다.</p>
					</div>

				</div>
			</div>
		</div>
		<!--     end extras -->
	</div>
	<!-- end container -->
	<div class="space-30"></div>
</div>