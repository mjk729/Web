package com.marondal.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02")
public class Ex02Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		// 1 부터 10까지의 합을 보여주는 페이지
		int sum = 0;
		for (int i = 1; i < 11; i++) {
			sum = sum + i;
		}
		out.println("<html><head><title>합계</title></head><body>");
		out.println("<h2>" + sum + "</h2> </body> </html>");

	}

}
