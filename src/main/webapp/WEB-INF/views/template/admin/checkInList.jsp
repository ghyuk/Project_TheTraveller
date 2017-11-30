<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript">
	$(function() {
		$(".trBtn").click(function(){
			console.log($(this).attr("data-num"));
			location.href="/admin/checkDetail.do?data="+$(this).attr("data-num");
		});

	});
</script>

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
                <th>예약상태</th>
              </tr>
            </thead>
            <tbody>
            <!-- 예약입력 시 아래 tr태그에 addClass("info") -->
             <c:choose>
              <c:when  test="${not empty checkInList }">
              <c:forEach var="list" items="${checkInList}">
              	<tr data-num="${list.u_code }" class="trBtn">
	                <td >${ list.u_code}</td>
	                <td>${list.u_lname } &nbsp; ${list.u_fname }</td>
	                <td>${list.b_date }</td>
	                <td>${list.b_state }</td>
              	</tr>
              </c:forEach>
              </c:when >
             <c:otherwise>
              <tr>
                <td colspan="4" align="center">No Data</td>
              </tr>
              </c:otherwise>
              </c:choose>
            </tbody>
            </table>
            <div class="boardBtn"><input type="button" class="btn btn-default" id="updateStatus" name="updateStatus" value="updateStatus"/></div>
        </div>
       </div>
       </div>