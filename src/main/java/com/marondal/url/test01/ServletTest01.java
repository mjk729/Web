package com.marondal.url.test01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletTest01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy");
		String formatDate1 = format1.format(now);
		SimpleDateFormat format2 = new SimpleDateFormat("MM");
		String formatDate2 = format2.format(now);
		SimpleDateFormat format3 = new SimpleDateFormat("dd");
		String formatDate3 = format3.format(now);
		out.println("오늘의 날짜는 " + formatDate1 + "년 " + formatDate2 + "월 " + formatDate3 + "일");
	}
	
}
