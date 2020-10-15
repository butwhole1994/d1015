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
	request.setCharacterEncoding("UTF-8");//언어 인코딩을 해줘야 한다.
	
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	//String 매개변수 는 from 태그안에 있는input태그의 name속성의 값을 넣어준다.
	
	Statement stmt = null;
	try {
		String sql = "insert into memberTable values('"+id+"','"+passwd+"','"+name+"')";
		
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		out.println("member 테이블에 삽입이 성공했습니다.");
	} catch (SQLException e) {
		out.println("member 테이블에 삽입이 실패했습니다.");
		out.println("SQLException :" +e.getMessage());
	} finally {
		if(stmt != null)
			stmt.close();
		if(conn != null)
			conn.close();
	}
%>
</body>
</html>