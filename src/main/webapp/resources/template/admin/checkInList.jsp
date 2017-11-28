<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
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
			.boardBtn{
			text-align: right;
			}
	</style>


<div class="checkInTable">
<div class="row">
        <div class="col-md-6">
       	<h1>Check - In Request List</h1>
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
                <th>예약번호</th>
                <th>예약자 명</th>
                <th>예약일</th>
                <th>예약여부</th>
              </tr>
            </thead>
            <tbody>
            <!-- 예약입력 시 아래 tr태그에 addClass("info") -->
              <tr class="table-new">
                <td >1</td>
                <td>Mark</td>
                <td>2017-11-25</td>
                <td>wait</td>
              </tr>
              <tr class="table-new">
              	<td>2</td>
                <td>Mark</td>
                <td>2017-11-25</td>
                <td>wait</td>
            </tr>
            <tr class="table-new">
              	<td>3</td>
                <td>Mark</td>
                <td>2017-11-23</td>
                <td>wait</td>
            </tr>
            <tr class="table-oper">
              	<td>4</td>
                <td>Mark</td>
                <td>2017-11-22</td>
                <td>operating</td>
            </tr>
            <tr class="table-done">
              	<td>5</td>
                <td>Mark</td>
                <td>2017-11-22</td>
                <td>done</td>
            </tr>
            <tr class="table-cancel">
              	<td>6</td>
                <td>Mark</td>
                <td>2017-11-21</td>
                <td>cancel</td>
            </tr>
            <tr class="table-done">
              	<td>7</td>
                <td>Mark</td>
                <td>2017-11-21</td>
                <td>done</td>
            </tr>
            <tr class="table-done">
              	<td>8</td>
                <td>Mark</td>
                <td>2017-11-21</td>
                <td>done</td>
            </tr>
            </tbody>
            </table>
            <div class="boardBtn"><input type="button" class="btn btn-default" id="updateStatus" name="updateStatus" value="updateStatus"/></div>
        </div>
       </div>
       </div>