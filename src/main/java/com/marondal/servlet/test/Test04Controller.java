package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04") // 주소가 잘못되면 404에러 뜸
public class Test04Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8"); // 해당 값이 잘못되면 페이지가 작동 X
		response.setContentType("text/html"); // ★★★브라우저가 처리할 수 없는 데이터의 형태를 벗어나면 해당 데이터(zip,pdf)를 다운로드 시켜버림★★★
		PrintWriter out = response.getWriter();

		out.println("<html><head><title>리스트 출력</title></head><body><ul>");
		for (int i = 1; i < 31; i++) {
			out.println("<li>" + i + " 번째 리스트</li>");
		}
		out.println("</ul></body></html>");
	}
}
