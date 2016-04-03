<%@page import="java.sql.ResultSet"%>
<%@ page import="com.bit.service.serviceOfProvince"%>>
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
<link rel="stylesheet" type="text/css" href="CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/Publish_Inform.css" />
<script src="JS/Publish_Inform.js"></script>
<script src="JS/home_sheng.js"></script>
</head>

<body id="back">

	<div id="first_navigation">
		<ul id="ultype">
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">首页</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">企业备案</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">企业查询</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">报表管理</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="Data_Query.jsp"
				class="indextype">数据查询</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="Data_Analysis.jsp"
				class="indextype">数据分析</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="Publish_Inform.jsp"
				class="indextype">发布通知</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="System_Manage.jsp"
				class="indextype">系统管理</a></li>
		</ul>
	</div>

	<div>
		<button name="button_addmessage" id="button_addmessage"
			onclick="addmessage()">添加</button>
	</div>

	<div id="addedmessage">
		<%
			//String com_id = (String)session.getAttribute("user");
			//serviceOfProvince s = new serviceOfProvince();
			//ResultSet rs = s.selectnewspub("1120132142");
			int i = 0;
			//while (rs.next()) {
			out.print("<Table Border>");
			out.print("<TR>");
			out.print("<TH width=220>" + "标题");
			out.print("<TH width=220>" + "发布时间");
			out.print("<TH>" + "操作");
			out.print("</TR>");
			//while (rs.next()) {
		%>
		<TR>
			<form id=<%=i%> target="查看通知详情">
				<TH width=100>news_head<input type="hidden" value="news_head"
					name="news_head"></TH>
				<TH width=100>news_time<input type="hidden" value="news_time"
					name="news_time"></TH> <input type="hidden" value="news_content"
					name="news_content"> <input type="hidden" value="news_pub"
					name="news_pub"> <input type="hidden" value="news_sub"
					name="news_sub">
				<TH width=300><button name="button_selectmessage"
						class="button_dealwithmessage" onclick="select(<%=i%>)">详情</button>
					<button name="button_updatemessage" class="button_dealwithmessage"
						onclick="update(<%=i%>)">修改</button>
					<button name="button_deletemessage" class="button_dealwithmessage"
						onclick="deletem(<%=i%>)">删除</button></TH>
			</form>
		</TR>
		<%
			i++;
			//}
			out.print("</Table>");
			//}
		%>
	</div>
	<form name=<%%>></form>
	>
	<div id="div_add"></div>

</body>

</html>