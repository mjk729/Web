package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		SimpleDateFormat format = new SimpleDateFormat("기사입력 시간 : yyyy/MM/dd HH:mm:ss");
		String formatdate = format.format(now);
		
		out.println("<html><head><title>뉴스 기사</title></head><body>");
		out.println("<h1>[단독] 고양이가 야옹해</h1><h5>" + formatdate + "</h5><hr><h5>끝</h5></body></html>");
	}
}
