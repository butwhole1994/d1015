<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "DBconn.jsp" %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	//--------------------삭제된 회원의 이름 얻기---------------------
	String sql = "select name from membertable where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();
	String name ="";
	if(rs.next()) {
		name = rs.getString("name");
	}
	//--------------------삭제된 회원의 이름 얻기---------------------
	try{
		sql = "select id, password from membertable where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			String rid = rs.getString("id");
			String rpassword = rs.getString("password");
			if(id.equals(rid) && password.equals(rpassword)){
				sql = "delete from membertable where id=? and password=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, password);
				pstmt.executeUpdate();
				out.println("회원 데이터를 삭제했습니다.<br>");
				out.println("<삭제정보><br>");
				out.println("ID : "+id+"<br>");
				out.println("이름 : "+name+"<br>");
			} else {
				out.println("일치하지 않는 비밀번호입니다.");
			}
		} else {
			out.println("존재하지 않는 아이디입니다.");
		}
	} catch (SQLException e) {
		out.println("SQLException : "+e.getMessage());	
	} finally {
		if(rs != null)
			rs.close();
		if(conn != null)
			conn.close();
		if(pstmt != null)
			pstmt.close();
	}
%>


</body>
</html>