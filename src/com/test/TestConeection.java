package com.test;

import java.sql.Connection;

import com.connection.ConnectionUtil;

public class TestConeection {

	public static void main(String[] args) throws Exception {
		Connection con = ConnectionUtil.getConnection();
		System.out.println(con+"database connected successfully...");

	}

}
