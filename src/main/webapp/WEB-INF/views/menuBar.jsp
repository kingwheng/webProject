<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a, .dropbtn {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
	background-color: green;
}

li.dropdown {
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #f1f1f1
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<ul>
		<li><a href="/spring">Home</a></li>
		<li class="dropdown"><a href="/spring/shop/home" class="dropbtn">쇼핑</a>
			<div class="dropdown-content">
				<a href="/spring/shop/List?largectg=vege">채소</a> 
				<a href="/spring/shop/List?largectg=fruit">과일</a> 
				<a href="/spring/shop/List?largectg=grain">곡류</a> 
					<a href="/spring/shop/List?largectg=meat">육류</a>
					 <a href="/spring/shop/List?largectg=marine">수산물</a>
					 <a href="/spring/shop/List?largectg=processed">가공식품</a>
			</div></li>
	</ul>
</body>
</html>