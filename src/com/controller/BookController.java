package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BookDAO;
import com.model.Book;

@WebServlet("/BookController")
public class BookController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BookController() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String name=request.getParameter("name");
		float price = Float.parseFloat(request.getParameter("price"));

		String authorname=request.getParameter("authorname");
		Book book=new Book();
		BookDAO dao=new BookDAO();
		
		book.setName(name);
		book.setAuthorname(authorname);
		book.setPrice(price);
		try {
			dao.addbook(book);
			
			request.setAttribute("ADD SUCESS", "BOOK ADDED");
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
