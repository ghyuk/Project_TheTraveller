<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/include/css/contacts.css">

<script type="text/javascript">
	$(function(){
		$("#sendMsg").click(function(){
			
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
            <p class="text-center">문의사항이 있으시면 언제든 연락주세요</p>
            <form>
              <div class="form-group row">
                <div class="col-sm-6">
                  <label for="name">Your Name:</label>
                  <input class="form-control" type="text" id="contactname" />
                </div>
                <div class="col-sm-6">
                  <label for="email">Your Email:</label>
                  <input class="form-control" type="email" id="contactemail" />
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
                  <button type="button" class="btn btn-submit-line" id="sendMsg" name="sendMsg">Send Message</button>
                  
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
