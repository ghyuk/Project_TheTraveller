<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/include/css/bootstrap.min.css">
<style type="text/css">
.container-fluid {
	
}

.navbar {
	z-index: 100;
	position: fixed;
	min-width: 100%;
	text-transform: uppercase;
	height: 55px;
	font-weight: 700;
	vertical-align: center;
}

.dropdown-menu {
	background-color: black;
}

.dropdown-menu>li>a {
	color: #8b8b8b;
}

.navbar-brand {
	padding-left: 50px;
	font-size: 20px;
}

.navbar-nav>li>a {
	font-size: 15px;
}
</style>


<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">The Traveller</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/">About</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Cities
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="main.do?main=newyork">Newyork</a></li>
						<li><a href="main.do?main=melbourne">Melbourne</a></li>
						<li><a href="main.do?main=madrid">Madrid</a></li>
						<li><a href="main.do?main=osaka">Osaka</a></li>
					</ul></li>
				<li><a href="#place">Place</a></li>
				<li><a href="#food">Food</a></li>
				<li><a href="#play">Play</a></li>
				<li><a href="#contact">Contact</a></li>
				<li><a href="#myinfo">My Info</a></li>
				<li><a href="/test/check.do" style="color: #c21616">Check-In</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>