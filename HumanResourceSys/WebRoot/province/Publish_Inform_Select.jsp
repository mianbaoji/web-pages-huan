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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>省用户首页</title>
<link rel="stylesheet" type="text/css" href="CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/Publish_Inform.css" />
<script src="JS/Publish_Inform.js"></script>
<script src="JS/home_sheng.js"></script>
</head>

<body id="back">

	<%
		String news_head = request.getParameter("news_head");
		if (news_head == null) {
			news_head = "";
		}
		byte b[] = news_head.getBytes("utf-8");
		news_head = new String(b);

		String news_time = request.getParameter("news_time");
		if (news_time == null) {
			news_time = "";
		}
		b = news_time.getBytes("utf-8");
		news_time = new String(b);

		String news_content = request.getParameter("news_content");
		if (news_content == null) {
			news_content = "";
		}
		b = news_content.getBytes("utf-8");
		news_content = new String(b);

		String news_pub = request.getParameter("news_pub");
		if (news_pub == null) {
			news_pub = "";
		}
		b = news_pub.getBytes("utf-8");
		news_pub = new String(b);

		String news_sub = request.getParameter("news_sub");
		if (news_sub == null) {
			news_sub = "";
		}
		b = news_sub.getBytes("utf-8");
		news_sub = new String(b);
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