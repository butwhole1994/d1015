<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Action</title>
</head>
<body>
<%@ include file="DBconn.jsp"%>
<%
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String id = request.getParameter("id");

	try{
		String sql = "insert into membertable values(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		
		pstmt.executeUpdate();
		out.println("<br>성적정보를 DB에 전송성공!<br>");
	} catch (SQLException e) {
		out.println("전송실패");
		out.println("SQLException : "+e.getMessage());
	} finally {
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
	}
%>
</body>
</html>