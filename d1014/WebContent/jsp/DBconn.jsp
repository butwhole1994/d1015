<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>hello world</h1>
<% //Driver에 접속하는 코드
	Connection conn = null;
	try {
		String jdbcDriver="com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
		
		Class.forName(jdbcDriver);
		conn = DriverManager.getConnection(url, "root", "1234");
		out.println("데이터베이스 연결이 성공했습니다.");
	} catch (SQLException e) {
		out.println("데이터베이스 연결이 실패했습니다.<br>");
		out.println("SQLException " + e.getMessage());
	}
%>

</body>
</html>