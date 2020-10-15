<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Form</title>
</head>
<body>
<h1>데이터 입력</h1>
	<form name="exam" action="insertAction.jsp" method="post">
		<p>이름 : <input type="text" name="name" maxlength="10">
		<p>국어성적  : <input type="text" name="kor">
		<p>영어성적  : <input type="text" name="eng">
		<p>수학성적  : <input type="text" name="math">
		<p><input type="submit" value="DB전송">
		<input type="reset" value="초기화">
	</form>
</body>
</html>