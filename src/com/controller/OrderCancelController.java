package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.OrderDAO;
import com.model.Order;
import com.model.User;

@WebServlet("/OrderCancelController")
public class OrderCancelController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OrderCancelController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int orderid = Integer.parseInt(request.getParameter("orderid"));

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		int userid = user.getId();
		Order order = new Order();
		order.setUser_id(userid);
		order.setId(orderid);
		OrderDAO dao = new OrderDAO();
		try {
			int row = dao.ordercancel(order);
			System.out.println(row);
			if (row == 0) {

				request.setAttribute("INFO_MESSAGE", "Please enter correct order id..");
				RequestDispatcher rd = request.getRequestDispatcher("myorder.jsp");
				rd.forward(request, response);
			} else {

				request.setAttribute("INFO_MESSAGE", "YOUR ORDER IS CANCELLED...");
				RequestDispatcher rd = request.getRequestDispatcher("myorder.jsp");
				rd.forward(request, response);

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
