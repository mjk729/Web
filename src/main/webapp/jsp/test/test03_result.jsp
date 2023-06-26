

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜, 시간 출력</title>
</head>
<body>
	<%
		// 날짜 정보를 보여줄때는 date, 시간은 time
		String what = request.getParameter("what");
		Date now = new Date();
		SimpleDateFormat dateFormatter = new SimpleDateFormat("오늘 날짜 yyyy년 M월 d일");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("현재시간 HH시 mm분 ss초");
		
		String dateString = dateFormatter.format(now);
		String timeString = timeFormatter.format(now);
		
		String resultString = null;
		// 현재날짜를 보여주고 싶을 때
		if(what.equals("date")){
			resultString = dateString;
		}else{	// 현재날짜를 보여주고 싶을 때
			resultString = timeString;
		}
		
	%>
	
	<div class="container">
		<div class="display-4"><%=resultString %></div>
		
	
	</div>
	
	
</body>
</html>