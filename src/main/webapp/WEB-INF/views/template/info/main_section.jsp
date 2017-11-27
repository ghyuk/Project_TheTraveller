<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

		<style type="text/css">
			#main_section {
			  bottom: 0;
			  left: 0;
			  position: absolute;
			  right: 0;
			  top: 0;
			  
			}
			#main_section .main_wrapper {
			  bottom: 40%;
			  font-size: 18px;
			  text-shadow: 1px 1px black;
			  left: 0;
			  margin-left: auto;
			  margin-right: auto;
			  position: absolute;
			  right: 0;
			  text-align: center;
			  width: 50%;
			  
			  color: white;
			}
			#main_section .main_wrapper h2 {
			  text-transform: uppercase;
			  font-size: 88px;
			  font-weight: bold;
			}
		</style>
		
		<script type="text/javascript">
			$(function() {
				$("#main_section").css({
					"background":"#f4f7ca url('/resources/image/${intro}.jpg') center center no-repeat",
					"background-size": "cover"
				});
				
			});
		</script>
	<div id="main_section">
		<div class="main_wrapper">
			<h2>${intro }</h2>
			<p>The Travel Maker</p>
		</div>
	</div>
