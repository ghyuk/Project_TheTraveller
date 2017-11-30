<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/include/css/bootstrap.min.css">

<style type="text/css">
/* table{
			min-width: 100%;
			border: 3px solid black;
			}
			tr, td{
			padding: 10px;
			}
			thead{
			padding: 10px;}
			td{
			text-align: center;}
			span{
			display: block;
			}
			.name{
			vertical-align: center;}
		
			.info-main{
			border-top: 2px solid black;
			border-bottom: 2px solid black;}
			.table-main-title th{
			padding: 10px;
			font-weight: 900;}
			#f_choose{
			margin-left: 80%;} */
table, th, tr, td {
	border: 1px solid black;
	border-spacing: 0px;
}

span {
	display: block;
}

.checkInTable {
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

tr, td {
	padding: 10px;
}

thead {
	padding: 10px;
}

#f_choose {
	margin-left: 80%;
}
</style>
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
var f_form=null ,h_form=null,f_ck=0,h_ck=0;
$(function(){
	
	console.log("${code}");
	flight();
	hotel();

	$(document).on("click",".fchoice",function(){
		if(f_ck==0){
			f_ck=1;
			$(this).parents("tbody").css("background","yellow");
		}else{
			f_ck=0;
			$(this).parents("tbody").css("background","white");
		}
		var form = $(this).parents("form");
		f_form = form;
		console.log(f_form.html());
	});
	
	$(document).on("click",".hchoice",function(){
		if(h_ck==0){
			h_ck=1;
			$(this).parents("tbody").css("background","yellow");
		}else{
			h_ck=0;
			$(this).parents("tbody").css("background","white");
		}
		var form = $(this).parents("form");
		h_form = form;
		h_form.attr({
			"method":"post",
			"action":"/checkIn/hotel.do"
		});
		console.log(h_form.html());
	});
	
	console.log(h_form);
	$("#nextBtn").click(function(){$
		
		if(h_form == null || h_form == ''){
			alert("선택된 호텔이 없습니다 선택해주세요.");
			return;
		}
		if(f_form == null || f
				_form == ''){
			alert("선택된 항공이 없습니다 선택해주세요.");
			return;
			
		}else{
			$.ajax({
				url : "/checkIn/flight.do",
				type : "POST",
				data : f_form.serialize(),
				error : function(){
					alert("오류1");
				},
				success : function(result){
				}
			});
			$.ajax({
				url : "/checkIn/hotel.do",
				type : "POST",
				data : h_form.serialize(),
				error : function(){
					alert("오류2");
				},
				success : function(result){
				}
			});
			
			$("#nextForm").attr({
				"method":"post",
				"action":"/checkIn/book.do"
			});
			$("#nextForm").submit();
		}
	});
	
	
});


	function flight(){
	var city = "${cvo.arrival_city}";
	var start = "${cvo.d_date}";
	var end = "${cvo.a_date}";
	var adult = "${cvo.people}";
	var uri="http://api.sandbox.amadeus.com/v1.2/flights/low-fare-search?";
	var origin="&origin=SEL";
	var destination="&destination="+city;
	var departure_date="&departure_date="+start;
	var return_date="&return_date="+end;
	var adults="&adults="+adult;
	var rest="&currency=KRW&number_of_results=4 HTTP/1.1";
	
	var key="apikey=mXBxI1OLDAM84vgb0gWKYdHXp8rGUWAd"+origin+destination+departure_date+return_date+adults+rest;
	var apiurl=uri+key;
	var url="/checkIn/fdata.do";
		console.log("씨티:"+city+"시작일:"+start+"종료일:"+end);
		console.log("요청값:"+apiurl);
		$("#apiurl").val(apiurl);
		$.getJSON(url,$("#formapiurl").serialize() , function(data){
		
			var currency=data.currency;
		   	var results=data.results;
			var i=results.length;
		    
			for(var n=0; n<i; n++){
					var price_t=data.results[n].fare.total_price;
					var price = price_t.split(".");
					//환불가능여부
					var refundable=data.results[n].fare.restrictions.refundable;
					//환불패널티여부
					var penalties=data.results[n].fare.restrictions.change_penalties;
					//출국항공사
					var out_airline=data.results[n].itineraries[0].outbound.flights[0].marketing_airline;
					//출국공항
					var out_airport=data.results[n].itineraries[0].outbound.flights[0].origin.airport;
					//출국시간
					var out_depart_time=data.results[n].itineraries[0].outbound.flights[0].departs_at;
					
					//최종목적지 공항
					var fairport=data.results[n].itineraries[0].outbound.flights[1].destination.airport;
					//최종목적지 도착시간
					var farrive_time=data.results[n].itineraries[0].outbound.flights[1].arrives_at;
					
					//항공사:
					var gohome_airline=data.results[n].itineraries[0].inbound.flights[0].marketing_airline;
					//출발공항:
					var gohome_airport=data.results[n].itineraries[0].inbound.flights[0].origin.airport;
					//출발시간:
					var home_depart_time=data.results[n].itineraries[0].inbound.flights[0].departs_at;
					//입국공항:
					var home_airport=data.results[n].itineraries[0].inbound.flights[1].destination.airport;
					//입국도착시간:
					var home_arrive_time=data.results[n].itineraries[0].inbound.flights[1].arrives_at;
				

						var f_time = out_depart_time.split("T");
						var s_time = farrive_time.split("T");
						var hf_time = home_depart_time.split("T");
						var hs_time = home_arrive_time.split("T");
						var body = $("<tbody>");
						body.attr({
							"data-num":n
						});
						body.addClass("fbody");
						var f ="<tr><td colspan='1'>항공사명</td><td colspan='1'>"+out_airline+"</td><td colspan='2'><form class='flightform' data-num="+n+"><input type='button' id='f_choose' name='f_choose' class='btn btn-default fchoice' value='선택' />";
						var s ="<input type='hidden' class='airline' id='airline' name='airline' value='"+out_airline+"' /><input type='hidden' id='readtime' name='readtime' value='11' /><input type='hidden' id='out_day' name='out_day' value='"+f_time[0]+"' /><input type='hidden' id='out_time' name='out_time' value='"+f_time[1]+"' /><input type='hidden' id='out_airport' name='out_airport' value='"+out_airport+"' /><input type='hidden' id='in_day' name='in_day' value='"+s_time[0]+"' /><input type='hidden' id='in_time' name='in_time' value='"+s_time[1]+"' /><input type='hidden' id='in_airport' name='in_airport' value='"+fairport+"' /><input type='hidden' id='hout_day' name='hout_day' value='"+hf_time[0]+"' /><input type='hidden' id='hout_time' name='hout_time' value='"+hf_time[1]+"' /><input type='hidden' id='hout_airport' name='hout_airport' value='"+gohome_airport+"' /><input type='hidden' id='hin_day' name='hin_day' value='"+hs_time[0]+"' /><input type='hidden' id='hin_time' name='hin_time' value='"+hs_time[1]+"' /><input type='hidden' id='hin_airport' name='hin_airport' value='"+home_airport+"' /><input type='hidden' id='cnt' name='cnt' value='${cvo.people}' /><input type='hidden' id='sittype' name='sittype' value='${cvo.sitclass}' /><input type='hidden' id='price' name='price' value='"+price[0]+"' />";
						var t ="</form></td> </tr><tr><td class='name'>한국 출발 <input type='hidden' id='f_code' value='1' /></td><td><span class='d_date'>"+f_time[0]+"</span><span class='d_time'><strong>"+f_time[1]+"</strong></span><span class='departure'>"+out_airport+"</span></td> <td><div class='leadTime'>${s_time[0]-f_time[0]}</div></td><td><span class='a_date'>"+s_time[0]+"</span><span class='a_time'><strong>"+s_time[1]+"</strong></span><span class='arrival'>"+fairport+"</span></td></tr><tr><td class='name'>한국 도착 </td> <td><span class='d_date'>"+hf_time[0]+"</span><span class='d_time'><strong>"+hf_time[1]+"</strong></span><span class='departure'>"+gohome_airport+"</span></td><td><div class='leadTime'>${hs_time[0]-hf_time[0]}</div></td><td><span class='a_date'>"+hs_time[0]+"</span><span class='a_time'><strong>"+hs_time[1]+"</strong></span><span class='arrival'>"+home_airport+"</span></td></tr><tr><td>선택 : 성인 ${cvo.people}명/ ${cvo.sitclass}</td><td colspan='2'></td><td>"+price[0]+"원</td></tr></tbody>";

						$("#flight").append(body);
						body.append(f+s+t);
				 } 
			}).fail(function(){
				alert("목록부르기에 실패하였습니다.");
			});
		}
		function hotel(){
		var city="${cvo.arrival_city}";
		var start="${cvo.d_date}";
		var end="${cvo.a_date}";
		var uri="https://api.sandbox.amadeus.com/v1.2/hotels/search-airport?";
		var location="&location="+city;
		var check_in="&check_in="+start;
		var check_out ="&check_out="+end;
		var show_sold_out="&show_sold_out=true"
		var rest="&currency=KRW&number_of_results=4 HTTP/1.1";
		
	var key="apikey=mXBxI1OLDAM84vgb0gWKYdHXp8rGUWAd"+location+check_in+check_out+show_sold_out+rest;
	var apiurl2=uri+key;
	var url="/checkIn/fdata.do";
	
	$("#apiurl").val(apiurl2);

	$.getJSON(url,$("#formapiurl").serialize() , function(data){
		var results=data.results;
		var i=results.length;

		for(var n=0; n<i; n++){
			$(data).each(function(){
		     	var price = results[n].total_price.amount.split(".");
		     	var str ="<tr><td class='h_image'>호텔사진</td> <td colspan='2' align='left'><span class='h_name'>"+results[n].property_name+"</span><span class='h_info'><strong>info</strong></span><span class='departure'>주소 : "+results[n].address.line1+"<br />전화번호 : "+results[n].contacts[0].detail+"</span></td> <td>1박 요금<span class='h_price'><strong>"+price[0]+"원</strong></span><span class='findRoom'><form class='hform'><input type='hidden' id='h_name' name='h_name' value='"+results[n].property_name+"'/><input type='hidden' id='h_info' name='h_info' value='info'/><input type='hidden' id='h_address' name='h_address' value='"+results[n].address.line1+"'/><input type='hidden' id='h_tel' name='h_tel' value='"+results[n].contacts[0].detail+"'/><input type='hidden' id='h_price' name='h_price' value='"+price[0]+"'/><input type='hidden' id='h_image' name='h_image' value='image'/><input type='button' class='btn btn-default hchoice'  value='선택'></form></span></td> </tr>"
		     	
		     	var body = $("<tbody>");
				body.attr({
					"data-num":n
				});
				body.addClass("hbody");
				$("#hotel").append(body);
				body.append(str);
			});
		} 
			
    }).fail(function(){
        alert("목록부르기에 실패하였습니다.");
    });
	
}
	
	
	
	
</script>
<div id="data">
	<form id="nextForm" >
		<input type="hidden" id="flightdata" name="flightdata" />
		<input type="hidden" id="hoteldata" name="hoteldata"   />
	</form>
	<form id="formapiurl">
		<input type="hidden" id="apiurl" name="apiurl">
	</form>
	<div class="row">
		<div class="col-md-6">
			<table class="table table-bordered table-hover" id="flight">
				<colgroup>
					<col width="25%">
					<col width="20%">
					<col width="35%">
					<col width="20%">
				</colgroup>


				<thead>
					<tr>
						<th colspan="4">항공 여정</th>
					</tr>
				</thead>



			</table>
			<table class="table table-bordered table-hover" id="hotel">
				<colgroup>
					<col width="25%">
					<col width="20%">
					<col width="35%">
					<col width="20%">
				</colgroup>
				<thead>
					<tr>
						<th colspan="4">호텔 검색 결과</th>
					</tr>
				</thead>
			</table>
				<input type="button" id="nextBtn" value="next">

		</div>
	</div>
</div>