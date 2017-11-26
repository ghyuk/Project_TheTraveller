<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <style>
    table, th, tr, td{
			border: 1px solid black;
			border-spacing: 0px;}
			
			.contactDetail{
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
			.boardBtn{
			text-align: right;
			}
			#reply, #contactList{
			width: 49%;
			display: inline;
			}
			.detailTable .table-title{
			background-color: #f0f0f0;
			font-size: 18px;}
    </style>
    
    <div class="contactDetail">
<div class="row">
        <div class="col-md-6">
       	<h1>Contact Detail</h1>
       	<hr>
          <table class="table table-bordered">
          	<colgroup>
          		<col width="20%">
          		<col width="30%">
          		<col width="20%">
          		<col width="30%">
          	</colgroup>
            <thead>
              <tr>
                <th class="table-title">상담번호</th>
                <td><input type="text" id="b_code" name="b_code" value="예약번호" readonly/></td>
                <th class="table-title">상담일</th>
                	<td><input type="text" id="b_date" name="b_date" value="예약일" readonly/></td>
              </tr>
            </thead>
            <tbody>
            
              <tr>
                <th class="table-title">상담신청자 명</th>
                <td>
                		<input type="text" id="u_fname" name="u_fname" value="이름" readonly/>
                	</td>
                	<th class="table-title">이메일</th>
              	<td><input type="text" id="u_email" name="u_email"	 value="aaa@aaa.com" readonly/></td>
              </tr>
              <tr>
              	<th class="table-title">내용</th>
              	<td colspan="3"><textarea class="form-control" rows="5"></textarea></td>
              </tr>
               <tr>
              	<th class="table-title">답변</th>
              	<td colspan="3"><textarea class="form-control" rows="5"></textarea></td>
              </tr>
              	<tr>
              	<th class="table-title">답변 현황</th>
              	<td>
              		<div class="radio">
					  <label>
					    <input type="radio" name="c_status" id="c_status" value="replied" >	<!-- 답변	완료일경우 checked 옵션 추가 -->
					   		답변 완료
					  </label>
					</div>
              	</td>
              	<td colspan="2">
              		<input type="button" id="reply" name="reply" class="btn btn-default" value="Reply"/>
              		<input type="button" id="contactList" name="contactList" class="btn btn-default" value="List"/>
              	</td>
              </tr>
             </tbody>
             </table>
             </div>
             </div>
             </div>