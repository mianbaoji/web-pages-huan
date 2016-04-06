package com.bit.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bit.common.*;

public class serviceOfCity {
	private static Connection conn;
	private static PreparedStatement pstmt;

	public serviceOfCity() {
		conn = new com.bit.conn.conn().getCon();
	}

	public String queryCityString(String user_id) {
		try {
			pstmt = conn
					.prepareStatement("select com_area from com_info where com_id = ?");
			pstmt.setString(1, user_id);
			ResultSet rs0 = pstmt.executeQuery();
			String cityString = "";
			if (rs0.first()) {
				cityString = rs0.getString(1);
			}
			return cityString;
		} catch (Exception e) {
			return null;
			// TODO: handle exception
		}
	}

	public List queryRecordForCity(String user_id) { // 市用户的企业备案
		List list = new ArrayList();
		try {
			pstmt = conn
					.prepareStatement("select com_area from com_info where com_id = ?");
			pstmt.setString(1, user_id);
			ResultSet rs0 = pstmt.executeQuery();
			String cityString = "";
			if (rs0.first()) {
				cityString = rs0.getString(1);
			}
			String sensString = "select * from com_info where com_area = '"
					+ cityString + "'";
			pstmt = conn.prepareStatement(sensString);
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

	public List queryAllEnterpriseListManageForCity(String user_id) { // 所有企业报表管理
		List list = new ArrayList();
		try {
			pstmt = conn
					.prepareStatement("select com_area from com_info where com_id = ?");
			pstmt.setString(1, user_id);
			ResultSet rs0 = pstmt.executeQuery();
			String cityString = "";
			if (rs0.first()) {
				cityString = rs0.getString(1);
			}
			String sensString = "select c.com_name,c.com_area,a.*,b.* from com_data a,time_table b,com_info c where a.status = 'checking' and a.time_id = b.time_id and a.com_id = c.com_id and c.com_area = '"
					+ cityString + "'";
			pstmt = conn.prepareStatement(sensString);
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

	public EnterpriseInfoTable queryEnterpriseRecordByIdForEnterpriseInfoTableCity(
			String Com_id) { // 查看具体企业详情
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

	public List queryFormForCity(String com_name, String com_id,
			String time_year, String user_id, String time_month) { // 报表管理_查询

		List list_ent = new ArrayList();
		// System.out.println("%%%%" + com_name + "####" + com_id + "####"
		// + time_year + "####" + time_month);
		try {
			pstmt = conn
					.prepareStatement("select com_area from com_info where com_id = ?");
			pstmt.setString(1, user_id);
			ResultSet rs0 = pstmt.executeQuery();
			String cityString = "";
			if (rs0.first()) {
				cityString = rs0.getString(1);
			}

			String sens = "select a.com_name,a.com_area,b.*,c.time_year,c.time_month from com_info a,com_data b,time_table c where b.status = 'checking' and a.com_id = b.com_id and c.time_year=? and c.time_month=? and c.time_id = b.time_id and a.com_area='"
					+ cityString + "'";

			int cc1 = 0, cc2 = 0;
			if (com_name != "") {
				sens = sens + " and a.com_name=?";
				cc1 = 1;
			}
			if (com_id != "") {
				sens = sens + " and b.com_id=?";
				cc2 = 1;
			}
			// System.out.println(sens);
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
			// System.out.println();
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				// EnterpriseInfoTable ent = new EnterpriseInfoTable();
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

	public boolean datastatuschangForCity(String table_id, String n_status) { // 退回
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

	public boolean dataStatusGoonForCity(String table_id, String n_status) { // 上报
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

	public listManageTable queryOneListManageForCity(String table_id,
			String user_id) {
		try {
			pstmt = conn
					.prepareStatement("select com_area from com_info where com_id = ?");
			pstmt.setString(1, user_id);
			ResultSet rs0 = pstmt.executeQuery();
			String cityString = "";
			if (rs0.first()) {
				cityString = rs0.getString(1);
			}
			String sens = "select a.*,b.*,c.* from com_data a,time_table b,com_info c where a.table_id = ? and a.time_id = b.time_id and a.com_id = c.com_id and c.com_area = '"
					+ cityString + "'";
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

	public List queryAllEntUser(String user_id) {
		List list_entList = new ArrayList();
		try {
			pstmt = conn
					.prepareStatement("select com_area from com_info where com_id = ?");
			pstmt.setString(1, user_id);
			ResultSet rs0 = pstmt.executeQuery();
			String cityString = "";
			if (rs0.first()) {
				cityString = rs0.getString(1);
			}
			String sensString = "select * from user_table a,com_info b where a.user_type = 'enterprise' and a.user_id = b.com_id and b.com_area = '"
					+ cityString + "'";
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

}
