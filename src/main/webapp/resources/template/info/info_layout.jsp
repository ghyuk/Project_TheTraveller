<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<!-- 브라우저의 호환성 보기 모드를 막고, 해당 브라우저에서 지원하는 가장 최신 버전의 방식으로 HTML 보여주도록 설정.-->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<!--viewport : 화면에 보이는 영역을 제어하는 기술. width는 device-width로 설정. initial-scale는 초기비율-->
<!-- 모바일 웹 페이지 설정 -->
<link rel="shortcut icon" href="/resources/image/icon.png" />
<link rel="apple-touch-icon" href="/resources/image/icon.png" />
<!-- 모바일 웹 페이지 설정 끝 -->
<!--IE8이하 브라우저에서 HTML5를 인식하기 위해서는 아래의 패스필터를 적용하면 된다. http://code.google.com/-->
<!--[if lt IE 9]>
    	 	<script src="/resources/include/js/html5shiv.js"></script>
		<![endif]-->


<link rel="stylesheet" href="/resources/include/css/info.css">
<!-- 없어도 되는듯 -->
<title><tiles:getAsString name="title" /></title>
<style type="text/css">
html, body {
	height: 100%;
	min-height: 100%;
	width: 100%;
}

body {
	background-color: #ecf0f1;
	color: #666;
	font-family: 'Lato', sans-serif;
	font-size: 16px;
	line-height: 1.5;
	min-height: 100%;
	position: relative;
}

.header {
	position: relative;
	height: 100%;
}

.blank {
	min-height: 50px;
}

.second_sec {
	background-color: #212121;
	color: #f0f0f0;
}

#checkInNow {
	margin-left: 152%;
	background-color: #c21616;
}
</style>
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="/resources/include/js/bootstrap.min.js"></script>


</head>
<body data-spy="scroll">
	<header class="header" id="header">
		<tiles:insertAttribute name="header" />
	</header>
	<section>
		<tiles:insertAttribute name="main_section" />
	</section>

	<div class="blank" id="place"></div>
	<div class="blank"></div>
	<section class="section">
		<tiles:insertAttribute name="first_section_lp" />
	</section>
	<div class="blank"></div>
	<div class="second_sec">
		<div id="food"></div>
		<div class="blank"></div>
		<section class="section">
			<tiles:insertAttribute name="second_section_rp" />
		</section>
		<div class="blank"></div>

		<div id="play"></div>
	</div>
	<div class="blank"></div>
	<section class="section">
		<tiles:insertAttribute name="third_section_lp" />
	</section>

	<div class="blank"></div>
	<div class="blank"></div>
	<div class="col-sm-4 col-sm-offset-4 text-center-xs" align="right">
		<button type="submit" id="checkInNow" class="btn btn-submit-line">CHECK
			- IN</button>
	</div>
	<div class="blank"></div>

	<div class="blank"></div>
	<section class="section" id="contact">
		<tiles:insertAttribute name="contact" />
	</section>


	<footer class="footer" id="footer">
		<tiles:insertAttribute name="footer" />
	</footer>
</body>
</html>