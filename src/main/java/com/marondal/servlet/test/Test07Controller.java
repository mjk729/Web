package com.marondal.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));

		out.println("<html><head><title>주문</title></head><body>");
		if (!address.contains("서울시")) { // if문에서 boolean 타입을 조건으로 걸때, ==로 true or false를 비교하는 건 않좋은 문법임
			out.println("<h2>배달 불가 지역입니다!</h2></body></html>");
		} else if (card.contains("신한카드") && address.contains("서울시")) {
			out.println("<h2>결제 불가 카드입니다!</h2></body></html>");
		} else
			out.println("<h2>" + address + "로 배달 준비중" + "</h2><hr><div>결제금액 : " + price + "원</div></body></html>");
	}
}
