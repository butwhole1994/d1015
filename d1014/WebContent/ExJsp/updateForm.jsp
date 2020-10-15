<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Form</title>
</head>
<body>
<h1>데이터 수정</h1>
<form name="updateForm" method="post" action="updateAction.jsp">
	<p>아이디 : <input type="text" name="id" value="">
	<p>비밀번호 : <input type="password" name="password" value="">
	<p>이름 : <input type="text" name="name" value="">
	<p><input type="submit" value="DB전송">
	<input type="reset" value="초기화">
</form>
</body>
</html>