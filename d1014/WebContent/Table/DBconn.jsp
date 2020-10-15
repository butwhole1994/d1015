<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DB connection</title>
</head>
<body>
<%	
//utf-8 언어 인코딩
	request.setCharacterEncoding("utf-8");

//드라이버 로딩에 필요한 변수들
	String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	String url = "jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	
//입력, 출력, 수정, 삭제에 쓰일 변수들. 끝나고나서 close해주기 위해 전부 null로 지정해둔다.
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	//본격적인 DB연결
	try{
		Class.forName(jdbcDriver);
		conn = DriverManager.getConnection(url, "root", "1234");
		out.println("데이터베이스에 연결 성공!<br>");
	} catch (SQLException e) {
		out.println("데이터베이스에 연결 실패<br>");
		out.println("SQLException : "+e.getMessage());
	}
%>
</body>
</html>