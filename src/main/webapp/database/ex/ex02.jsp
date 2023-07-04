<%@page import="java.sql.ResultSet"%>
<%@page import="com.marondal.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 목록</title>
</head>
<body>
	
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "select * from new_user;";
		ResultSet resultSet = mysqlService.select(query);
		
		
	%>
	
	<h2>사용자 목록</h2>
	
	<table border="1">
		<thead>
			<tr>
				<td>이름</td>
				<td>생년월일</td>
				<td>이메일</td>
			</tr>
		</thead>
	<tbody>
	<% while(resultSet.next()) {%>
		<tr>
			<td><%= resultSet.getString("name") %></td>
			<td><%= resultSet.getString("yyyymmdd") %></td>
			<td><%= resultSet.getString("email") %></td>
			<td><a href="/db/user/delete?id=<%= resultSet.getInt("id") %>">삭제</a></td>
		</tr>
		<% } %>
	</tbody>
	</table>
	
	<a href="/database/ex/user_input.jsp">추가하기</a>
	
</body>
</html>