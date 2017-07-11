package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;

import com.connection.ConnectionUtil;
import com.model.User;

public class UserDAO {

	public void register(User user) throws Exception {

		Connection con = ConnectionUtil.getConnection();

		String sql = "insert into user ( name, email, password) values ( ?, ? ,? )";

		java.sql.PreparedStatement pst = con.prepareStatement(sql);

		pst.setString(1, user.getName());
		pst.setString(2, user.getEmail());
		pst.setString(3, user.getPassword());

		int row = pst.executeUpdate();
		System.out.println(row + "registered successfully");
	}

	public User selectuser(User user) throws Exception {

		Connection con = ConnectionUtil.getConnection();
		String sql = "select id,name from user where email=? and password=?";
		java.sql.PreparedStatement pst = con.prepareStatement(sql);
		pst.setString(1, user.getEmail());
		pst.setString(2, user.getPassword());
		ResultSet rs = pst.executeQuery();
		User u = null;
		if (rs.next()) {
			int id  = rs.getInt("id");
			String name = rs.getString("name");
			u = new User();
			u.setName(name);
			u.setId(id);

		}
		return u;

	}

}
