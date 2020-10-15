<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>회원가입 페이지</h1>
	<form name = "form1" method="post" action="joinAction.jsp">
		<p>아이디 : <input type="text" name = "id">
		<p>비밀번호 : <input type="password" name="passwd">
		<p>이름 : <input type="text" name="name">
		<p><input type="submit" value="DB전송"><!-- submit타입 : form 태그의 action으로 넘어감 -->
		<input type="reset" value="초기화"><!-- reset타입 : form안의 입력값들을 깨끗하게 초기화하는 것 -->
	</form>
</body>
</html>