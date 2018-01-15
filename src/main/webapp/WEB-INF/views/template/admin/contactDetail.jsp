<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
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
    <script type="text/javascript">
    	$(function(){
    		$("#contactList").click(function(){
    			location.href="/admin/contactList.do";
    		})
    		
    		$("#reply").click(function(){
    			
    			$("#cForm").submit();
    			
    			
    			
    			
    		})
    	})
    </script>
    
    <div class="contactDetail">
<div class="row">
   <div class="col-md-6">
      <form id="cForm" action="/admin/mailSending.do" method="post">
      
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
                <td><input type="text" id="contactnum" name="contactnum" value="${cvo.contactnum }" readonly/></td>
                <th class="table-title">상담일</th>
                <td><input type="text" id="contactdate" name="contactdate" value="${cvo.contactdate }" readonly/></td>
              </tr>
            </thead>
            <tbody>
            
              <tr>
                <th class="table-title">상담신청자 명</th>
                <td>
                	<input type="text" id="contactname" name="contactname" value="${cvo.contactname }" readonly/>
                </td>
                <th class="table-title">이메일</th>
              	<td><input type="text" id="contactemail" name="contactemail" value="${cvo.contactemail }" readonly/></td>
              </tr>
              <tr>
              	<th class="table-title">내용</th>
              	<td colspan="3"><textarea id="contactcontent" name="contactcontent" class="form-control" rows="5">${cvo.contactcontent }</textarea></td>
              </tr>
               <tr>
              	<th class="table-title">답변</th>
              	<td colspan="3"><textarea id="contactreply" name="contactreply" class="form-control" rows="5">${cvo.contactreply }
              	</textarea></td>
              </tr>
              	<tr>
              	<th class="table-title">답변 현황</th>
              	<td>
              		<div class="radio">
					  <label>
					    <input type="radio" name="c_status" id="c_status" <c:if test='${cvo.c_status == "답변 완료" }'>checked</c:if>> <!-- 답변	완료일경우 checked 옵션 추가 -->
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
        </form>
     </div>
    </div>
  </div>