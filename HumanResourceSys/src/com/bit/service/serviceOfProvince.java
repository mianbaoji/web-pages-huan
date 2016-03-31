package com.bit.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bit.common.EnterpriseDataTable;
import com.bit.common.EnterpriseInfoTable;
import com.bit.common.news_table;
import com.sun.crypto.provider.RSACipher;

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

	public boolean insertnews(news_table news) {
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
	public boolean updatenews(news_table news,String head){//修改news  输入被修改的标题和新的news
		try {
			pstmt=conn.prepareStatement("update news_table set news_head=?,news_time=?,news_content=?,news_pub=?,news_sub=?,news_status=? where news_head=?");
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
	public boolean deletnews(String head, String time){//删除news  输入标题和时间
		try {
			pstmt=conn.prepareStatement("delete from news_table where news_head=? and news_time=?");
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

	public ResultSet selectnewspub(String ID) {
		List list_news = new ArrayList();
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
}
