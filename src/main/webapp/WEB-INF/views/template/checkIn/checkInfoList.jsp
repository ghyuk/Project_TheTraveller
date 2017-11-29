<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	$(function() {
		$(".trBtn").click(function(){
			console.log($(this).attr("data-num"));
			location.href="/checkIn/checkDetail.do?data="+$(this).attr("data-num");
		});

	});
</script>
<style type="text/css">
table, th, tr, td {
	border: 1px solid black;
	border-spacing: 0px;
}

.checkInTable {
	padding-top: 80px;
	z-index: 1;
}

.col-md-6 {
	min-width: 80%;
	margin: auto 10%;
}

.table-done {
	background-color: #8F9299;
	color: white;
}

.table-oper {
	background-color: #222f3f;
	color: white;
}

.table-cancel {
	background-color: #c21616;
	color: white;
}
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
						<th>예약번호</th>
						<!-- 그냥 아래에서부터 순서대로 1,2,3,4... -->
						<th>여권번호</th>
						<th>예약일</th>
						<th>예약상태</th>
					</tr>
				</thead>
				<tbody>
				
					<c:choose>
						<c:when test="${not empty list }" >		
							<c:forEach var="list" items="${list }" varStatus="status">
								<tr data-num="${list.u_code }" class="trBtn">
									<td>${list.b_code }</td>
									<td>${passport }</td>
									<td>${list.b_date }</td>
									<td>${list.b_state }</td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="4">등록된 게시물이 존재하지 않습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
					<!-- 예약입력 시 아래 tr태그에 addClass("info") -->
					<!-- <tr class="table-oper">
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
					</tr> -->
				</tbody>
			</table>
		</div>
	</div>
</div>