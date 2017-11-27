<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <style type="text/css">
			table, th, tr, td{
			border: 1px solid black;
			border-spacing: 0px;}
			
			.detailTable{
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
			#checkInInfoList, #cancel{
			float: right;
			margin-left: 10px;
			width: 80px;
			text-align: center;
			display: inline;
			
			}
			.detailTable .table-title{
			background-color: #f0f0f0;
			
			font-size: 18px;}
			#b_status{
			width: 100%;
			font-size: 15px;
			}
			#u_lname, #u_fname{
			width: 49%;}
	</style>
	
	<div class="detailTable">
<div class="row">
        <div class="col-md-6">
       	<h1>Check - In Information Detail</h1>
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
                <th class="table-title">예약번호</th>
                <td><input type="text" id="b_code" name="b_code" value="예약번호" readonly/></td>
                <th class="table-title">예약일</th>
                	<td><input type="text" id="b_date" name="b_date" value="예약일" readonly/></td>
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
              <tr>
              	<th class="table-title">도시 명</th>
              	<td><input type="text" id="c_code" name="c_code" value="도시명" readonly/></td>
              	<th class="table-title">좌석 등급</th>
              	<td><input type="text" id="class" name="class" value="일반석" readonly/></td>
              </tr>
              <tr>
              	<th class="table-title">출국일</th>
              	<td><input type="text" id="d_date" name="d_date" value="2017-11-25" readonly/></td>
              	<th class="table-title">귀국일</th>
              	<td><input type="text" id="a_date" name="a_date" value="2017-12-25" readonly/></td>
              </tr>
              <tr>
              	<th class="table-title">출국 편명</th>
              	<td><input type="text" id="f_code" name="f_code" value="출국편명" readonly/></td>
              	<th class="table-title">출국편 발권 번호</th>
              	<td><input type="text" id="b_num" name="b_num" value="if걸어서 null일 경우 b_status" readonly /></td>
              </tr>
              <tr>
              	<th class="table-title">귀국 편명</th>
              	<td><input type="text" id="f_code" name="f_code" value="귀국편명" readonly/></td>
              	<th class="table-title">귀국편 발권 번호</th>
              	<td><input type="text" id="b_num" name="b_num" value="if걸어서 null일 경우 b_status" readonly /></td>
              </tr>
              <tr>
              	<th class="table-title">호텔 명</th>
              	<td><input type="text" id="h_name" name="h_name" value="호텔명" readonly/></td>
              	<th class="table-title">호텔 발권 번호</th>
              	<td><input type="text" id="b_num" name="b_num" value="if걸어서 null일 경우 b_status" readonly /></td>
              </tr>
              	<tr>
              	<th class="table-title">예약 현황</th>
              	<td><label id="b_status" name="b_status">operating</label></td>
              	<th class="table-title">가격</th>
              	<td><input type="text" id="total" name="total" value="$price" readonly/></td>
              </tr>
             </tbody>
             </table>
              	<input type="button" id="checkInInfoList" name="checkInInfoList" class="btn btn-default" value="List"/>
              	<input type="button" id="cancel" name="cancel" class="btn btn-default" value="cancel"/>				<!-- 스크립트 if걸어서 operating이나 done일 경우 비활성화 -->
             </div>
             </div>
             </div>