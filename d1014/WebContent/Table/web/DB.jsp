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

<table id="contain">
	<caption><h1>Member Table</h1></caption>
	<tr id="tablehead">
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
	</tr>
<%
	try {
		String sql = "select * from membertable";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String id = rs.getString("id");
			String password = rs.getString("password");
			String name = rs.getString("name");
			%>
			<tr>
				<td><%=id %></td>
				<td><%=password %></td>
				<td><%=name %></td>
			</tr>
			<%
		}
	} catch (SQLException e) {
		out.println("<br>SQLException : "+e.getMessage());
	} finally{
		if(rs != null)
			rs.close();
		if(pstmt != null)
			pstmt.close();
		if(conn != null)
			conn.close();
	}
%>
</table>

</body>
</html>