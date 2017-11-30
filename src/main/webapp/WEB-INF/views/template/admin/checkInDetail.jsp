<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
table, th, tr, td {
	border: 1px solid black;
	border-spacing: 0px;
}

.detailTable {
	padding-top: 80px;
	z-index: 1;
}

.col-md-6 {
	min-width: 80%;
	margin: auto 10%;
}

.table-new {
	background-color: #222f3f;
	color: white;
}

.table-danger {
	background-color: #c21616;
	color: white;
}

.boardBtn {
	text-align: right;
}

#update, #cancel {
	width: 49%;
	display: inline;
}

.detailTable .table-title {
	background-color: #f0f0f0;
	font-size: 18px;
}

#b_status {
	width: 80%;
	font-size: 22px;
	background-color: #f0f0f0;
}

#u_lname, #u_fname {
	width: 49%;
}
</style>
<script type="text/javascript">
	$(function(){
        $("#b_status").val(${dvo.b_state}).prop("selected", "true");
		
		
		$("#update").click(function(){
			if($("#f_num1").val()==''|| $("#f_num2").val()==''||$("#h_num").val()==''){
				if(confirm("발권번호가 모두 입력되지 않았습니다.\n현재 입력 값으로 입력 하시겠습니까?")){
					if(confirm("입력하신 발권번호는\n출국발권번호 : "+$("#f_num1").val()+"\n입국발권번호 : "+$("#f_num2").val()+"\n호텔발권번호 : "+$("#h_num").val()+"\n진행하시겠습니까?")){
						$("#b_form").attr({
							"method":"post",
							"action":"/admin/checkInDetailUpdate.do"
						});
						$("#b_form").submit();
					}
				}
			}else{
				if(confirm("입력하신 발권번호는\n출국발권번호 : "+$("#f_num1").val()+"\n입국발권번호 : "+$("#f_num2").val()+"\n호텔발권번호 : "+$("#h_num").val()+"\n진행하시겠습니까?")){
					$("#b_form").attr({
						"method":"post",
						"action":"/admin/checkInDetailUpdate.do"
					});
					$("#b_form").submit();
				}
			}
			
		});
	});
</script>

