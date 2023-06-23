package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String input_id = request.getParameter("input_id");
		String input_pw = request.getParameter("input_pw");
		
		out.println("<html><head><title>로그인 결과</title></head><body>");
		if(!input_id.equals(userMap.get("id"))) {
			out.println("<h2>id가 일치하지 않습니다!</h2></body></html>");
		}
		else if(!input_pw.equals(userMap.get("password"))) {			
			out.println("<h2>password가 일치하지 않습니다!</h2></body></html>");
		}else {
			out.println("<h2>" + userMap.get("name") + "님 환영합니다!" + "</h2></body></html>");
		}
		
	}
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "minjung");
	        put("password", "0729");
	        put("name", "김민중");
	    }
	};
	
}
