package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.OrderDAO;
import com.model.Order;

@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public OrderController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	int userid=Integer.parseInt(request.getParameter("user_id"));
	int bookid=Integer.parseInt(request.getParameter("book_id"));
	
	
		int qty=Integer.parseInt(request.getParameter("qty"));
		
		Order order=new Order();
		order.setUser_id(userid);

		order.setBook_id(bookid);
		order.setQty(qty);
		OrderDAO dao=new OrderDAO();
		try {
			dao.placed(order);
		

			request.setAttribute("INFO_MESSAGE", "Your order is placed successfully");
			RequestDispatcher rd = request.getRequestDispatcher("order.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			
			request.setAttribute("INFO_MESSAGE", "please enter correct book id.. ");
			RequestDispatcher rd = request.getRequestDispatcher("order.jsp");
			rd.forward(request, response);
		}
		
		
	
	}
	

	
}
