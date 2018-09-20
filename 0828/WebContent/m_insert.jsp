<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>custom_01 테이블 삽입</title>
</head>
<body>
	<%
		String id, pwd, name, email, tel;
		id = request.getParameter("id").trim();
		pwd = request.getParameter("pwd");
		name = request.getParameter("name");
		email = request.getParameter("email");
		tel = request.getParameter("tel");

		//DB 연동
		String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
		String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";

		String USERNAME = "scott";
		String PASSWORD = "tiger";
		Class.forName(JDBC_DRIVER);
		Connection conn = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
		Statement stmt = conn.createStatement();
		String sql = "insert into custom_01 (p_id, p_pw, c_name, c_email, c_tel)";
		sql += " values('" + id + "','" + pwd + "','" + name + "','" + email + "','" + tel + "')";
		ResultSet rst = stmt.executeQuery(sql);

		//stmt.executeUpdate(sql);
	%>
	<h3>게시글이 등록 되었습니다.</h3>
	<a href="custom01_list.jsp"> 게시글 리스트 보기</a>
</body>
</html>