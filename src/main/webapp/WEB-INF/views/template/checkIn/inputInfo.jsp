<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/include/css/bootstrap.min.css">


	<script type="text/javascript" src="/resources/include/js/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="/resources/include/js/bootstrap.min.js"></script>

	<style type="text/css">
		#main_section {
			  background: black;
			  background-size: cover;
			  bottom: 0;
			  left: 0;
			  position: absolute;
			  right: 0;
			  top: 0;
			  
			}
			#check_title {
			position:absolute;
			top: 28%;
			left:10%;
			  font-size:730%;
			  font-weight: 800;
			  text-shadow: 2px 2px black;
				color: white;
			}
			#form_wrapper{
			position: absolute;
			top:20%;
			right: 5%;
			left: 45%;
			bottom: 20%;
			background-color: #fff;
			width: 50%;
			z-index: 100;
			overflow: scroll;
			padding: 10px 10% 10px 3%;
			}
			#form_wrapper table{
			width: 100%;}
			#form_wrapper table,td,tr{
				padding: 3px 10px;
			}
			#form_wrapper legend{
			padding: 10px 10px;
			font-size: 40px;
			font-weight: 600;}
	</style>
	
	
	</head>
	
<body>


	<div id="main_section">
		<div id="check_title">
			Check<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;In
		</div>
		<div id="form_wrapper">
			<form>
			  <fieldset>
			    <legend>Information of you</legend>
			    <table>
			    		<tr>
			    			<td>
			    				<div class="form-group">
						      <label for="u_lname">영문 성</label>
						      <input type="text" class="form-control" id="u_lname" placeholder="여권상의 정보와 동일해야 합니다.">
						    </div>
						</td>
					</tr>
					<tr>
			    			<td>
			    				<div class="form-group">
						      <label for="u_fname">영문 이름</label>
						      <input type="text" class="form-control" id="u_fname" placeholder="여권상의 정보와 동일해야 합니다.">
						    </div>
						</td>
					</tr>
					<tr>
			    			<td>
			    				<div class="form-group">
						      <label for="birth">생년월일</label>
						      <input type="text" class="form-control" id="birth" placeholder="YYYY-MM-DD 형식으로 입력해주세요">
						    </div>
						</td>
					</tr>
					<tr>
			    			<td>
			    				<div class="form-group">
						      <label for="u_edate">여권 만료일</label>
						      <input type="text" class="form-control" id="u_edate" placeholder="여권상의 정보와 동일해야 합니다.">
						    </div>
						</td>
					</tr>
					<tr>
			    			<td>
			    				<div class="form-group">
						      <label for="u_phone">전화번호</label>
						      <input type="text" class="form-control" id="u_phone" placeholder="010-0000-0000  형식으로 입력해주세요">
						    </div>
						</td>
					</tr>
					<tr>
			    			<td>
			    				<div class="form-group">
						      <label for="u_email">E-Mail</label>
						      <input type="text" class="form-control" id="u_phone" placeholder="E-Ticket 등의 예약관련 정보가 발송이됩니다.">
						    </div>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<button type="button" class="btn btn-primary" id="next">NEXT</button>
						</td>
					</tr>
			    </table>
			    
			  
			  </fieldset>
			</form>
		</div>
	</div>