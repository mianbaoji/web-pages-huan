package com.bit.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class conn {
	public Connection getCon(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("-----------------2");
			String dbUrll = "jdbc:mysql://127.0.0.1/human_resources_db?useUnicode=true&characterEncoding=utf-8";
			String user = "root";
			String password = "000000";
			Connection conn = DriverManager.getConnection(dbUrll, user, password);
			System.out.println(conn.getMetaData().getURL());
			//sql=conn.createStatement();

			return conn;
		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
	}

}
