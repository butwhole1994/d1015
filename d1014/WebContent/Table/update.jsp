<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	table {
	border-collapse : collapse;
	width:30%;
	margin-left:auto;
	margin-right:auto;
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Table Update</title>
</head>
<body>
	<form name="update" method="post" action="updateAction.jsp">
		<table>
			<caption><h1>회원정보 수정</h1></caption>
			<tr>
				<th>아이디</th>
				<td><input type="text" name = "id"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<th>변경할 이름</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr align="center">
				<td colspan="2">
				<input type="submit" value="DB전송">
				<input type="reset" value="초기화">
				</td>
			</tr>
		</table>
	</form>
	<div id="option">
		<a href="DB.jsp"><button> 회원정보 DB</button></a>
		<a href="join.jsp"><button> 회원등록</button></a>
		<a href="delete.jsp"><button> 회원정보 삭제</button></a>
	</div>
	
</body>
</html>