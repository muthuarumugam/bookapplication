package com.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.connection.ConnectionUtil;
import com.model.Order;

public class OrderDAO {

	
	
	
	public void placed(Order order) throws Exception{
	Connection con = ConnectionUtil.getConnection();

	String sql = "insert into bookorders ( id, user_id,book_id,qty) values ( ?,? ,?,?)";

	java.sql.PreparedStatement pst = con.prepareStatement(sql);
	pst.setInt(1, order.getId());
	pst.setInt(2, order.getUser_id());
	pst.setInt(3, order.getBook_id());
	pst.setInt(4, order.getQty());

	int row = pst.executeUpdate();
	System.out.println(row + "registered successfully");
	}
	public List<Order> listorder() throws Exception {
		


		Connection con = ConnectionUtil.getConnection();
		String sql = "select * from bookorders ";
		java.sql.PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		List<Order> orderlist=new ArrayList<Order>();
		while(rs.next())
		{
			
			int id=rs.getInt("id");
			int user_id=rs.getInt("user_id");
			int book_id=rs.getInt("book_id");
			String status=rs.getString("status");
			int qty=rs.getInt("qty");

			Order a=new Order();
			a.setId(id);
			a.setUser_id(user_id);
			a.setBook_id(book_id);
			a.setStatus(status);
			a.setQty(qty);
			
			orderlist.add(a);
			
			
			
			
			
		}
		return orderlist;
		
	}
	
	
public List<Order> myorder(int i) throws Exception {
		


		Connection con = ConnectionUtil.getConnection();
		String sql = "select o.id,o.user_id,o.book_id,o.status,o.qty,u.name as username,b.bookname as bookname from bookorders o, user u,book b where o.user_id=u.id and o.book_id=b.id and    o.user_id=?";
		java.sql.PreparedStatement pst = con.prepareStatement(sql);
		pst.setInt(1,i);
		ResultSet rs = pst.executeQuery();
		List<Order> orderlist=new ArrayList<Order>();
		while(rs.next())
		{
			
			int id=rs.getInt("id");
			int user_id=rs.getInt("user_id");
			int book_id=rs.getInt("book_id");
			String status=rs.getString("status");
			int qty=rs.getInt("qty");
			String username=rs.getString("username");
			String bookname=rs.getString("bookname");
			Order a=new Order();
			a.setId(id);
			a.setUser_id(user_id);
			a.setBook_id(book_id);
			a.setStatus(status);
			a.setQty(qty);
			a.setUsername(username);
			a.setBookname(bookname);
			
			orderlist.add(a);
			
			
			
			
			
		}
		return orderlist;
		
	}
	
		


}
