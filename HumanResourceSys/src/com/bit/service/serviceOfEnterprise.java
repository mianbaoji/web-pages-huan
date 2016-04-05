package com.bit.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;

import org.omg.CORBA.PUBLIC_MEMBER;

import com.bit.common.EnterpriseDataTable;
import com.bit.common.EnterpriseInfoTable;
import com.bit.common.userInfoTable;
import com.bit.common.news_table;
public class serviceOfEnterprise {

	private static Connection conn;
	private static PreparedStatement pstmt;
	
	public serviceOfEnterprise(){
		conn = new com.bit.conn.conn().getCon();
	}
	
	public static  ResultSet queryNotice(String com_id)
	{
		try {
			pstmt = conn
					.prepareStatement("select news_head,news_time,news_content,news_pub,news_sub,news_status from news_table where news_sub=?");
			pstmt.setString(1, com_id);
			ResultSet rs = pstmt.executeQuery();
			
				if(!rs.next())
				{
					return null;
				}
				else
				{
					return rs;
					
				}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	public static EnterpriseInfoTable queryEnterpriseInfo(String com_id) { //查询企业信息
		EnterpriseInfoTable ent = new EnterpriseInfoTable();
		try {
			pstmt = conn
					.prepareStatement("select * from com_info where com_id=?");
			pstmt.setString(1, com_id);
			ResultSet rs = pstmt.executeQuery();
			while (true) {
				if(!rs.next())
				{
					  
					return null;
				}
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
				return ent;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public boolean modifyEnterpriseInfo(EnterpriseInfoTable ent) { //修改企业信息

		try {
			pstmt = conn
					.prepareStatement("update  com_info set  com_area=? , com_name=? ,com_property=?,"
							+ " com_industry=? ,com_business=? , com_people=?,com_address=? , com_postalcode=? ,"
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
	
	public boolean insertEnterpriseInfo(EnterpriseInfoTable ent) { //插入企业信息

		try {
			pstmt = conn
					.prepareStatement("insert into  com_info (com_area, com_name ,com_property,"
							+ " com_industry ,com_business , com_people,com_address , com_postalcode ,"
							+ "com_fax ,com_tel ,com_email , com_id) value(?,?,?,?,?,?,?,?,?,?,?,?)");
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
			
			pstmt = conn.prepareStatement("select time_id from time_table where time_year =? and time_month=?");
			

			Calendar ca = Calendar.getInstance();
			int year = ca.get(Calendar.YEAR);
			int month = ca.get(Calendar.MONTH);
			String Month = null;
			if(month<10)
			{
				Month="0";
			}
			Month=Month+String.valueOf(month);
			System.out.println("日期"+year);
			System.out.println(Month);
			pstmt.setString(1, String.valueOf(year));	
			pstmt.setString(2, Month);	
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			int time_id=rs.getInt(1);
			System.out.println(time_id);
			pstmt = conn.prepareStatement("insert into com_data"
					+ "(com_id,people_ago,people_now,other_reson,time_id,type,reason_1,reason_2,reason_3,explain_1,explain_2,explain_3,status) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			pstmt.setString(1, com_id);		
			pstmt.setInt(2, ent.getPeople_ago());//将setString改为了setInt   周杨东			
			pstmt.setInt(3, ent.getPeople_now());//
			pstmt.setString(4, ent.getOther_reason());
			pstmt.setInt(5, time_id);
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
					.prepareStatement("select * from com_data join time_table on com_data.time_id=time_table.time_id where (com_data.com_id=? and time_table.time_year=?) and time_table.time_month=?");
			pstmt.setString(1, com_id);
			pstmt.setString(2, time_year);
			pstmt.setString(3, time_month);
			ResultSet rs = pstmt.executeQuery();
			while (true) {
				if(!rs.next())
				{
					return null;
				}
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
				return ent;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
