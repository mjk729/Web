package com.marondal.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.common.MysqlService;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// mysql 접속
		MysqlService mysqlService = MysqlService.getInstance();  // 싱글턴 방식
		
		// 접속
		mysqlService.connect();
		
		
//		String insertQuery = "INSERT INTO `real_estate`\r\n"
//				+ "(`realtorld`, `address`, `area`, `type`, `price`)\r\n"
//				+ "VALUE\r\n"
//				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000);";
//		int count =  mysqlService.update(insertQuery);
//		
//		out.println("insert 된 행의 개수 : " + count);
		
		String selectQuery = "SELECT * FROM `real_estate` ORDER BY id DESC LIMIT 10;";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		
		try {
			while(resultSet.next()) {
				String address = resultSet.getString("address");
				int area = resultSet.getInt("area");
				String type = resultSet.getString("type");
				
				out.println("메물 주소 : " + address + ", 면적 : " + area + ", 타입 : " + type);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		mysqlService.disconnect();
		
		
				
	}

}