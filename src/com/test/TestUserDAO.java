package com.test;

import com.dao.OrderDAO;
import com.dao.UserDAO;
import com.model.Order;
import com.model.User;

public class TestUserDAO {

	public static void main(String[] args) throws Exception {

//		User user = new User();
//		user.setName("rahul");
//		user.setEmail("rahul123.gmail.com");
//		user.setPassword("rahul123");
//		UserDAO dao=new UserDAO();
//		dao.register(user);

//////		
		Order order=new Order();
		order.setUser_id(1001);
		order.setId(4);
		OrderDAO dao2=new OrderDAO();
		dao2.ordercancel(order);
		//UserDAO userdao = new UserDAO();
////		BookDAO dao=new BookDAO();
////		List<Book> booklist=dao.listbook();
////		for (Book book : booklist) {
////			System.out.println(book.getName());
////			
////		}
//		
//		Order order=new Order();
//		OrderDAO dao=new OrderDAO();
//		order.setUser_id(1001);
//		order.setBook_id(1001);
//		order.setQty(1);
//		dao.placed(order);
//		
////		userdao.register(user);
//
	}

}
