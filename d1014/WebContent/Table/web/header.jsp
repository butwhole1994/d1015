<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
	@font-face { font-family: 'NEXON Lv1 Gothic OTF Bold'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF Bold.woff') format('woff'); font-weight: normal; font-style: normal; }
	@font-face { font-family: 'NEXON Lv1 Gothic OTF'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') format('woff'); font-weight: normal; font-style: normal; }
	
	/*============================Index==============================*/
	html, body {
	height:100%;
	margin : 0;
	padding:0;
	font-family: 'NEXON Lv1 Gothic OTF';
	}
	#layout {
	width:100%;
	height:100%;
	border:1px solid black;
	text-align : center;
	}
	#header {
	height : 10%;
	background-color : black;
	}
	#content {
	height : 80%;
	background-color : #aaccc4;
	}
	#footer {
	height : 10%;
	background-color : orange;
	}
	/*=================================Index==============================*/
	
	
	/*=================================HEADER==============================*/
	#menu {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 80%;
	list-style-type: none;
	overflow: hidden;
	border-radius: 15px;       
	}
	#menu li {
	float: left;
	}
	#menu li a{
	color: white;
	display: block;
	padding: 10px 15px;
	font-size: 1.5em;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
	}
	#menu li a:hover{
	color:black;
	background-color : white;
	border-radius:15px;
	}
	/*=================================HEADER==============================*/
	
	
	/*=================================CONTENT==============================*/
	#contain {
	border-collapse : collapse;
	width: 30em;
	margin-left:auto;
	margin-right:auto;
	}
	#contain th,td {
	padding : 10px;
	border-bottom : 2px solid black;
	}
	#contain tr:hover {
	background-color : #00aaff;
	}
	#contain input {
	padding:5px 10px;
	border-radius:15px;
	width : 10em;
	}
	#contain input:hover {
	background-color : #99f9ff;
	}
	#tablehead{
	background-color : #e8d9ff;
	}
	/*=================================CONTENT==============================*/
	
	
	/*=================================FOOTER==============================*/
	/*=================================FOOTER==============================*/
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul id="menu">
	<li><a href="join1.jsp">등록</a></li>
	<li><a href="update1.jsp">수정</a></li>
	<li><a href="delete1.jsp">삭제</a></li>
	<li><a href="DB1.jsp">조회</a></li>
</ul>
</body>
</html>