<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script type="text/javascript" src="/resources/include/js/common.js"></script>
<script type="text/javascript">
	$(function() {
		$("#u_birth").val("1990-01-01");
		$("#u_edate").val(date);
		$("#f_payBtn").hide();
		$("#checkBtn").click(function() {
			if(!checkForm($("#u_lname"),"성을")){
				return;
			}else if(!inputVerify(0, $("#u_lname"))){
				return;
			}else if(!checkForm($("#u_fname"),"이름을")){
				return;
			}else if(!inputVerify(0, $("#u_fname"))){
				return;
			}else if(!checkForm($("#u_birth"),"생년월일을")){
				return;
			}else if(!checkForm($("#i_passport"),"여권번호를")){
				return;
			}else if(!checkForm($("#u_edate"),"여권번호 만료일을")){
				return;
			}else if(!checkForm($("#i_phone"),"전화번호를")){
				return;
			}else if(!inputVerify(3, $("#i_phone"))){
				return;
			}else{
				$.ajax({
					url : "/checkIn/fbook.do",
					type : "POST",
					data : $("#f_form").serialize(),
					error : function() {
						alert("gd");
					},
					success : function(result) {
						$("#f_payBtn").click();
						console.log(result);
						$("#s_payBtn").click(function() {
							if(!checkForm($("#u_lname"),"성을")){
								return;
							}else if(!inputVerify(0, $("#u_lname"))){
								return;
							}else if(!checkForm($("#u_fname"),"이름을")){
								return;
							}
							
							
							
							
							$("#s_form").attr({
								"method" : "post",
								"action" : "/checkIn/pay.do"
							});
							$("#s_form").submit();
						});
					}
				});
			}
			

		});

	});
</script>
<style type="text/css">
#main_section {
	background-image: url("/resources/image/osaka.jsp") no repeat;
	background-size: cover;
	position: absolute;
	right: 0;
	top: 0;
	bottom: 0%;
	left: 0;
}
/* #check_title {
			position:absolute;
			top: 28%;
			left:10%;
			  font-size:730%;
			  font-weight: 800;
			  text-shadow: 2px 2px black;
				color: white;
			} */
#form_wrapper {
	/* position: absolute;
			top:10%;
			right: 5%;
			left: 45%; 
			bottom: 0%;*/
	background-color: #fff;
	width: 100%;
	/* z-index: 100; */
	overflow: auto;
	margin: 80px 20% 10px 20%;
	padding: 10px 3% 10px 3%;
}

#form_wrapper table {
	width: 100%;
}

#form_wrapper table, td, tr {
	padding: 3px 10px;
}

#form_wrapper legend {
	padding: 10px 10px;
	font-size: 40px;
	font-weight: 600;
}

.accodion {
	margin-left: 8%;
	padding-top: 80px;
	margin-botton: 500px;
	width: 55%;
}

.panel-body pre {
	min-width: 100%;
	max-height: 440px;
	overflow: scroll;
}

.panel-title {
	width: 100%;
}

.cardBrand {
	width: 30px;
}

table, th, tr, td, .nbsp {
	border-spacing: 0px;
	border: 2px solid white;
}

.col-md-6 {
	min-width: 80%;
	margin: auto 10%;
}

#cardDateYear, #cardDateMonth {
	width: 10%;
	display: inline;
}

#securityCode-label {
	padding-left: 18%;
}

#securitycode {
	margin-left: 3%;
	width: 20%;
	display: inline;
}

#codeImage {
	width: 45px;
	margin-left: 2%;
}

#cardnum {
	width: 60%;
}

.fName, .lName {
	width: 30%;
	display: inline;
}

.modal-btn {
	padding: 0 20px 20px 20px;
}
</style>


