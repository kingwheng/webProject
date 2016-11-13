<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	tn
	<img src="/spring/resources/photos/${dto.tn_sysname }">
	<br> 이름 : ${dto.name}
	<br> 대분류 : ${dto.largecategory}
	<br> 소분류 : ${dto.smallcategory}
	<br> 판매시작일 : ${dto.launchdate}
	<br> 판매종료일 : ${dto.expireddate}
	<br> 가격 : ${dto.price}
	<br> 재고량 : ${dto.stock}
	<br> 배송비 : ${dto.delcharge}
	<br> 원산지 : ${dto.from}
	<br> 구매옵션 : ${dto.options}
	<br> 쓸말:${dto.text }
	<br> d1
	<img src="/spring/resources/photos/${dto.d_1_sysname }">
	<br>
	<c:choose>
		<c:when test="${!empty dto.d_2_sysname}">
d2<img src="/spring/resources/photos/${dto.d_2_sysname }">
			<br>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${!empty dto.d_3_sysname}">
d3<img src="/spring/resources/photos/${dto.d_3_sysname }">
			<br>
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${!empty dto.d_4_sysname}">
d4<img src="/spring/resources/photos/${dto.d_4_sysname }">
			<br>
		</c:when>
	</c:choose>
</body>
</html>