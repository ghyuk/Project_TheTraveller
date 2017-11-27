<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />

<!--  jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<style>
#main_section {
	background: black;
	background-size: cover;
	bottom: 0;
	left: 0;
	position: absolute;
	right: 0;
	top: 0;
	z-index: 2;
}

#check_title {
	position: absolute;
	top: 28%;
	left: 10%;
	font-size: 730%;
	font-weight: 800;
	text-shadow: 2px 2px black;
	color: white;
}

#form_wrapper {
	position: absolute;
	top: 20%;
	right: 5%;
	left: 45%;
	bottom: 20%;
	background-color: #fff;
	width: 50%;
	z-index: 100;
	overflow: scroll;
	padding: 10px;
}

#form_wrapper table {
	width: 90%;
}

#form_wrapper table, td, tr {
	padding: 3px 10px;
}

#form_wrapper legend {
	padding: 10px 10px;
	font-size: 40px;
	font-weight: 600;
}
</style>
<script type="text/javascript">
	$(function() {
		$("#d_date").datepicker({
			changeMonth : true,
			minDate : 0,
			dateFormat : "yy-mm-dd",
			nextText : '다음 달',
			prevText : '이전 달',
			onClose : function(selectedDate) {
				$("#a_date").datepicker("option", "minDate", selectedDate);
			}
		});
		$("#a_date").datepicker({
			changeMonth : true,
			dateFormat : "yy-mm-dd",
			nextText : '다음 달',
			prevText : '이전 달',
			onClose : function(selectedDate) {
				$("#d_date").datepicker("option", "maxDate", selectedDate);
			}
		});
		$("#next").click(function() {
			console.log($("#arrival").val());
			console.log($("#d_date").val());
			console.log($("#a_date").val());
			console.log($("#class").val());

		})
	});
</script>
<div id="main_section">
	<div id="check_title">
		Check<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;In
	</div>
	<div id="form_wrapper">
		<form id="f_check">
			<fieldset>
				<legend>Flight & Hotel</legend>
				<table>
					<tr>
						<td>
							<div class="form-group">
								<label for="departure">출발 도시</label> <input type="text"
									class="form-control" id="departure" value="서울(인천)">
							</div>
						</td>
						<td>
							<div class="form-group">
								<label for="arrival">도착 도시</label> <select class="form-control"
									id="arrival">
									<option value="newyork">NewYork</option>
									<option value="Melbourne">Melbourne</option>
									<option value="Madrid">Madrid</option>
									<option value="Osaka">Osaka</option>
								</select>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group">
								<label for="d_date">출국일</label> <input type="text"
									class="form-control" id="d_date" placeholder="출국일을 선택해주세요">
							</div>
						</td>
						<td>
							<div class="form-group">
								<label for="a_date">귀국일</label> <input type="text"
									class="form-control" id="a_date" placeholder="귀국일을 선택해주세요">
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="form-group">
								<label for="class">좌석 등급</label> <select class="form-control"
									id="class">
									<option value="economy" selected>일반석</option>
									<option value="business">비즈니스</option>
									<option value="first">퍼스트</option>
								</select>
							</div>
						</td>
						<td>
							<div class="form-group">
								<label for="people">인원</label> <select class="form-control"
									id="people">
									<option value="1" selected>1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
								</select>
								<!--  <input type="text" class="form-control" id="people" value="1"> -->
							</div>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<button type="button" class="btn btn-primary" id="next">NEXT</button>
						</td>
					</tr>
				</table>

				<!-- <div class="form-group">
			      <label for="exampleInputPassword1">Password</label>
			      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
			    </div>
			    <div class="form-group">
			      <label for="exampleSelect1">Example select</label>
			      <select class="form-control" id="exampleSelect1">
			        <option>1</option>
			        <option>2</option>
			        <option>3</option>
			        <option>4</option>
			        <option>5</option>
			      </select>
			    </div>
			    <div class="form-group">
			      <label for="exampleSelect2">Example multiple select</label>
			      <select multiple="" class="form-control" id="exampleSelect2">
			        <option>1</option>
			        <option>2</option>
			        <option>3</option>
			        <option>4</option>
			        <option>5</option>
			      </select>
			    </div>
			    <div class="form-group">
			      <label for="exampleTextarea">Example textarea</label>
			      <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
			    </div>
			    <div class="form-group">
			      <label for="exampleInputFile">File input</label>
			      <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
			      <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
			    </div>
			    <fieldset class="form-group">
			      <legend>Radio buttons</legend>
			      <div class="form-check">
			        <label class="form-check-label">
			          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
			          Option one is this and that—be sure to include why it's great
			        </label>
			      </div>
			      <div class="form-check">
			      <label class="form-check-label">
			          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios2" value="option2">
			          Option two can be something else and selecting it will deselect option one
			        </label>
			      </div>
			      <div class="form-check disabled">
			      <label class="form-check-label">
			          <input type="radio" class="form-check-input" name="optionsRadios" id="optionsRadios3" value="option3" disabled="">
			          Option three is disabled
			        </label>
			      </div>
			    </fieldset>
			    <div class="form-check">
			      <label class="form-check-label">
			        <input type="checkbox" class="form-check-input">
			        Check me out
			      </label>
			    </div> -->
				<!-- <button type="submit" class="btn btn-primary">Submit</button> -->
			</fieldset>
		</form>
	</div>
</div>