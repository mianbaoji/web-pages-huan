package com.human.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.human.model.UserInfo;;

public class UserInfoService {
	private Connection conn;
	private PreparedStatement pstmt;

	public UserInfoService() {
		conn = new com.human.conn.conn().getCon();
	}
	
	public boolean valiUser(userTable user)
	{
		try {
			pstmt = conn.prepareStatement("select * from use_table where user_id = ? and password = ?");
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, user.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
				return true;
			else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
}
