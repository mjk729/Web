package com.marondal.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8"); // 해당 값이 잘못되면 페이지가 작동 X
		response.setContentType("text/html"); // ★★★브라우저가 처리할 수 없는 데이터의 형태를 벗어나면 해당 데이터(zip,pdf)를 다운로드 시켜버림★★★
		PrintWriter out = response.getWriter();

		
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		String yearString = birthday.substring(0,4);
		int year = Integer.parseInt(yearString);
		
		int age = 2023 - year + 1;
		
		// out.println(
		
		
		// response에 데이터 담기
		//규격 json
		// name : 김인규, age : 24
		// json : dictionary
		// {"name" : "김인규", "age" : 24}
		// json : Array
		// ["김인규", "유재석"]
		//
		// [
		//		{"name":"김인규", "age" : 24},
		//		{"name":"유재석", "age" : 32}
		// ])
		out.println("{\"name\":\"" + name + "\", \"age\":" + age + "}");
	}
}
