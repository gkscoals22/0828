<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="./css/style.css" rel = "stylesheet" type = "text/css">
</head>
<body>
<h2>회원 목록 조회</h2>
	<%
		/* String id, pwd, name, email, tel;
		id = request.getParameter("id").trim();
		pwd = request.getParameter("pwd").trim();
		name = request.getParameter("name");
		email = request.getParameter("email");
		tel = request.getParameter("tel"); */

		//DB 연동
		String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
		String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";

		String USERNAME = "scott";
		String PASSWORD = "tiger";
		Class.forName(JDBC_DRIVER);
		Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
		Statement stmt = conn.createStatement();
		String sql = "SELECT * FROM CUSTOM_01 order by p_id asc";
		ResultSet rst = stmt.executeQuery(sql);

	%>
	<form>
		<table border="2">

			<tr>
				<th>회원ID</th>
				<th>회원이름</th>
				<th>이메일</th>
				<th>연락처</th>
			</tr>
			<%
			try{
      	while (rst.next()) {
      		String id = rst.getString("p_id");
  			// String pwd = rst.getString("pwd");
  			String name = rst.getString("c_name");
  			String email = rst.getString("c_email");
  			String tel = rst.getString("c_tel");
  			%>
  			<tr>
				<td><%=id %></td>
				<td><%=name%></td>
				<td><%=email%></td>
				<td><%=tel%></td>
			</tr> 
			<% 	}
			}catch(Exception ex){
				ex.printStackTrace();
			}finally{
				if(rst != null){
					rst.close();
				}
				if(stmt != null){
					stmt.close();
				}
				if(conn != null){
					conn.close();
				}
			}
      	%>
  		</table>
  		</form>	
  		<hr>
     <footer>
     	HRDKOREA Copyright 2018 All rights reserved. Human Resources Development Service of Korea
     </footer>
</body>
</html>