<div class="detailTable">
	<div class="row">
		<div class="col-md-6">
			<h1>Check - In Detail</h1>
			<hr>
			<form id="b_form" >
				<input type="hidden" id="u_code" name="u_code" value="${dvo.u_code }"/>
				<input type="hidden" id="finfo" name="finfo" value="${dvo.finfo }"/>
				<input type="hidden" id="hinfo" name="hinfo" value="${dvo.hinfo }"/>
				<table class="table table-bordered">
					<colgroup>
						<col width="20%">
						<col width="30%">
						<col width="20%">
						<col width="30%">
					</colgroup>
					<thead>
						<tr>
							<th class="table-title">예약번호</th>
							<td><input type="text" id="b_code" name="b_code"
								value="${dvo.b_code }" readonly /></td>
							<th class="table-title">예약일</th>
							<td><input type="text" id="b_date" name="b_date"
								value="${dvo.b_date }" readonly /></td>
						</tr>
					</thead>
					<tbody>
						<!-- 예약입력 시 아래 tr태그에 addClass("info") -->
						<%-- <c:if test="인원수 > 1">
	            		<c:forEach var="cnt" item="인원리스트">
	            			<tr>
			                <th class="table-title">예약자 명</th>
			                <td>
			                		<input type="text" id="u_lname" name="u_lname" value="성" readonly/>
			                		<input type="text" id="u_fname" name="u_fname" value="이름" readonly/>
			                	</td>
			                	<th class="table-title">여권번호</th>
			              	<td><input type="text" id="u_passport" name="u_passport" value="여권번호" readonly/></td>
			              </tr>
			              
			              <tr>
			              	<th class="table-title">생년월일</th>
			              	<td><input type="text" id="u_birth" name="u_birth" value="생년월일" readonly/></td>
			              	<th class="table-title">여권 만료일</th>
			              	<td><input type="text" id="u_edate" name="u_edate" value="여권 만료일" readonly/></td>
			              </tr>
			              <tr>
			              	<th class="table-title">전화번호</th>
			              	<td><input type="text" id="u_phone" name="u_phone" value="010-0000-0000" readonly/></td>
			              	<th class="table-title">이메일</th>
			              	<td><input type="text" id="u_email" name="u_email"	 value="aaa@aaa.com" readonly/></td>
			              </tr>
	            		</c:forEach>
	            </c:if> --%>
						<tr>
							<th class="table-title">예약자 명</th>
							<td><input type="text" id="u_lname" name="u_lname"
								value="${dvo.u_lname }" readonly /> <input type="text"
								id="u_fname" name="u_fname" value="${dvo.u_fname }" readonly /></td>
							<th class="table-title">여권번호</th>
							<td><input type="text" id="u_passport" name="u_passport"
								value="${dvo.u_passport }" readonly /></td>
						</tr>
						<tr>
							<th class="table-title">생년월일</th>
							<td><input type="text" id="u_birth" name="u_birth"
								value="${dvo.u_birth }" readonly /></td>
							<th class="table-title">여권 만료일</th>
							<td><input type="text" id="u_edate" name="u_edate"
								value="${dvo.u_edate }" readonly /></td>
						</tr>
						<tr>
							<th class="table-title">전화번호</th>
							<td><input type="text" id="u_phone" name="u_phone"
								value="${dvo.u_phone }" readonly /></td>
							<th class="table-title">이메일</th>
							<td><input type="text" id="u_email" name="u_email"
								value="${dvo.u_email }" readonly /></td>
						</tr>
						<tr>
							<th class="table-title">도시 명</th>
							<td><input type="text" id="c_code" name="c_code"
								value="${fvo.out_airport }" readonly /></td>
							<th class="table-title">좌석 등급</th>
							<td><input type="text" id="class" name="class"
								value="${fvo.sittype }" readonly /></td>
						</tr>
						<tr>
							<th class="table-title">출국일</th>
							<td><input type="text" id="d_date" name="d_date"
								value="${fvo.out_day } / ${fvo.out_time}" readonly /></td>
							<th class="table-title">귀국일</th>
							<td><input type="text" id="a_date" name="a_date"
								value="${fvo.hout_day} / ${fvo.hout_time}" readonly /></td>
						</tr>
						<tr>
							<th class="table-title">출국 편명</th>
							<td><input type="text" id="f_code" name="f_code"
								value="${fvo.airline }" readonly /></td>
							<th class="table-title">출국편 발권 번호</th>
							<td><input type="text" id="f_num1" name="f_num1" value="${dvo.f_num1 }" /></td>
						</tr>
						<tr>
							<th class="table-title">귀국 편명</th>
							<td><input type="text" id="f_code" name="f_code"
								value="${fvo.airline }" readonly /></td>
							<th class="table-title">귀국편 발권 번호</th>
							<td><input type="text" id="f_num2" name="f_num2" value="${dvo.f_num2 }" /></td>
						</tr>
						<tr>
							<th class="table-title">호텔 명</th>
							<td><input type="text" id="h_name" name="h_name"
								value="${hvo.h_name }" readonly /></td>
							<th class="table-title">호텔 발권 번호</th>
							<td><input type="text" id="h_num" name="h_num" value="${dvo.h_num }" /></td>
						</tr>
						<tr>
							<th class="table-title">예약 현황</th>
	
							<!-- 관리자일경우 -->
							<td><select id="b_status" name="b_state">
									<option value="1" selected>wait</option>
									<!-- 결제 완료 단계 -->
									<option value="2">operating</option>
									<!-- 호텔/항공	예약 후 발권번호 대기중 -->
									<option value="3">done</option>
									<!-- 호텔/항공 확정예약번호를 받은 후 -->
									<option value="4">cancel</option>
							</select></td>
							<td colspan="2"><input type="button" id="update"
								name="update" class="btn btn-success" value="update" /> <input
								type="button" id="cancel" name="cancel" class="btn btn-danger"
								value="cancel" /></td>
							<!-- 고객 예약확인일 경우 -->
							<!-- <td><input type="text" id="b_status" name="b_status" value="operating" readonly/></td>
	              	<th class="table-title">가격</th>
	              	<td><input type="text" id="total" name="total" value="$price" readonly/></td> -->
						</tr>
					</tbody>
				</table>
			</form>	
		</div>
	</div>
</div>