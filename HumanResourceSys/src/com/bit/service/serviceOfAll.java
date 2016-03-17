package com.bit.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

//import javax.el.StaticFieldELResolver;

import org.omg.CORBA.PUBLIC_MEMBER;

import com.bit.common.userInfoTable;

public class serviceOfAll {
	
	private Connection conn;
	private PreparedStatement pstmt;
	
	public serviceOfAll(){
		conn = new com.bit.conn.conn().getCon();
	}
	public boolean valiUser(userInfoTable user) {
		try {
			pstmt = conn
					.prepareStatement("select * from user_table where user_id =? and password = ?");
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, user.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
				return true;
			else
				return false;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	//其他方法...
		
	
	
		// 释放数据库资源
		public static void releaseDB( ResultSet resultSet, Statement statement,
				Connection conn) {

			if (resultSet != null) {
				try {
					resultSet.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (statement != null) {
				try {
					statement.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
}
