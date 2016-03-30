package com.bit.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.omg.CORBA.PUBLIC_MEMBER;

import com.bit.common.EnterpriseDataTable;
import com.bit.common.EnterpriseInfoTable;
import com.bit.common.userInfoTable;

public class serviceOfEnterprise {

	private Connection conn;
	private PreparedStatement pstmt;
	
	public serviceOfEnterprise(){
		conn = new com.bit.conn.conn().getCon();
	}
	
	public EnterpriseInfoTable queryEnterpriseInfo(String com_id) { //查询企业信息
		EnterpriseInfoTable ent = new EnterpriseInfoTable();
		try {
			pstmt = conn
					.prepareStatement("select * from user_table where com_info=？");
			pstmt.setString(1, com_id);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				ent.setCom_id(rs.getString(1));
				ent.setCom_area(rs.getString(2));
				ent.setCom_name(rs.getString(3));
				ent.setCom_property(rs.getString(4));
				ent.setCom_industry(rs.getString(5));
				ent.setCom_business(rs.getString(6));
				ent.setCom_people(rs.getString(7));
				ent.setCom_address(rs.getString(8));
				ent.setCom_postalcode(rs.getString(9));
				ent.setCom_fax(rs.getString(10));
				ent.setCom_tel(rs.getString(11));
				ent.setCom_email(rs.getString(12));
			}
			return ent;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean modifyEnterpriseInfo(EnterpriseInfoTable ent) { //修改企业信息

		try {
			pstmt = conn
					.prepareStatement("update  com_info set  com_area=? , com_name=? ,com_ property=? ,"
							+ " com_ industry=? ,com_ business=? , com_people=?,com_address=? , com_postalcode=? ,"
							+ "com_fax=? ,com_tel=? ,com_email=? where com_id=?");
			pstmt.setString(1, ent.getCom_area());
			pstmt.setString(2, ent.getCom_name());
			pstmt.setString(3, ent.getCom_property());
			pstmt.setString(4, ent.getCom_industry());
			pstmt.setString(5, ent.getCom_business());
			pstmt.setString(6, ent.getCom_people());
			pstmt.setString(7, ent.getCom_address());
			pstmt.setString(8, ent.getCom_postalcode());
			pstmt.setString(9, ent.getCom_fax());
			pstmt.setString(10, ent.getCom_tel());
			pstmt.setString(11, ent.getCom_email());
			pstmt.setString(12, ent.getCom_id());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean addEnterpriseData(EnterpriseDataTable ent,String com_id) { //填报企业数据
		try {
			pstmt = conn.prepareStatement("insert into com_data"
					+ "(com_id,people_ago,people_now,other_reson,time_id,type,reason_1,reason_2,reason_3,explain_1,explain_2,explain_3,status) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, com_id);
			pstmt.setString(2, ent.getPeople_ago().toString());//后面改的-yu
			pstmt.setString(3, ent.getPeople_now().toString());
			pstmt.setString(4, ent.getOther_reason());
			pstmt.setString(5, ent.getTime_id().toString());
			pstmt.setString(6, ent.getType());
			pstmt.setString(7, ent.getReason_1());
			pstmt.setString(8, ent.getReason_2());
			pstmt.setString(9, ent.getReason_3());
			pstmt.setString(10, ent.getExplain_1());
			pstmt.setString(11, ent.getReason_2());
			pstmt.setString(12, ent.getReason_3());
			pstmt.setString(13, ent.getStatus());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			return false;
		}
	}
	
	public EnterpriseDataTable queryEnterpriseData(String com_id,String time_year,String time_month) { //查询企业数据填报
		EnterpriseDataTable ent = new EnterpriseDataTable();
		try {
			pstmt = conn
					.prepareStatement("select * from com_data a,time_table b where a.com_id=？ and a.time_id=b.time_id and b.time_year=？ and b.time_month=？");
			pstmt.setString(1, com_id);
			pstmt.setString(2, time_year);
			pstmt.setString(3, time_month);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				ent.setPeople_ago(Integer.valueOf(rs.getString(3)));
				ent.setPeople_now(Integer.valueOf(rs.getString(4)));
				ent.setOther_reason(rs.getString(5));
				ent.setType(rs.getString(7));
				ent.setReason_1(rs.getString(8));
				ent.setReason_2(rs.getString(9));
				ent.setReason_3(rs.getString(10));
				ent.setExplain_1(rs.getString(11));
				ent.setExplain_2(rs.getString(12));
				ent.setExplain_3(rs.getString(13));
			}
			return ent;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
