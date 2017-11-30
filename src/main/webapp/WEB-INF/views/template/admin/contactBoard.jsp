<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<style>
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


<div class="contactBoard">
<div class="row">
        <div class="col-md-6">
       	<h1>Contact List</h1>
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
                <th>상담번호</th>
                <th>상담자 명</th>
                <th>상담일</th>
                <th>답변여부</th>
              </tr>
            </thead>
            <tbody>
            <!-- 예약입력 시 아래 tr태그에 addClass("info") -->
              <c:choose>
              <c:when  test="${not empty contactList }">
              <c:forEach var="list" items="${contactList}">
              	<tr class="table-new">
	                <td >${ list.contactnum}</td>
	                <td class="goDetail">${list.contactname }</td>
	                <td>${list.contactdate }</td>
	                <td>${list.c_status }</td>
              	</tr>
              </c:forEach>
              </c:when >
             <c:otherwise>
              <tr>
                <td>No Data</td>
              </tr>
              </c:otherwise>
              </c:choose>
            </tbody>
            </table>
           <!--  <div class="boardBtn"><input type="button" class="btn btn-default" id="updateStatus" name="updateStatus" value="updateStatus"/></div> -->
        </div>
       </div>
       </div>