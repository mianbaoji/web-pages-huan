<%@page import="com.bit.common.PovinceDateQuery"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.xml.internal.txw2.output.ResultFactory"%>
<%@page import="com.bit.service.serviceOfProvince"%>
<%@page import="com.bit.common.PovinceDateQuery"%>
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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>省用户数据查询</title>
<link rel="stylesheet" type="text/css" href="CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/Data_Query.css" />
<script src="JS/Data_Query.js"></script>
<script src="JS/home_sheng.js"></script>
</head>

<body id="back">

	<div id="first_navigation">
		<ul id="ultype">
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/home_sheng.jsp" class="indextype">首页</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Enterprise_Record.jsp" class="indextype">企业备案</a></li>
			<!-- <li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Enterprise_Query.jsp" class="indextype">企业查询</a></li> -->
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/List_Manage.jsp" class="indextype">报表管理</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Data_Query.jsp" class="indextype">数据查询</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Data_Analysis.jsp" class="indextype">数据分析</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Publish_Inform.jsp" class="indextype">发布通知</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/System_Manage.jsp" class="indextype">系统管理</a></li>
		</ul>
	</div>

	<div id="info">
		<%
			String com_name = request.getParameter("com_name");
			if (com_name == null) {
				com_name = "";
			}
			byte b[] = com_name.getBytes("utf-8");
			com_name = new String(b);

			String area = request.getParameter("area");
			if (area == null) {
				area = "";
			}
			b = area.getBytes("utf-8");
			area = new String(b);

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

			String start_m = request.getParameter("start_m");
			if (start_m == null) {
				start_m = "";
			}
			b = start_m.getBytes("utf-8");
			start_m = new String(b);

			String end_m = request.getParameter("end_m");
			if (end_m == null) {
				end_m = "";
			}
			b = end_m.getBytes("utf-8");
			end_m = new String(b);

			String start_y = request.getParameter("start_y");
			if (start_y == null) {
				start_y = "";
			}
			b = start_y.getBytes("utf-8");
			start_y = new String(b);

			String end_y = request.getParameter("end_y");
			if (end_y == null) {
				end_y = "";
			}
			b = end_y.getBytes("utf-8");
			end_y = new String(b);

			serviceOfProvince s = new serviceOfProvince();
			PovinceDateQuery p = new PovinceDateQuery();

			p.setCom_name(com_name);
			p.setArea(area);
			p.setCom_property(com_property);
			p.setStart_m(start_m);
			p.setEnd_m(end_m);
			p.setStart_y(start_y);
			p.setEnd_y(end_y);
			p.setCom_industry(com_industry);
			p.setUser_type("");
			p.setID("");
			ResultSet rs = s.selectentrprisedata(p);

			while (rs.next()) {
		%>

		<div>
			<p class="result">
				企业名称:<%=rs.getString("com_name")%></p>
			<p class="result">
				建档期就业人数:<%=rs.getString("people_ago")%></p>
			<p class="result">
				调查期就业人数:<%=rs.getString("people_now")%></p>
			<p class="result">
				其他原因:<%=rs.getString("other_reson")%></p>
			<p class="result">
				就业人数减少类型:<%=rs.getString("type")%></p>
		</div>

		<%
			}
		%>
	</div>

	<button name="button_return" class="button"
		style="position:absolute;bottom:10%;right:10%"
		onclick="window.location.href='province/Data_Query.jsp'">返回</button>

</body>

</html>