<div id="main_section" class="row">
	<!-- <div id="check_title">
			Check<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;In
		</div> -->
	<div class="col-md-4">
		<div id="form_wrapper">
			<fieldset>
				<legend>Booking</legend>
				<form id="f_form">
					<table>
						<tr>
							<td>
								<div class="form-group" data-n="1">
									<label for="u_lname">영문 성</label> <input type="text"
										class="form-control" id="u_lname" name="u_lname"
										placeholder="여권상의 정보와 동일해야 합니다.">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="form-group" data-n="2">
									<label for="u_fname">영문 이름</label> <input type="text"
										class="form-control" id="u_fname" name="u_fname" pattern="[a-zA-Z]{1,15}"
										placeholder="여권상의 정보와 동일해야 합니다.">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="form-group" data-n="3">
									<label for="u_birth">생년월일</label> <input type="date"
										class="form-control" id="u_birth" name="u_birth"
										placeholder="YYYY-MM-DD 형식으로 입력해주세요">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="form-group" data-n="4">
									<label for="u_passport">여권 번호</label> <input type="text"
										class="form-control" id="i_passport" name="u_passport"
										placeholder="여권상의 정보와 동일해야 합니다.">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="form-group" data-n="5">
									<label for="u_edate">여권 만료일</label> <input type="date"
										class="form-control" id="u_edate" name="u_edate"
										placeholder="여권상의 정보와 동일해야 합니다.">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="form-group" data-n="6">
									<label for="u_phone">전화번호</label> <input type="text"
										class="form-control" id="i_phone" name="u_phone"
										placeholder="010-0000-0000  형식으로 입력해주세요">
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="form-group" data-n="7">
									<label for="u_email">E-Mail</label> <input type="text"
										class="form-control" id="u_email" name="u_email"
										placeholder="E-Ticket 등의 예약관련 정보가 발송이됩니다.">
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="right">
								<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#payModal" 
									id="f_payBtn"></button>
								<button type="button" class="btn btn-primary"id="checkBtn">결제</button>
							</td>
						</tr>
					</table>
				</form>
				<!-- Modal -->
				<form id="s_form">
					<div class="modal fade" id="payModal" tabindex="-1" role="dialog"
						aria-labelledby="payModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h3 class="modal-title" id="payModalLabel">Payment</h3>
								</div>

								<div class="modal-body">

									<div class="form-group">
										<label class="payment-label" for="cardBrand">사용가능 카드사
											: </label> <img class="cardBrand" src="/resources/image/unionpay.png">
										<img class="cardBrand" src="/resources/image/master.png">
										<img class="cardBrand" src="/resources/image/visa.png">
										<img class="cardBrand" src="/resources/image/bccard.png">
									</div>
									<div class="form-group">
										<table class="table">
											<colgroup>
												<col width="33%">
												<col width="33%">
												<col width="33%">
											</colgroup>
											<tr>
												<th colspan="2" class="table-title">카드번호</th>
											</tr>
											<tr>
												<td colspan="2"><input type="text" class="form-control"
													id="cardnum" name="cardnum" placeholder="카드번호를 입력하세요">
												</td>
											</tr>
											<tr>
												<th colspan="2" class="table-title">유효기간<span
													id="securityCode-label">보안코드(3자리)</span></th>

											</tr>
											<tr>
												<td colspan="2"><input type="text" class="form-control"
													id="cardDateMonth" name="cardDateMonth" placeholder="MM">
													&nbsp;&nbsp;/&nbsp;&nbsp; <input type="text"
													class="form-control" id="cardDateYear" name="cardDateYear"
													placeholder="YY"> <input type="text"
													class="form-control" id="securitycode" name="securitycode">
													<img id="codeImage" src="/resources/image/securitycode.png">
												</td>

											</tr>
											<tr>
												<th colspan="2" class="table-title">카드 소유자 명</th>
											</tr>
											<tr>
												<td colspan="2"><input type="text"
													class="form-control fName" id="cardfname" name="cardfname"
													placeholder="영문 이름"> <input type="text"
													class="form-control lName" id="cardlname" name="cardlname"
													placeholder="영문 성"></td>
											</tr>

										</table>
									</div>


								</div>
								<!-- <div class="modal-footer">
				        
				      </div> -->

								<div class="modal-header">
									<!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
									<h3 class="modal-title" id="loginModalLabel">Billing
										Details</h3>
								</div>

								<div class="modal-body">

									<div class="form-group">
										<table class="table">
											<tr>
												<th class="table-title">이름</th>
												<th class="table-title">성</th>
											</tr>
											<tr>
												<td><input type="text" class="form-control"
													id="billfname" name="billfname" placeholder="이름"></td>
												<td><input type="text" class="form-control"
													id="billlname" name="billlname" placeholder="성"></td>
											</tr>
											<tr>
												<th colspan="2" class="table-title">회사명</th>
											</tr>
											<tr>
												<td colspan="2"><input type="text" class="form-control"
													id="comname" name="comname"></td>
											</tr>
											<tr>
												<th class="table-title">E-Mail</th>
												<th class="table-title">전화번호</th>
											</tr>
											<tr>
												<td><input type="text" class="form-control"
													id="billemail" name="billemail"></td>
												<td><input type="text" class="form-control"
													id="billphone" name="billphone"></td>
											</tr>
											<tr>
												<th colspan="2" class="table-title">주소</th>
											</tr>
											<tr>
												<td colspan="2"><input type="text" class="form-control"
													id="address" name="address" placeholder="주소를 입력해주세요">
												</td>
											</tr>
											<tr>
												<th class="table-title">우편번호</th>
												<th></th>
											</tr>
											<tr>
												<td><input type="text" class="form-control"
													id="postcode" name="postcode"></td>
												<th></th>
											</tr>
										</table>
									</div>
								</div>
								<div class="modal-btn">
									<button type="button" class="btn btn-primary btn-block"
										id="s_payBtn" name="s_payBtn">결제</button>
									<button type="button" class="btn btn-default btn-block"
										data-dismiss="modal">취소</button>
								</div>
							</div>
						</div>
					</div>
					<!-- end Modal -->
				</form>
			</fieldset>
		</div>
	</div>
	<div class="accodion col-md-4">
		<form name="accodion">
			<div aria-multiselectable="true" role="tablist" id="accordion"
				class="panel-group">
				<!-- 아코디언 영역  -->
				<div class="panel panel-default ">
					<a title="Tab 1" aria-controls="collapse1" aria-expanded="true"
						href="#collapse1" data-parent="#accordion" data-toggle="collapse"
						id="heading1" role="tab" class="panel-heading collapsed"> <span
						class="panel-title"> [ The Traveller 여행약관 ]</span></a>
					<div aria-labelledby="heading1" role="tabpanel"
						class="panel-collapse collapse in" id="collapse1"
						aria-expanded="true">
						<div class="panel-body">
							<pre> 
        제1 장 여행시 항공 규정
        
   제 1조
   ① 모든 가격은 웹사이트의 금액에서 카드수수료+발권수수료를 합산하여 정해집니다.
   ② 항공의 경우 초기 요금과 발권시점 요금이 다를 수 있습니다.
   ③ 항공사의 스케줄 변경으로 인한 본인의 계획 수정은 The Traveller가 책임지지 않습니다.
   ④ 
   ⑤ 각 항공사의 미니멈 체크인 시간을 준수하지 않았을 경우, 환불이 되지 않습니다.
     (출발 시간 전까지 공항에서 본인이 비행 편을 변경해야 합니다)
   ⑥ 체크인: 리셉션에서 좌석 배정된 실제 티켓을 받는 것을 뜻합니다. 카운터에 줄을 서고 있는  것은 인정이 되지 않습니다.
   ⑦ 항공 가격은 기본적으로 수화물이 포함되어 있지 않은 금액입니다.

   ⑨ 수하물 추가하지 않았을 경우, 무게(7~10kg)와 짐 크기(56cmx36cmx23cm)를 준수하셔야 합니다.
   ⑩ 저가항공사의 항공권은 환불불가
   ⑪ 스케줄 확인 및 여권상의 영문성함 재확인해주십시오.
   ⑫ 해당국가 비자 소지 및 유효한지 재확인해주시기 바랍니다.
   ⑬ 여권만료일이 출국일로부터 6개월 이상 남아있어야 출국 가능 합니다.
   ⑭ 항공 티켓과 수하물은 절대 다른 이에게 양도가 불가합니다.
      (양도로 인한 책임은 The Traveller가 지지 않습니다.)
   ⑮ 각 항공권에 쓰여져 있는 시간은 모두 현지시각임을 유의하여 주십시오.
   ** 각 항공사의 규정과 주의점을 꼭 참고 바랍니다. **
   
   제2조 당사와 고객의 의무
   ① 당사는 고객에게 안전하고 만족스러운 여행서비스를 제공하기 위하여 여행알선 및 안내․운송․숙박 등 여행계획의 수립 
   및 실행과정에서 맡은 바 임무를 충실히 수행하여야 합니다.
   ② 고객은 안전하고 즐거운 여행을 위하여 타 여행자와의 화합도모 및 여행업자의 여행질서 유지에 적극 협조하여야 합니다.
   
   제 3조 국제 항공권 규정
   ① 항공권 발권 이후 영문이 틀린 것에 대해서 책임지지 않습니다.
   ② 항공권 유효기간:편도,왕복티켓은 금액,항공사에 따라 유효기간이 다르므로 사전 예약 시 확인 바랍니다.
   ③ 날짜변경 : 발권 후 각 항공사에 따라 변경수수료가 다릅니다.
   ④ 발권 후 환불 시 항공사 페널티 및 수수료가 발생합니다.</pre>

							<input type="checkbox" id="check" name="check1" /> <label
								for=check1>여행약관 동의 시 체크(필수)</label>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<a title="Tab 2" aria-controls="collapse2" aria-expanded="false"
						href="#collapse2" data-parent="#accordion" data-toggle="collapse"
						id="heading2" role="tab" class="panel-heading collapsed"> <span
						class="panel-title">[ The Traveller 개인정보 처리 방침 ]</span></a>
					<div aria-labelledby="heading2" role="tabpanel"
						class="panel-collapse collapse" id="collapse2"
						aria-expanded="false">
						<div class="panel-body">
							<pre>
        제 1장 개인정보보호정책
        
   제 1조 (개인정보보호)
   ① The Traveller는 이용자의 정보수집 시 판·구매 계약 이행에 필요한 최소한의 정보를 수집합니다.
   다음 사항을 필수사항으로 하며 그 외 사항은 관련법령 및 개인정보 처리방침을 따릅니다.
   가. 성명, 생년월일
   나. 휴대전화번호
   다. 아이디ID(회원의 경우)
   라. 비밀번호(회원의 경우)
   마. E-mail 주소(회원의 경우)
   
   ②  The Traveller는 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.
   
   ③ 제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은 회사가 집니다.
   단, 판매자에 의하여 목적 외로 이용되거나 제3자에게 제공되는 경우에는 회사의 귀책사유가 있는 경우에만 책임을 집니다. 
   다만, 다음의 경우에는 예외로 합니다.
   가. 배송업무상 배송업체에게 배송에 필요한 최소한의 이용자의 정보(성명, 주소, 전화번호)를 알려주는 경우
   나. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공하는 경우
   다. 여행 상품 이용 시 여행 상품 제공을 목적으로 해당 기관(항공사, 숙박업소 등)에 알려주는 경우
   라. 고객의 제세공과금(원천징수 세금 포함) 관련 해당 기관(세무서 등)에 통보하는 경우
   마. 재화등의 거래에 따른 대금정산을 위하여 필요한 경우
   바. 도용방지를 위하여 본인확인에 필요한 경우
   사. 법률의 규정 또는 법률에 의하여 필요가 불가피한 사유가 있는 경우
   
   ④ 회사는 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보 보호책임자의 신원(소속, 성명 및 전화번호 기타 연락처), 정보의 수집목적 및 이용목적, 
   제3자에 대한 정보제공 관련사항(제공받는 자, 제공목적 및 제공할 정보의 내용)등 정보통신망이용촉진 등에 관한 법률 
   제 22조 제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.
    
   ⑤ 이용자는 언제든지 회사가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 회사는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 
   이용자가 오류의 정정을 요구한 경우에는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.
   
   ⑥ 이용자의 기존 개인정보와 이용자가 본인인증시 인증한 개인정보가 상이할 경우, 회사는 이용자가 본인인증시 인증한 개인정보로 회원정보를 수정할 수 있다.
   
   ⑦ 회사는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 
   변조 등으로 인한 이용자의 손해에 대하여 모든 책임을 집니다.
   
   ⑧ 회사 또는 회사로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.
    단, 선불형지급수단의 이용과 관련한 개인정보는 관련 회계처리가 모두 종료되는 시점에 파기합니다.
    
   ⑨ 이용계약이 종료된 경우, 회사는 당해 회원의 정보를 파기하는 것을 원칙으로 합니다. 다만, 아래의 경우에는 회원 정보를 보관합니다.
   이 경우 회사는 보관하고 있는 회원 정보를 그 보관의 목적으로만 이용합니다.
   가. 상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원 정보를 보관합니다.
   나. 회사를 통하여 물품을 매매(등록, 판매를 포함)한 내역이 있는 판매자에 대하여 이용계약이 종료된 경우, 회사는 거래당사자들에 대한 정보제공과 이 약관에 
   정한 제한을 의도적으로 회피하기 위한 임의해지를 방지하기 위하여 이용계약종료 후 6개월간 아이디(ID), 성명 또는 상호, 연락처, 주소 등을 보관하며, 
   전자상거래등에서의 소비자보호법률 시행령 제 6조에 명기된 사항들의 보존기간을 준수합니다.
   다. 회사가 이용계약을 해지하거나 회사로부터 이 약관이 정한 판매자 자격정지조치를 받은 판매자에 대해서는 재가입에 대한 승낙거부사유가 존재하는지 여부를       
   라. 판매자가 회사에 대하여 미결제수수료가 있는 경우, 그 수금을 위하여 수금완료 시까지 해당 판매자의 성명 또는 상호, 연락처, 주소 등 최소한의 필요정보를 보관합니다.
   마. 기타 정보수집에 관한 동의를 받을 때 또는 고객이 명시적으로 그 보유기간을 정한 경우(다만 법률상 의무보존기간은 초과하지 아니합니다.)에는 그 보유기간까지 회원 정보를 보관합니다
   
   * 위의 약관을 이해하며 이에 동의함을 확인합니다.</pre>
							<input type="checkbox" id="check" name="check2" /> <label
								for=check2>개인정보 보호정책 동의 시 체크(필수)</label>
						</div>

					</div>
				</div>
				<div class="panel panel-default">
					<a title="Tab 3" aria-controls="collapse3" aria-expanded="false"
						href="#collapse3" data-parent="#accordion" data-toggle="collapse"
						id="heading3" role="tab" class="panel-heading collapsed"> <span
						class="panel-title">[ The Traveller 환불 규정 ]</span></a>
					<div aria-labelledby="heading3" role="tabpanel"
						class="panel-collapse collapse" id="collapse3"
						aria-expanded="false">
						<div class="panel-body">
							<pre>
        제 1장 환불 및 취소 규정 
        
   제 1조 
   ① 투어 바우처가 발행 및 발송 이후 환불 신청이 불가 합니다.  
   ② 호텔 숙박 및 항공은 바우처를 받기 전이라도, 예약 완료 후에는 환불이 불가합니다. 
      
   제 2조 ( 당사가 해제할 수 있는 경우 ) 예약 취소
   ① 다른 여행자에게 폐를 끼치거나 여행의 원활한 실시에 현저한 지장이 있다고 인정될 때
   ② 질병 등 여행자의 신체에 이상이 발생하여 여행에 참가가 불가능한 경우
   ③ 여행자가 계약서에 기재된 기일까지 여행요금을 납입하지 아니한 경우
   
   제3조 ( 여행자가 해제할 수 있는 경우 )
   ① 당사의 귀책사유로 바우처 또는 여행일정표에 기재된 여행 일정대로의 여행실시가 불가능해진 경우 현지 업체의 귀책사유 또는 천재지변은 당사의 귀책사유가 될 수 없습니다.
   ② 여행요금의 증액으로 인하여 여행 계속이 어렵다고 인정될 경우
    
   제 3 조( 여행출발 후 계약해지)
   1. 당사 또는 여행자는 여행출발 후 부득이한 사유가 있는 경우, 이 여행계약을 해지할 수 있습니다. 단, 이로 인하여 상대방이 입은 손해를 배상하여야 합니다.
   2. 계약이 해지된 경우 당사는 여행자가 귀국하는데 필요한 사항을 협조하여야 하며, 이에 필요한 비용으로써 당사의 귀책사유에 의하지 아니한 것은 여행자가 부담합니다.
    
   제 4조 (여행의 시작과 종료)
   1. 여행의 시작과 종료일정은 바우쳐를 기준으로 하며, 이외의 일정에 당사가 책임지지 않습니다.
    
   [기타사항]
   1. 이 계약에 명시되지 아니한 사항 또는 이 계약의 해석에 관하여 다툼이 있는 경우에는 당사 또는 여행자가 합의하여 결정할수있습니다.
   2. 특수지역에의 여행으로서 정당한 사유가 있는 경우에는 당사의 여행약관의 내용과 달리 정할 수 있습니다.
      단, 최저행사인원이 충족되지 않아 불가피하게 기획여행을 실시할 수 없는 경우에는 당사가 여행자에게 배상한다.
   ※ 여행요금이란 일정표상 명시된 총 상품가격을 의미한다.
   3. 예약자, 여행자, 결제자가 동일 해야하며, 카드결제시에는 카드소지자의 이름과 결제자의 이름이 동일 해야 합니다.
      만약 여행자와 결제자가 일치 하지 않을 경우, 카드 소지자 본인의 신분증 사본과 결제승인요청서가 요구 됩니다.
   4.  여행자는 여행출발 후 본인의 사정으로 항공, 숙박 
   </pre>

							<input type="checkbox" id="check" name="check3" /> <label
								for=check3>환불 및 취소규정 동의 시 체크(필수)</label>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<a title="Tab 4" aria-controls="collapse4" aria-expanded="false"
						href="#collapse4" data-parent="#accordion" data-toggle="collapse"
						id="heading4" role="tab" class="panel-heading collapsed"> <span
						class="panel-title">[ The Traveller 유의사항 ]</span></a>
					<div aria-labelledby="heading4" role="tabpanel"
						class="panel-collapse collapse" id="collapse4"
						aria-expanded="false">
						<div class="panel-body">
							<pre>
        제 1장 (항공 이용 시 유의사항)
   ① 항공 탑승 수속은 최소 2시간 전까지 공항에서 마치셔야 하며, 수속시간이 늦을 경우 탑승이 거절 될 수 있습니다.
   ② 항공 좌석 배정은 해당 항공사 고유의 권한으로 임의적 배정이 불가하며, 개별적으로 탑승 수속 창구에서 좌석배정을 받으셔야 합니다.
   ③ 2007년 3월부터 용기당 100ml 초과하는 액체류(화장품, 치약류, 젤) 등은 기내반입 불가합니다.
   ④ 해당 항공사의 마일리지 카드는 각 항공사 웹사이트를 통해 등록 해주시기 바랍니다.
   ⑤ 일정표에 기재된 항공 스케쥴은 항공사 사정에 의해 변동 될 수 있습니다.
    
   제 2 장 ( 입국 심사 유의사항 )
   ① 기내에서 제공되는 입국/세관신고서를 작성하시기 바랍니다. (현지주소 작성시 – 호텔명 기입)
   ② 여권을 제출하시기 바랍니다.
   ③ 입국시 음식물 반입이 까다로우니 유의바랍니다. 생과일, 생야채류, 견과류, 육류, 유제품등의 반입이 금지 품목입니다. 
   밀폐된 식품,인스턴트 식품 등은 신고를 하셔야 하며, 입국시에 반입하는 모든 식품류는 입국시에 제출하는 세관신고서에 신고 후 세관원에 의해 반입 가능하다고 판단되는 것만 반입 가능합니다.
   * 음식물 등 세관 신고 작성을 소지 물품과 다르게 할 경우 물품의 회수 또는 벌금을 부과할 수 있습니다.
   ④ 여권유효기간이 6개월 미만은 입국 거절 되실 수 있습니다.
    
   제 3장 ( 여행시 유의사항 )
   ① 각 나라마다 계절이 다를 수 있으니 사전 확인 필요합니다. 
   ② 보통의 옷차림이면 대부분의 경우 무난하게 여행할 수 있지만 트레킹 등 야외활동할 때에는 여름철이라도 가벼운 자켓 또는 방수옷이나 우의를 챙기는 편이 좋습니다. 
   또한 추운 시기에는 따뜻한 겨울 옷을 챙기는 편이 좋습니다.
    
   제 4장 ( 호스텔 이용시 유의사항 )
   ① 호스텔의 경우, 아동 또는 유아동반이 불가능한 경우가 대부분입니다. 호텔 숙소 또는 민박상품 문의부탁드립니다.
   ② 체크인은 일반적으로 오후 2시 이후 가능하며 여권과 함께 바우처를 제출 바랍니다.
   ③ 다인실 도미토리 형태로 4~10명이 공동으로 다층 침대 개별사용하며 화장실, 샤워실 등을 공동 사용합니다.
    * 개인의 소지품 보관에 주의하시기 바라며 이에 민감하신 분들은 호텔로 업그레이드 하시기 바랍니다.
    * 또한 다인실 배정 시, 일행끼리 같은 룸이 불가능할 수 있습니다.
    * 같은 성별이 아닐 경우도 있습니다.
   ④ 바우처는 공항 체크인 경우에도 요구할 수 있으므로 전 일정 소지해 주셔야 합니다.
   ⑤ 관광 스케쥴 등으로 체크인이 늦을 경우, 숙소 측에 미리 연락 바랍니다.
   ⑥ 환경 보호 차원에서 객실 내 실내화, 치약, 칫솔이 구비되어 있지 않는 경우가 있으므로 미리 준비하셔야 합니다.
   ⑦ 객실 내 기물 파손 시, 각 숙소마다 보상규정이 있으니 주의 바랍니다
   ⑧ 투숙 시, 발생하는 개인비용(룸키 보증금, 전화비, 인터넷 등)에 대한 보증금(deposit)은 현지에서 결제하셔야 합니다.
    
   제 5장 ( 교통편 이용시 유의사항 )
   ① 현지 사정에 의한 시간 변경은 규정에 따라 환불 조치되며 일정 변경에 파생된 추가요금은 여행사가 책임지지 않습니다.
   ② 현지 사정에 의한 버스 및 기차 취소는 환불 규정에 따라 환불 됩니다.
   ③ 버스 및 기차의 일정 변경은 불가하며 짐 20kg 소지자에 한해 추가비용이 발생됩니다.
   </pre>
							<input type="checkbox" id="check" name="check4" /> <label
								for=check4>환불 및 취소규정 동의 시 체크(필수)</label>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

