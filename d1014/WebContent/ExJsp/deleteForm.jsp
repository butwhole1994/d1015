<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>데이터 삭제</h1>
<form name="deleteForm" method="post" action="deleteAction.jsp">
	<p>아이디 : <input type="text" name="id">
	<p>비밀번호 : <input type="password" name="password">
	<p><input type="submit" value="DB삭제">
	<input type="reset" value="초기화">
</form>
</body>
</html>