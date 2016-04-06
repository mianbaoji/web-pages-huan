<%@page import="com.bit.common.news_table"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="com.bit.service.serviceOfProvince"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>省用户首页</title>
<link rel="stylesheet" type="text/css" href="../CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Data_Analysis.css" />
<script src="../JS/home_sheng.js"></script>
<script src="../JS/Data_Analysis.js"></script>
</head>

<body id="back">

	<div id="analysis_son">
		<%
			String time_start = request.getParameter("time_start");
			if (time_start == null) {
				time_start = "";
			}
			byte b[] = time_start.getBytes("utf-8");
			time_start = new String(b);

			String time_end = request.getParameter("time_end");
			if (time_end == null) {
				time_end = "";
			}
			b = time_end.getBytes("utf-8");
			time_end = new String(b);

			String com_area = request.getParameter("com_area");
			if (com_area == null) {
				com_area = "";
			}
			b = com_area.getBytes("utf-8");
			com_area = new String(b);

			String com_property = request.getParameter("com_property");
			if (com_property == null) {
				com_property = "";
			}
			b = com_property.getBytes("utf-8");
			com_property = new String(b);

			String com_industry = request.getParameter("com_industry");
			if (com_industry == null) {
				com_industry = "";
			}
			b = com_industry.getBytes("utf-8");
			com_industry = new String(b);

			serviceOfProvince s = new serviceOfProvince();
		%>
	</div>

</body>

</html>