package com.marondal.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/url/insert")
public class Test02InsertController extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		
		mysqlService.connect();
		
		String query = "insert into user_url\r\n"
				+ "(name, url)\r\n"
				+ "value\r\n"
				+ "('" + name + "','" + url + "');";
		
		mysqlService.update(query);
		
		response.sendRedirect("/database/test/test02.jsp");

		
	}
}
