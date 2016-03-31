package com.bit.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bit.common.EnterpriseDataTable;
import com.bit.common.EnterpriseInfoTable;

public class serviceOfProvince {
	private Connection conn;
	private PreparedStatement pstmt;
    public serviceOfProvince(){
    	conn = new com.bit.conn.conn().getCon();
    }
    public List selectEnterpriseDate(String place)//根据地点查询企业信息
    {
    	List list_ent = new ArrayList();
    	try {
			pstmt =conn.prepareStatement("select com_name,com_area,com_id from com_info where com_area=?");
			pstmt.setString(1, place);
			ResultSet rs=pstmt.executeQuery();
			EnterpriseInfoTable enterpriseInfoTable=new EnterpriseInfoTable();
			while(rs.next()){
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
}
