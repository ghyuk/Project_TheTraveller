<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/include/css/contacts.css">

<script type="text/javascript">
	$(function(){
		$("#sendMsg").click(function(){
			$("#f_contact").attr({
				"method":"get",
				"action":"/client/sendMessage.do"
			});
			$("#f_contact").submit();
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
                  <input class="form-control" type="email" id="contactemail" name="contactname" />
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
                  <button type="submit" class="btn btn-submit-line" id="sendMsg" name="sendMsg">Send Message</button>
                  
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
