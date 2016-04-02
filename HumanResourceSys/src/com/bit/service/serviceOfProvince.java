package com.bit.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bit.common.EnterpriseDataTable;
import com.bit.common.EnterpriseInfoTable;
import com.bit.common.PovinceDateQuery;
import com.bit.common.news_table;
import com.sun.crypto.provider.RSACipher;
import com.sun.org.apache.xpath.internal.operations.And;

public class serviceOfProvince {
	private Connection conn;
	private PreparedStatement pstmt;

	public serviceOfProvince() {
		conn = new com.bit.conn.conn().getCon();
	}

	public boolean checknews(String head) {// 输入为消息前标题
		try {
			pstmt = conn
					.prepareStatement("update news_table set news_status='已查看' where news_head=?");
			pstmt.setString(1, head);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public boolean insertnews(news_table news) {// 消息插入
		try {
			pstmt = conn
					.prepareStatement("insert into news_table(news_head,news_time,news_content,news_pub,news_sub,news_status) values(?,?,?,?,?,?)");
			pstmt.setString(1, news.getNews_head());
			pstmt.setString(2, news.getNews_time());
			pstmt.setString(3, news.getNews_content());
			pstmt.setString(4, news.getNews_pub());
			pstmt.setString(5, news.getNews_sub());
			pstmt.setString(6, news.getNews_status());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public boolean updatenews(news_table news, String head) {// 修改news
																// 输入被修改的标题和新的news
		try {
			pstmt = conn
					.prepareStatement("update news_table set news_head=?,news_time=?,news_content=?,news_pub=?,news_sub=?,news_status=? where news_head=?");
			pstmt.setString(1, news.getNews_head());
			pstmt.setString(2, news.getNews_time());
			pstmt.setString(3, news.getNews_content());
			pstmt.setString(4, news.getNews_pub());
			pstmt.setString(5, news.getNews_sub());
			pstmt.setString(6, news.getNews_status());
			pstmt.setString(7, head);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public boolean deletnews(String head, String time) {// 删除news 输入标题和时间
		try {
			pstmt = conn
					.prepareStatement("delete from news_table where news_head=? and news_time=?");
			pstmt.setString(1, head);
			pstmt.setString(2, time);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public ResultSet selectEnterpriseDate(String place)// 根据地点查询企业信息
	{
		try {
			pstmt = conn
					.prepareStatement("select com_name,com_area,com_id from com_info where com_area=?");
			pstmt.setString(1, place);
			ResultSet rs = pstmt.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public ResultSet selectnewspub(String ID) {// 发布者查询自己发布的消息
		try {
			pstmt = conn
					.prepareStatement("select news_head,news_time,news_content,news_pub,news_sub,news_status from news_table where news_pub=?");
			pstmt.setString(1, ID);
			ResultSet rs = pstmt.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public ResultSet selectentrprisedata(PovinceDateQuery pdq) {
		String sql = "select com_name,people_ago,people_now,other_reson,type from com_data ,com_info where com_data.com_id=com_info.com_id and time_id in(select time_id from time_table where (time_year>=? or (time_year=? and time_month>=?))and(time_year<=? or (time_year=? and time_month<=?)))";
		int yearint1, yearint2;
		String yearString1, yearString2;
		yearint1 = Integer.valueOf(pdq.getStart_y());
		yearint1 += 1;
		yearString1 = String.valueOf(yearint1);
		yearint2 = Integer.valueOf(pdq.getEnd_y());
		yearint2 -= 1;
		yearString2 = String.valueOf(yearint2);
		if (pdq.getCom_name() != "") {
			sql += "and com_name=" + pdq.getCom_name();
		}
		if (pdq.getCom_property() != "") {
			sql += "and com_property like '%" + pdq.getCom_property() + "%'";
		}
		if (pdq.getArea() != "") {
			sql += "and com_area=" + pdq.getArea();
		}
		if (pdq.getID() != "") {
			sql += "and com_info.com_id=" + pdq.getID();
		}
		if (pdq.getUser_type() != "") {
			sql += "and com_info.com_id in(select user_id from user_table where user_type="
					+ pdq.getUser_type() + ")";
		}
		try {
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, yearString1);
			pstmt.setString(2, pdq.getStart_y());
			pstmt.setString(3, pdq.getStart_m());
			pstmt.setString(4, yearString2);
			pstmt.setString(5, pdq.getEnd_y());
			pstmt.setString(6, pdq.getEnd_m());
			ResultSet rs = pstmt.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public ResultSet tableviewenterprise(String year, String month) {
		try {
			pstmt = conn
					.prepareStatement("select com_area,count(com_info.com_id),sum(people_now-people_ago) from com_data,com_info where com_data.com_id=com_info.com_id and time_id in(select time_id from time_table where time_year=? and time_month=?)group by com_area");
			pstmt.setString(1, year);
			pstmt.setString(2, month);
			ResultSet rs = pstmt.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
	public int allpeople_nowselect(String year,String month,String property,String industry,String area){
		String sql="select sum(com_data.people_now) from com_data,com_info where com_data.time_id in(select time_id from time_table where time_year=? and time_month=?) and com_data.com_id=com_info.com_id";
		if(property!=""){
			sql+="and com_property="+property;
		}
		if(industry!=""){
			sql+="and com_industry="+industry;
		}
		if(area!=""){
			sql+="and com_area="+area;
		}
		int number=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, year);
			pstmt.setString(2, month);
			ResultSet rs=pstmt.executeQuery();
			rs.next();
			number=Integer.valueOf(rs.getString(1));
			return number;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
	}
	public ResultSet onepeople_nowselect(String s_y,String s_m,String e_y,String e_m,String com_name){
		try {
			pstmt=conn.prepareStatement("select sun(people_now) from com_data ,com_info where com_name=? and com_data.com_id=com_info.com_id and time_id in(select time_id from time_table where (time_year>=? or (time_year=? and time_month>=?))and(time_year<=? or (time_year=? and time_month<=?)))");
			String year="";
			int yearint=0;
			pstmt.setString(1, com_name);
			yearint=Integer.valueOf(s_y);
			yearint++;
			year=String.valueOf(yearint);
			pstmt.setString(2, year);
			pstmt.setString(3, s_y);
			pstmt.setString(4, s_m);
			
			yearint=Integer.valueOf(e_y);
			yearint--;
			year=String.valueOf(yearint);
			pstmt.setString(5, year);
			pstmt.setString(6, e_y);
			pstmt.setString(7, e_m);
			ResultSet rsResultSet=pstmt.executeQuery();
			return rsResultSet;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}	
	}
}
