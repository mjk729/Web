<%@page import="java.sql.ResultSet"%>
<%@page import="com.marondal.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>

	<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();

	String query = "select * from user_url order by id desc;";
	ResultSet resultSet = mysqlService.select(query);
	%>
	<div class="container">
		<h1 class="text-primary">즐겨찾기</h1>
		<table class="table text-center font-weight-bold">
			<thead>
				<tr>
					<td>사이트</td>
					<td class="text-center">사이트 주소</td>

				</tr>
			</thead>
			<tbody>
				<%
				while (resultSet.next()) {
				%>
				<tr>
					<td><%=resultSet.getString("name")%></td>
					<td><a href="<%=resultSet.getString("url")%>" target="_blank"><%=resultSet.getString("url")%></a></td>
					<td><a href="/db/url/delete?id=<%=resultSet.getString("id")%>"	class="btn btn-info btn-sm">삭제</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>

		<button type="submit" class="btn btn-primary mt-3 text-center ml-5"
			style="width: 93%; font-size: 1.2em;"
			onclick="location.href='/database/test/url_input.jsp'">추가</button>

	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>