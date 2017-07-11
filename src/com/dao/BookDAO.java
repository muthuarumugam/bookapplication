package com.dao;


import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.connection.ConnectionUtil;
import com.model.Book;

public class BookDAO {

	public void addbook(Book book) throws Exception{
	Connection con = ConnectionUtil.getConnection();

	String sql = "insert into book ( id, bookname, price,authorname) values ( ?, ? ,?,?)";

	java.sql.PreparedStatement pst = con.prepareStatement(sql);
	pst.setInt(1, book.getBookId());
	pst.setString(2, book.getName());
	pst.setFloat(3, book.getPrice());
	pst.setString(4, book.getAuthorname());

	int row = pst.executeUpdate();
	System.out.println(row + "registered successfully");
	}
	
	
	
	public List<Book> listbook() throws Exception {
		


		Connection con = ConnectionUtil.getConnection();
		String sql = "select * from book ";
		java.sql.PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		List<Book> booklist=new ArrayList<Book>();
		while(rs.next())
		{
			
			int id=rs.getInt("id");
			String name=rs.getString("bookname");
			int price=rs.getInt("price");
			String authorname=rs.getString("authorname");
			Book b=new Book();
			b.setBookId(id);
			b.setName(name);
			b.setPrice(price);
			b.setAuthorname(authorname);
			booklist.add(b);
			
			
			
			
			
		}
		return booklist;
		
	}
		
	
	
}
