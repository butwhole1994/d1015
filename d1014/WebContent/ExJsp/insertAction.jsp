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
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));

	
	try{
		String sql = "insert into exam(name,kor,eng,math) values(?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setInt(2, kor);
		pstmt.setInt(3, eng);
		pstmt.setInt(4, math);
		
		pstmt.executeUpdate();
		out.println("성적정보를 DB에 전송성공!<br>");
		out.println("<전송내역><br>");
		out.println("이름  : "+name+"<br>");
		out.println("국어성적 : "+kor+"<br>");
		out.println("영어성적 : "+eng+"<br>");
		out.println("수학성적 : "+math+"<br>");
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