<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file = "DBconn.jsp" %>
	<table id="layout">
		<tr id="header" >
			<td><jsp:include page="header.jsp"></jsp:include></td>
		</tr>
		
		<tr id="content">
			<td><jsp:include page="DBTable.jsp"></jsp:include></td>
		</tr>
		
		<tr id="footer" >
			<td><jsp:include page="footer.jsp"></jsp:include></td>
		</tr>
	
	</table>
</body>
</html>