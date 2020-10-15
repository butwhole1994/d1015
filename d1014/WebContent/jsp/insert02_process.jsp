<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- DB연결하는 jsp파일을 불러온다. -->
<%@ include file = "DBconn.jsp" %>

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	PreparedStatement pstmt = null ;
	
	try {
		String sql = "insert into memberTable values(?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, passwd);
		pstmt.setString(3, name);
		
		pstmt.executeUpdate();
		out.println("member 테이블에 삽입 성공");
	} catch (SQLException e) {
		out.println("member 테이블에 삽입 실패<br>");
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