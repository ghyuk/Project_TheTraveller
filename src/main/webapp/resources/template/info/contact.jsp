<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/resources/include/css/contacts.css">
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
            <p class="text-center">If you have anything to ask, Shoot!</p>
            <form>
              <div class="form-group row">
                <div class="col-sm-6">
                  <label for="name">Your Name:</label>
                  <input class="form-control" type="text" id="name" />
                </div>
                <div class="col-sm-6">
                  <label for="email">Your Email:</label>
                  <input class="form-control" type="email" id="email" />
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-12">
                  <label for="email">Your Message:</label>
                  <textarea name="message" id="message" class="form-control"></textarea>
                </div>
              </div>
              <div class="form-group row">
                <div class="col-sm-4 text-center-xs">
                  
                </div>
                <div class="col-sm-4 col-sm-offset-4 text-center-xs" align="right">
                  <button type="submit" class="btn btn-submit-line">Send Message</button>
                  
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
