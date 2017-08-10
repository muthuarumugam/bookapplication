package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.model.User;

@WebServlet("/SigninController")
public class SigninController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SigninController() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		UserDAO userdao = new UserDAO();
		try {
			User u = userdao.selectuser(user);
			if (u != null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", u);
				request.setAttribute("INFO_MESSAGE", "Now your login successfully....");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			} 
			else if(u==null){
				request.setAttribute("INFO_MESSAGE", "invalid login....");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			
				
			}

			
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
}
