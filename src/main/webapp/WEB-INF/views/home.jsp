<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<table border="1"
		style="width: 100%; height: 200%; border-collapse: collapse; text-align: center;">
		<tr style="height: 5%;">
			<td colspan="3"><jsp:include page="top.jsp" /></td>
		</tr>
		<tr style="height: 2%; padding: 0px;">
			<td colspan="3"><jsp:include page="menuBar.jsp" /></td>
		</tr>
		<tr>
			<td style="width: 10%"><jsp:include page="left.jsp" /></td>
			<td align="center"><c:choose>
					<c:when test="${!empty main}">
						<jsp:include page="${main}" />
					</c:when>
					<c:otherwise>
						<jsp:include page="mainPage.jsp" />
					</c:otherwise>
				</c:choose></td>
			<td style="width: 10%"><jsp:include page="right.jsp" /></td>
		</tr>
		<tr style="height: 10%">
			<td colspan="3"><jsp:include page="bottom.jsp" />
		</tr>
	</table>
	<c:choose>
		<c:when test="${!empty msg }">
			<script type="text/javascript">
				alert("${msg}");
			</script>
		</c:when>
	</c:choose>
</body>
</html>
