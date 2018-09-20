<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="./css/style2.css" rel = "stylesheet" type = "text/css">

</head>
<body>
	<h1>회원 등록</h1>
	<form method = "get" action = "m_insert.jsp">
		<table border = "2">
			<tr>
				<th>아이디</th>
				<td><input type = "text" name = "p_id" size = " 20"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type = "password" name = "pwd" size = " 20"></td>
			</tr>
			<tr>
				<th>성명</th>
				<td><input type = "text" name = "c_name" size = "20"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type = "email" name = "c_email" size = "40"></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input type = "text" name = "c_tel" size = "20"></td>
			</tr>
			<tr>
				<td colspan="2" align = "left">
					<input type = "submit" value = "등록"> <input type = "button" value = "조회" onclick = "location.href='./custom01_list.jsp'"> 
				</td>
			</tr>
		</table>
	</form>
</body>
</html>