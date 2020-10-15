<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBconn.jsp" %>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	
	
	try {
		
		//------------------------이전 이름-----------------------
		String sql = "select name from membertable where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		String prev = "";
		
		if(rs.next()) {
			prev = rs.getString("name");//rs.next()이전에  getString()메소드를 사용하려고 하면 에러
			//따라서 while문 밖에서 변수선언을 해주고, 안에 값을 넣어줌.
		}
		//------------------------이전 이름-----------------------
		
		
		
		//------------------------수정할 데이터가 존재하는지 유뮤 확인---------------------
		//수정을 하려면 일단 수정하려는 데이터가 있는지 없는지부터 확인헤야한다.
		sql = "select id, password from membertable where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		//id를 기준으로 데이터 유무를 확인
		
		
		rs = pstmt.executeQuery();
		//------------------------수정할 데이터가 존재하는지 유뮤 확인---------------------
		
		
		
		//----------------------유무 결과에 따른 출력-------------------------------------
		if(rs.next()) {
			String rid = rs.getString("id");//데이터베이스에서 read해온 id
			String rpassword = rs.getString("password");//데이터베이스에서 read해온 password
			if(id.equals(rid) && password.equals(rpassword)) {
				sql = "update membertable set name = ? where id =?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
				
				out.println("member테이블을 수정했습니다.<br>");
				out.println("기존 이름 : "+prev+"<br>");
				out.println("수정된 이름 : "+name+"<br>");
			} else {
				out.println("일치하지 않는 비밀번호입니다.");//id 유무는 위에서 걸렀으므로 비밀번호 불일치문제
			}
		} else {
			out.println("존재하지 않는 아이디입니다.");
		}
	} catch (SQLException e) {
		out.println("SQLException : "+e.getMessage());
		//----------------------유무 결과에 따른 출력-------------------------------------
	} finally {
		if(rs != null)
			rs.close();
		if( conn!= null)
			conn.close();
		if(pstmt != null)
			pstmt.close();
	}
	

%>
</body>
</html>