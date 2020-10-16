<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Table Update</title>
</head>
<body>
	<form name="update" method="post" action="updateAction.jsp">
		<table id="contain">
			<caption><h1>회원이름 수정</h1></caption>
			<tr>
				<th>아이디 확인</th>
				<td><input type="text" name = "id" placeholder="ID"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="password" name="password" placeholder="PASSWORD"></td>
			</tr>
			<tr>
				<th>변경할 이름</th>
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