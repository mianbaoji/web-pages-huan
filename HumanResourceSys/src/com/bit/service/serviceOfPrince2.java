﻿package com.bit.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bit.common.*;

public class serviceOfPrince2 {
	private static Connection conn;
	private static PreparedStatement pstmt;

	public serviceOfPrince2() {
		conn = new com.bit.conn.conn().getCon();
	}

	public List queryEnterpriseRecord(String com_area) { // 企业备案
		List list = new ArrayList();
		try {
			pstmt = conn
					.prepareStatement("select * from com_info where com_area =?");
			pstmt.setString(1, com_area);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				EnterpriseInfoTable ent = new EnterpriseInfoTable();
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
				list.add(ent);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public List queryAllEnterpriseRecord() { // 所有企业备案
		List list = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from com_info");
			// pstmt.setString(1, com_area);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				EnterpriseInfoTable ent = new EnterpriseInfoTable();
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
				list.add(ent);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public void deleteCityUser(String user_id) {
		try {
			String senString = "delete from user_table where user_id = ?";
			pstmt = conn.prepareStatement(senString);
			pstmt.setString(1, user_id);
			pstmt.execute();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	public List queryAllEnterpriseListManage() { // 所有企业报表管理
		List list = new ArrayList();
		try {
			pstmt = conn
					.prepareStatement("select c.com_name,c.com_area,a.*,b.* from com_data a,time_table b,com_info c where a.status = '已上报' and a.time_id = b.time_id and a.com_id = c.com_id");
			// pstmt.setString(1, com_area);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				listManageTable ent = new listManageTable();
				ent.setCom_id(rs.getString(3));
				ent.setCom_area(rs.getString(2));
				ent.setCom_name(rs.getString(1));
				ent.setTable_id(rs.getInt(4));
				ent.setTime_year(rs.getString(18));
				ent.setTime_month(rs.getString(19));
				list.add(ent);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public EnterpriseInfoTable queryEnterpriseRecordById(String Com_id) { // 查看具体企业详情
		try {
			pstmt = conn
					.prepareStatement("select * from com_info where com_id=?");
			pstmt.setString(1, Com_id);
			// System.out.println("333222111");
			ResultSet rs = pstmt.executeQuery();
			EnterpriseInfoTable ent = new EnterpriseInfoTable();
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

	public List selectEnterpriseDate(String place)// 根据地点查询企业信息
	{
		List list_ent = new ArrayList();
		try {
			pstmt = conn
					.prepareStatement("select com_name,com_area,com_id from com_info where com_area=?");
			pstmt.setString(1, place);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				EnterpriseInfoTable enterpriseInfoTable = new EnterpriseInfoTable();
				enterpriseInfoTable.setCom_name(rs.getString(1));
				enterpriseInfoTable.setCom_area(rs.getString(2));
				enterpriseInfoTable.setCom_id(rs.getString(3));
				list_ent.add(enterpriseInfoTable);
			}
			return list_ent;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public List queryForm(String com_name, String com_id, String time_year,
			String time_month) { // 报表管理_查询
		List list_ent = new ArrayList();
		// System.out.println("%%%%" + com_name + "####" + com_id + "####"
		// + time_year + "####" + time_month);
		try {
			String sens = "select a.com_name,a.com_area,b.*,c.time_year,c.time_month from com_info a,com_data b,time_table c where b.status = '已上报' and a.com_id = b.com_id and c.time_year=? and c.time_month=? and c.time_id = b.time_id";

			int cc1 = 0, cc2 = 0;
			if (com_name != "") {
				sens = sens + " and a.com_name=?";
				cc1 = 1;
			}
			if (com_id != "") {
				sens = sens + " and b.com_id=?";
				cc2 = 1;
			}
			pstmt = conn.prepareStatement(sens);
			pstmt.setString(1, time_year);
			pstmt.setString(2, time_month);
			if (cc1 == 1) {
				if (cc2 == 1) {
					pstmt.setString(3, com_name);
					pstmt.setString(4, com_id);
				} else {
					pstmt.setString(3, com_name);
				}
			} else {
				if (cc2 == 1) {
					pstmt.setString(3, com_id);
				}
			}
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				listManageTable ent = new listManageTable();
				// System.out.println("@@@" + ent.getCom_name() + "####"
				// + ent.getCom_id() + "####");
				ent.setCom_name(rs.getString(1));
				ent.setCom_id(rs.getString(3));
				ent.setCom_area(rs.getString(2));
				ent.setTable_id(rs.getInt(4));
				ent.setTime_year(rs.getString(17));
				ent.setTime_month(rs.getString(18));
				list_ent.add(ent);
			}
			return list_ent;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public List queryAllCityUser() {
		List list_entList = new ArrayList();
		try {
			String sensString = "select * from user_table where user_type <> 'province' and user_type <> 'enterprise'";
			pstmt = conn.prepareStatement(sensString);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				userInfoTable userInfoTable = new userInfoTable();
				userInfoTable.setUser_id(rs.getString(1));
				list_entList.add(userInfoTable);
			}
			return list_entList;
		} catch (Exception e) {
			return null;
			// TODO: handle exception
		}
	}

	public listManageTable queryOneListManage(String table_id) {
		try {
			String sens = "select a.*,b.*,c.* from com_data a,time_table b,com_info c where a.table_id = ? and a.time_id = b.time_id and a.com_id = c.com_id";
			pstmt = conn.prepareStatement(sens);
			pstmt.setString(1, table_id);
			ResultSet rs = pstmt.executeQuery();
			listManageTable ent = new listManageTable();
			while (rs.next()) {
				ent.setCom_id(rs.getString(1));
				ent.setCom_name(rs.getString(20));
				ent.setCom_area(rs.getString(19));
				ent.setPeople_ago(rs.getInt(3));
				ent.setPeople_now(rs.getInt(4));
				ent.setOther_reason(rs.getString(5));
				ent.setType(rs.getString(7));
				ent.setReason_1(rs.getString(8));
				ent.setExplain_1(rs.getString(11));
				ent.setReason_2(rs.getString(9));
				ent.setExplain_2(rs.getString(12));
				ent.setReason_3(rs.getString(10));
				ent.setExplain_3(rs.getString(13));
			}
			return ent;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public boolean datastatuschang(String table_id, String n_status) {
		try {
			pstmt = conn
					.prepareStatement("update com_data set status=? where table_id=?");
			pstmt.setString(1, n_status);
			pstmt.setString(2, table_id);
			pstmt.executeUpdate();
			pstmt = conn
					.prepareStatement("select com_id from com_data where table_id=?");
			pstmt.setString(1, table_id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			String idString = rs.getString(1);
			pstmt = conn
					.prepareStatement("insert into news_table(news_head,news_time,news_content,news_pub,news_sub,news_status) values('申请状态变更',now(),'您的申请状态已变更，请注意查看','0',?,'未查看')");
			pstmt.setString(1, idString);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public boolean adminOrNot(String user_id) {  //判断是否是管理员
		try {
			pstmt = conn
					.prepareStatement("select * from user_table where user_id=? and administor=?");
			String adminString = "1";
			pstmt.setString(1, user_id);
			pstmt.setString(2, adminString);
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
	
	public boolean RenameOrNot(String user_id) {  //判断用户是否重名
		try {
			pstmt = conn
					.prepareStatement("select * from user_table where user_id=?");
			pstmt.setString(1, user_id);
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
	
	public boolean addUser(userInfoTable user) {  //新建用户
		try {
			pstmt = conn.prepareStatement("insert into user_table"
					+ "(user_id,password,user_type,user_city,user_role,administor) "
					+ "values(?,?,?,?,?,?)");
			pstmt.setString(1, user.getUser_id());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getUser_type());
			pstmt.setString(4, user.getUser_city());
			pstmt.setString(5, user.getUser_row());
			pstmt.setString(6, user.getAdministor());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			return false;
		}

	}
	
}
