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
			table, th, tr, td{
			border: 1px solid black;
			border-spacing: 0px;}
			span{
			display: block;
			}
			.checkInTable{
			padding-top: 80px;
			z-index: 1;
			}
			.col-md-6{
			min-width: 80%;
			margin: auto 10%;}
			.table-new{
			background-color:#222f3f ;
			color: white;
			}
			.table-danger{
			background-color:#c21616 ;
			color: white;}
			tr, td{
			padding: 10px;
			}
			thead{
			padding: 10px;}
			#f_choose{
			margin-left: 80%;} 
		</style>
		
		
<div class="row">
        <div class="col-md-6">
<table class="table table-bordered table-hover">
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
  <tbody>
  <tr >
  	<td  colspan="1">항공사명</td>
  	
  	<td colspan="3" ><input type="button" class="btn btn-default" id="f_choose" name="f_choose" value="선택"/></td>
  </tr>
    <tr>
      <td class="name">한국 출발 <input type="hidden" id="f_code" value="1"/></td>
      <td><span class="d_date">date</span><span class="d_time"><strong>time</strong></span><span class="departure">departure</span></td>
      <td><div class="leadTime">leadTime</div></td>
      <td><span class="a_date">date</span><span class="a_time"><strong>time</strong></span><span class="arrival">arrival</span></td>
    </tr>
    <tr>
      <td class="name">한국 도착 <input type="hidden" id="f_num" value="1"/></td>
      <td><span class="d_date">date</span><span class="d_time"><strong>time</strong></span><span class="departure">departure</span></td>
      <td><div class="leadTime">leadTime</div></td>
      <td><span class="a_date">date</span><span class="a_time"><strong>time</strong></span><span class="arrival">arrival</span></td>
    </tr>
    <tr >
    		<td>선택 : 성인 1 / 일반석</td>
    		<td colspan="2"></td>
    		<td>가격</td>
    	</tr>
  </tbody>
</table> 

<table class="table table-bordered table-hover">
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
  <tbody>
  <!-- 아래 row를 반복 -->
    <tr>
      <td class="h_image">호텔사진 <input type="hidden" id="h_code" value="1"/></td>
      <td colspan="2" align="left"><span class="h_name">호텔 명</span><span class="h_info"><strong>info</strong></span><span class="departure">기타 정보?</span></td>
      <td>1박 요금<span class="h_price"><strong>Price</strong></span><span class="findRoom"><input type="button" class="btn btn-default" id="selectHotel" name="selectHotel" value="선택"></span></td>
    </tr>
  </tbody>
</table> 
</div>
</div>