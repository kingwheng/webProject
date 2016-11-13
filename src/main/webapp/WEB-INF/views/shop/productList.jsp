<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
     .navbar { 
      margin-bottom: 50px; 
     border-radius: 0; 
    } 
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>

<!-- <div class="jumbotron"> -->
<!--   <div class="container text-center"> -->
<!--     <h1>Online Store</h1>       -->
<!--     <p>Mission, Vision & Values</p> -->
<!--   </div> -->
<!-- </div> -->

<div class="container">
		<c:choose>
			<c:when test="${!empty listc}">
				<c:forEach var="each" items="${listc}">
					<div class="col-sm-4">
						<div class="panel panel-primary">
							<div class="panel-body"><a href="/spring/shop/selectOne?pronum=${each.pronum}">
								<img src="/spring/resources/photos/${each.tn_sysname }"
									class="img-responsive" style="width: 100%"
									alt="${each.tn_sysname}"></a>
							</div>
							<div class="panel-footer">${each.name}</div>
						</div>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
상품이 존재하지 않습니다.
</c:otherwise>
		</c:choose>
	</div>

</body>
</html>
