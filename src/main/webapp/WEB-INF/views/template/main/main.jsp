<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>The Traveller</title>
  
  
 <script type="text/javascript" src="/resources/include/js/jquery-1.12.4.min.js" ></script>
 <link rel="stylesheet" href="/resources/include/css/style.css">

  
</head>
<script type="text/javascript">
	$(function(){
		$(".nav-elem").click(function(){
			var str = $(this).find("span").html().toLowerCase();
			location.href="/intro.do?intro="+str;
		});
	});
</script>
<body>
  <div class="main">
  <div class="sidebar-hover">
    <p class="pagination">
      <span class="page">01</span> / <span class="total-pages">08</span>
    </p>
  </div>
  <div class="sidebar-real">
    <div data-page="1" class="nav-elem nav-1 active"><span id="nav-text">main</span></div>
    <div data-page="2" class="nav-elem nav-2"><span id="nav-text" class="introc">Newyork</span></div>
    <div data-page="3" class="nav-elem nav-3"><span id="nav-text" class="introc">Melbourne</span></div>
    <div data-page="4" class="nav-elem nav-4"><span id="nav-text" class="introc">Osaka</span></div>
    <div data-page="5" class="nav-elem nav-5"><span id="nav-text" class="introc">Madrid</span></div>
  </div>
  <div class="sections">
    <div class="section section-1">    
      <div class="left-part"></div>
      <div class="content">
      	
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <h2 class="section-heading">Traveller</h2>
        <p class="additional-text"></p>
      </div>
    </div>
    <div class="section section-2">
      <div class="left-part"></div>
      <div class="content">
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <h2 class="section-heading"><span id="newyork" ><a href="/intro.do?intro=newyork">뉴욕</a></span></h2>
        <p class="additional-text"></p>
      </div>
    </div>
    <div class="section section-3">
      <div class="left-part"></div>
      <div class="content">
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <h2 class="section-heading"><span id="melbourne"><a href="/intro.do?intro=melbourne">멜버른</a></span></h2>
        <p class="additional-text"></p>
      </div>
    </div>
    <div class="section section-4">
      <div class="left-part"></div>
      <div class="content">
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <h2 class="section-heading"><span id="osaka"><a href="/intro.do?intro=osaka">오사카</a></span></h2>
        <p class="additional-text"></p>
      </div>
    </div>
    <div class="section section-5">
      <div class="left-part"></div>
      <div class="content">
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <div class="bg-part"></div>
        <h2 class="section-heading"><span id="madrid"><a href="/intro.do?intro=madrid">마드리드</a></span></h2>
        <p class="additional-text"></p>
      </div>
  <h2 class="scroll-down"></h2>
</div>
</div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script  src="/resources/include/js/main.js"></script>

</body>
</html>
