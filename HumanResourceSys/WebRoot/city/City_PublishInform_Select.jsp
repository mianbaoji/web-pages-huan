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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>市用户</title>
<link rel="stylesheet" type="text/css" href="CSS/All_city.css" />
<link rel="stylesheet" type="text/css" href="CSS/city_publishinform.css" />
<script src="JS/City_publishinform.js"></script>
<script src="JS/home_sheng.js"></script>
</head>

<body id="back">

	<%
		String news_head = request.getParameter("news_head");
		if (news_head == null) {
			news_head = "";
		}
		news_head =  new String(news_head.getBytes("ISO8859-1"), "utf-8");;

		String news_time = request.getParameter("news_time");
		if (news_time == null) {
			news_time = "";
		}
	
		news_time =  new String(news_time.getBytes("ISO8859-1"), "utf-8");

		String news_content = request.getParameter("news_content");
		if (news_content == null) {
			news_content = "";
		}
		
		news_content =  new String(news_content.getBytes("ISO8859-1"), "utf-8");

		String news_pub = request.getParameter("news_pub");
		if (news_pub == null) {
			news_pub = "";
		}
		news_pub = new String(news_pub.getBytes("ISO8859-1"), "utf-8");

		String news_sub = request.getParameter("news_sub");
		if (news_sub == null) {
			news_sub = "";
		}
		news_sub = new String(news_sub.getBytes("ISO8859-1"), "utf-8");
	%>

	<div class="add">
		<p>
			通知标题:<%=news_head%></p>
		<p>
			发布时间:<%=news_time%></p>
		<p>
			通知内容:<%=news_content%></p>
		<p>
			发布人:<%=news_pub%></p>
		<p>
			接收人:<%=news_sub%></p>
		<button name="button_return" onclick="window.close()"
			class="button_dealwithmessage"
			style='width:230px;height:40px;position:fixed;left:60%;bottom:15%;font-size:25px'>返回
		</button>
	</div>

</body>

</html>