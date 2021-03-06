<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style type="text/css">
	/* The Modal (background) */
	.modal {
	    display: none; /* Hidden by default */
	    position: fixed; /* Stay in place */
	    z-index: 1; /* Sit on top */
	    padding-top: 100px; /* Location of the box */
	    left: 0;
	    top: 0;
	    width: 100%; /* Full width */
	    height: 100%; /* Full height */
	    overflow: auto; /* Enable scroll if needed */
	    background-color: rgb(0,0,0); /* Fallback color */
	    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	
	/* Modal Content */
	.modal-content {
	    position: relative;
	    background-color: #fefefe;
	    margin: auto;
	    padding: 0;
	    border: 1px solid #888;
	    width: 50%;
	    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
	    -webkit-animation-name: animatetop;
	    -webkit-animation-duration: 0.4s;
	    animation-name: animatetop;
	    animation-duration: 0.4s
	}
	
	/* Add Animation */
	@-webkit-keyframes animatetop {
	    from {top:-300px; opacity:0}
	    to {top:0; opacity:1}
	}
	
	@keyframes animatetop {
	    from {top:-300px; opacity:0}
	    to {top:0; opacity:1}
	}
	
	/* The Close Button */
	.close {
	    color: white;
	    float: right;
	    font-size: 28px;
	    font-weight: bold;
	}
	
	.close:hover,
	.close:focus {
	    color: #000;
	    text-decoration: none;
	    cursor: pointer;
	}
	
	.modal-header {
	    padding: 2px 16px;
	    background-color: #5cb85c;
	    color: white;
	}
	
	.modal-body {padding: 0px 10px; overflow: auto;}
	
	.modal-footer {
	    padding: 2px 16px;
	    background-color: #5cb85c;
	    color: white;
	    overflow: auto;
	}
	input[type=text] {
	width: 70%;
	margin-right: 20px;
    padding: 9px 15px;
    background-color: white;
    font-size: large;
    box-sizing: border-box;
    float: right;
}

	.btn-modal-in{
		width: 100px;
		height: 30px;
		background-color: white;
   	 	color: black;
    	border:none;
	}
	
	button{
		cursor: pointer;
	}
	
	.btn-modal-in:hover {background-color: #e7e7e7;}
	
	.btn-modal-in:ACTIVE {
		border: 2px solid gray;
		
	}
	a:hover{
		
		text-decoration: underline;
	}
	a{
		color: black;
		cursor: pointer;
		text-decoration: none;
	}
		
	
</style>
</head>
<body>

	
	<a id="myBtn">로그인</a>
	
	<a href="MemInsertForm">회원가입</a>
	
	<!-- Trigger/Open The Modal -->
		 
		 
		<!-- The Modal -->
		<div id="myModal" class="modal">
		  <!-- Modal content -->
		  <div class="modal-content">
		    <div class="modal-header">
		      <span class="close">×</span>
		      <h2>로그인</h2>
		    </div>
		<form name="form" action="login" method="post">
		    <div class="modal-body">
		      <p style="overflow: auto;"><font size="4">아이디 : </font><input type="text" name="id" id="id"/></p>
		      <p style="overflow: auto;"><font size="4">비밀번호 : </font><input type="text" name="pw" id="pw"/></p>
		      <p style="overflow: auto;">
		     	 <input style="width: 15px; height: 15px;" type="checkbox" id="remember" name="remember" value="아이디 기억하기"/>
		     	 <label for="remember">아이디 기억하기</label>
		      </p>
		    </div>
		    <div class="modal-footer">
		    	<p>
		    		<button type="submit" class="btn-modal-in" style="float: right;">로그인</button>
		    		<button type="button" id="join" class="btn-modal-in">회원가입</button>
		    		<button type="button" id="idsearch" class="btn-modal-in">아이디 찾기</button>
		    		<button type="button" id="pwsearch" class="btn-modal-in" >비밀번호 찾기</button>
		    	</p>
		    </div>
		  </form>
		  </div>
		
		</div>

</body>

	<script>
	
	// Get the modal
	var modal = document.getElementById('myModal');
	
	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	
	// When the user clicks the button, open the modal
	btn.onclick = function() {
	    modal.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	    modal.style.display = "none";
	}
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
	
	$("form").submit(
		function(){
			if($("#id").val()==""){
				$("#id").focus();
				return false;
			}else if($("#pw").val()==""){
				$("#pw").focus();
				return false;
			}
		}		
	);
	
	
	
</script>
</html>
