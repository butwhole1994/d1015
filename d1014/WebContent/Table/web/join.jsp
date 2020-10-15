<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Table Insert</title>
</head>
<body>
	<form name="tableInsert" method="post" action="joinAction.jsp">
		<table id="contain">
			<caption><h1>회원등록</h1></caption>
			<tr>
				<th>아이디</th>
				<td><input type="text" name = "id" placeholder="ID"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="password" placeholder="PASSWORD"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" placeholder="NAME"></td>
			</tr>
			<tr align="center">
				<td colspan="2">
				<input type="submit" value="DB전송">
				<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>