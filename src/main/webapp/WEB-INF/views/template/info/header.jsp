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
	z-index: 100;
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
/* modal css */
.modal-content{
		width: 300px;
 		 height: 500px;
		background-image: url("/resources/image/loginbg.png") ;
		}
		.login-header{
		height: 230px;
		color: white;
		text-shadow: 1px 1px black;
		
		}
		#login-logo{
		width:80px;
		margin-left: 110px;
		padding-top: 40px;
		padding-bottom: 20px;
		}
		
		.up-title{
		font-size: 30px;
		font-weight: 600;
		margin-left: 60px;
		}/*
		.up-title{
		margin-left: 40px;
		padding-top: 50px;}
		.down-title{
		margin-left: 110px;
		} */ 
		.login-label{
		color: white;
		text-shadow: 1px 1px #8b8b8b;}
		.modal-btn{
		margin-top: 25px;}
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
				<li class="nav-menu"><a href="/">About</a></li>
				<li class="dropdown nav-menu"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false">Cities
						<span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="main.do?main=newyork">Newyork</a></li>
						<li><a href="main.do?main=melbourne">Melbourne</a></li>
						<li><a href="main.do?main=madrid">Madrid</a></li>
						<li><a href="main.do?main=osaka">Osaka</a></li>
					</ul></li>
				<li class="nav-menu"><a href="#place">Place</a></li>
				<li class="nav-menu"><a href="#food">Food</a></li>
				<li class="nav-menu"><a href="#play">Play</a></li>
				<li class="nav-menu"><a href="#contact">Contact</a></li>
				<li class="nav-menu"><a href="#myinfo" data-toggle="modal" data-target="#loginModal">My Info</a></li>
				<li class="nav-menu"><a href="/test/check.do" style="color: #c21616">Check-In</a></li>
				<!-- 관리자 모드 -->
				<!-- <li class="admin-menu"><a href="#checkInList">Check-In List</a></li>
				<li class="admin-menu"><a href="#contactList">Contact List</a></li>
				<li class="admin-menu"><a href="#logOut">Log - Out</a></li> -->
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>

<!--Login Modal -->
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog  modal-sm">
    <div class="modal-content">
      <!-- <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title" id="loginModalLabel">Log - In</h3>
      </div> -->
      <div class="login-header">
      	<div><img id="login-logo" src="/resources/image/loginlogo.png"></div>
      	<span class="up-title">CHECK - UP</span>
      </div>
      <div class="modal-body">
        	<form id="f_login">
		  <div class="form-group">
		    <label class="login-label"for="u_passport">PASSPORT</label>
		    <input type="text" class="form-control" id="u_passport" name="u_passport" placeholder="여권번호를 입력하세요">
		  </div>
		  <div class="form-group">
		    <label class="login-label" for="u_phone">PHONE</label>
		    <input type="text" class="form-control" id="u_phone" name="u_phone" placeholder="핸드폰번호를 입력하세요">
		  </div>
		  <div class="modal-btn">
			<button type="button" class="btn btn-primary btn-block">Log-In</button>
        		<button type="button" class="btn btn-default btn-block" data-dismiss="modal">Cancel</button>
        </div>
		</form>
		
      </div>
      <!-- <div class="modal-footer">
        
      </div> -->
    </div>
  </div>
</div>
