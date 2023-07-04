<%@page import="java.sql.ResultSet"%>
<%@page import="com.marondal.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
</head>
<body>
	
	<%
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "select * from user_url;";
		ResultSet resultSet = mysqlService.select(query);
		
		
	%>
	
	<h2>즐겨찾기 목록</h2>
	
	<table border="1">
		<thead>
			<tr>
				<td>이름</td>
				<td>url</td>
				
			</tr>
		</thead>
	<tbody>
	<% while(resultSet.next()) {%>
		<tr>
			<td><%= resultSet.getString("name") %></td>
			<td><a href="#"><%= resultSet.getString("url") %></a></td>
			<td><a href="/db/url/delete?id=<%= resultSet.getInt("id")%>" >삭제</a></td>
		</tr>
		<% } %>
	</tbody>
	</table>
	
	<a href="/database/test/url_input.jsp">추가하기</a>
	
</body>
</html>