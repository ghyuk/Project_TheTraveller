<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/include/css/contacts.css">

<script type="text/javascript">
	$(function(){
		$("#sendMsg1").click(function(){
			/* $("#f_contact").attr({
				"method":"get",
				"action":"/client/sendMessage.do"
			});
			$("#f_contact").submit(); */
			$.ajax({
				url:"/client/sendMessage.do",
				type: "post",
				data:$("#f_contact").serialize(),
				error:function(){
					
				},
				success:function(resultData){
					var goUrl = "";
					if(resultData == 0){	//노 입력
						alert("메세지 전송에 실패하였습니다. 잠시 후 다시 시도해주세요.");
					}else{
						alert("메세지가 성공적으로 전송되었습니다.");
					location.href="/";
					}
				}
			})
		})
		
	})
	
</script>

    <div class="section-wrapper">
      <div class="container-fluid">
        <div class="row section-header">
          <div class="col-sm-12 text-center">
            <h2 class="section-headline">
              <span>Contact</span>
            </h2>
          </div>
        </div>
        <div class="row section-content">
          <div class="col-sm-10 col-sm-offset-1">
            <p class="text-center">문의사항</p>
            <form id="f_contact">
              <div class="form-group row">
                <div class="col-sm-6">
                  <label for="name">Your Name:</label>
                  <input class="form-control" type="text" id="contactname" name="contactname"/>
                </div>
                <div class="col-sm-6">
                  <label for="email">Your Email:</label>
                  <input class="form-control" type="email" id="contactemail" name="contactemail" />
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-12">
                  <label for="email">Your Message:</label>
                  <textarea name="contactcontent" id="contactcontent" class="form-control"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-4 text-center-xs">
                  
                </div>
                <div class="col-sm-4 col-sm-offset-4 text-center-xs" align="right">
                  <button type="submit" class="btn btn-submit-line" id="sendMsg1" name="sendMsg">Send Message</button>
                  
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
