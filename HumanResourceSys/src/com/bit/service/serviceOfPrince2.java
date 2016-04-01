package com.bit.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.bit.common.*;

public class serviceOfPrince2 {
	private static Connection conn;
	private static PreparedStatement pstmt;
	
	public serviceOfPrince2(){
		conn = new com.bit.conn.conn().getCon();
	}
	
	public  ResultSet queryEnterpriseRecord(String com_area) { //企业备案
		try {
			pstmt = conn
					.prepareStatement("select * from com_info where com_area =?");
			pstmt.setString(1, com_area);
			ResultSet rs = pstmt.executeQuery();
//			while (rs.next()) {
//				ent.setCom_id(rs.getString(1));
//				ent.setCom_area(rs.getString(2));
//				ent.setCom_name(rs.getString(3));
//				ent.setCom_property(rs.getString(4));
//				ent.setCom_industry(rs.getString(5));
//				ent.setCom_business(rs.getString(6));
//				ent.setCom_people(rs.getString(7));
//				ent.setCom_address(rs.getString(8));
//				ent.setCom_postalcode(rs.getString(9));
//				ent.setCom_fax(rs.getString(10));
//				ent.setCom_tel(rs.getString(11));
//				ent.setCom_email(rs.getString(12));
//			}
			return rs;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public  ResultSet queryForm(String com_name,String com_id,String time_year,String time_month) { //报表管理_查询
		try {
			String sens = "select a.com_name,a.com_area,b.*,c.time_year,c.time_month from com_info a,com_data b,time_table c where a.com_id = b.com_id and c.time_year=? and c.time_month=? and c.time_id = b.time_id";
			if(com_name != "")
				sens = sens + "and b.com_name=?";
			else if(com_id != "")
				sens = sens + "and b.com_id=?";
			pstmt = conn
					.prepareStatement(sens);
			pstmt.setString(1, time_year);
			pstmt.setString(2, time_month);
			pstmt.setString(3, com_name);
			pstmt.setString(4, com_id);
			ResultSet rs = pstmt.executeQuery();
//			while (rs.next()) {
//				ent.setCom_id(rs.getString(1));
//				ent.setCom_area(rs.getString(2));
//				ent.setCom_name(rs.getString(3));
//				ent.setCom_property(rs.getString(4));
//				ent.setCom_industry(rs.getString(5));
//				ent.setCom_business(rs.getString(6));
//				ent.setCom_people(rs.getString(7));
//				ent.setCom_address(rs.getString(8));
//				ent.setCom_postalcode(rs.getString(9));
//				ent.setCom_fax(rs.getString(10));
//				ent.setCom_tel(rs.getString(11));
//				ent.setCom_email(rs.getString(12));
//			}
			return rs;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean returnFrom(String com_id) { //报表退回
		try {
			String statusString = "已退回";
			pstmt = conn.prepareStatement("update com_data set status =? where com_id = ?");
			pstmt.setString(1,statusString );
			pstmt.setString(2,com_id );
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}
	
}
