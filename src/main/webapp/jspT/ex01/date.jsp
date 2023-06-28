<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Date now = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("h시 m분 s초");
%>
<div>
	현재시간 : <%= formatter.format(now) %>
</div>