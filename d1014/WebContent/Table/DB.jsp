<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<style>
	table {
	border-collapse : collapse;
	width:30%;
	margin-left:auto;
	margin-right:auto;
	}
	th {
	background-color : green;
	}
	th,td {
	padding : 10px;
	border-bottom : 2px solid black;
	}
	tr:hover {
	background-color : #00aaff;
	}
	table input {
	width : 10em;
	}
	#option {
	padding : 10px;
	text-align : center;
	}
	#option a {
	text-decoration : none;
	color : black;
	}
	#option a:hover {
	background-color : #00aaff;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file = "DBconn.jsp" %>

<table>
	<caption>Member Table</caption>
	<tr>
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

	<div id="option">
		<a href="join.jsp"><button> 회원등록</button></a>
		<a href="update.jsp"><button> 회원정보 수정</button></a>
		<a href="delete.jsp"><button> 회원정보 삭제</button></a>
	</div>

</body>
</html>