package com.marondal.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/url/delete")
public class Test02DeleteController extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		// 특정 사이트 삭제
		// id를 전달 받고, 일치하는 행을 삭제
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "delete from user_url where id = " + id + ";";
		
		mysqlService.update(query);
		
		response.sendRedirect("/database/test/test02.jsp");
		
		
		
	}
}
