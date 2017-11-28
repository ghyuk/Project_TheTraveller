<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script type="text/javascript">
    	$(function(){
    		console.log("${sfvo}");
    		console.log("${shvo}");
    		console.log("${spvo}");
    		console.log("${scvo}");
    		
    	});
    	
    
    
    
    
    
    </script>
    <style type="text/css">
			table, th, tr, td{
			border: 1px solid black;
			border-spacing: 0px;}
			
			.checkInTable{
			padding-top: 80px;
			z-index: 1;
			}
			.col-md-6{
			min-width: 80%;
			margin: auto 10%;}
			.table-done{
			background-color:#8F9299 ;
			color: white;
			}
			.table-oper{
			background-color:#222f3f ;
			color: white;
			}
			.table-cancel{
			background-color:#c21616 ;
			color: white;}
	</style>
    
    <div class="checkInTable">
<div class="row">
        <div class="col-md-6">
       	<h1>Check - In Information List</h1>
       	<hr>
          <table class="table table-bordered">
          	<colgroup>
          		<col width="20%">
          		<col width="*">
          		<col width="15%">
          		<col width="15%">
          	</colgroup>
            <thead>
              <tr>
                <th>예약번호</th>		<!-- 그냥 아래에서부터 순서대로 1,2,3,4... --> 
                <th>예약자 명</th>
                <th>예약일</th>
                <th>예약상태</th>
              </tr>
            </thead>
            <tbody>
            <!-- 예약입력 시 아래 tr태그에 addClass("info") -->
            <tr class="table-oper">
              	<td>5</td>
                <td>Mark</td>
                <td>2017-11-22</td>
                <td>operating</td>
            </tr>
            <tr class="table-done">
              	<td>4</td>
                <td>Mark</td>
                <td>2017-11-22</td>
                <td>done</td>
            </tr>
            <tr class="table-cancel">
              	<td>3</td>
                <td>Mark</td>
                <td>2017-11-21</td>
                <td>cancel</td>
            </tr>
            <tr class="table-done">
              	<td>2</td>
                <td>Mark</td>
                <td>2017-11-21</td>
                <td>done</td>
            </tr>
            <tr class="table-done">
              	<td>1</td>
                <td>Mark</td>
                <td>2017-11-21</td>
                <td>done</td>
            </tr>
            </tbody>
            </table>
        </div>
       </div>
       </div>