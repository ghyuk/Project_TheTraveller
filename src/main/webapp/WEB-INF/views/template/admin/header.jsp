<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <link rel="stylesheet" href="/resources/include/css/bootstrap.min.css">
	<style type="text/css">
		.navbar{
		min-width: 100%;
		position:fixed;
		text-transform:uppercase;
		height: 55px;
		font-weight: 700;
		vertical-align: center;}
		.dropdown-menu{
			background-color: black;
			}
		.dropdown-menu > li > a{
			color: #8b8b8b;}
		.navbar-brand{
			padding-left: 50px;
			font-size: 20px;
			}
		.navbar-nav > li > a{
			font-size: 15px;}

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
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">The Traveller</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/admin/checkInList.do">Check - In List</a></li>
         <li><a href="/admin/contactList.do">Contact List</a></li>
         <li><a href="#">Sales Management</a></li>
        <li><a href="/" style="color:#c21616">Sign - Out</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>