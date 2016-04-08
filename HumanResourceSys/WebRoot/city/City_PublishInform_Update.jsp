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
		String old_news_head = request.getParameter("old_news_head");
		if (old_news_head == null) {
			old_news_head = "";
		}
		old_news_head = new String(old_news_head.getBytes("ISO8859-1"),
				"utf-8");
		;

		String news_head = request.getParameter("news_head");
		if (news_head == null) {
			news_head = "";
		}
		news_head = new String(news_head.getBytes("ISO8859-1"), "utf-8");
		;

		String news_time = request.getParameter("news_time");
		if (news_time == null) {
			news_time = "";
		}

		news_time = new String(news_time.getBytes("ISO8859-1"), "utf-8");

		String news_content = request.getParameter("news_content");
		if (news_content == null) {
			news_content = "";
		}

		news_content = new String(news_content.getBytes("ISO8859-1"),
				"utf-8");

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
		<form action="city/City_PublishInform_Update_Result.jsp">
			<p>
				通知标题:<input type="text" placeholder=<%=old_news_head%> class="input_css" name="news_head">
			</p>
			<p>
				发布时间:<input type="text" placeholder=<%=news_time%> class="input_css"
					name="news_time">
			</p>
			<p>
				通知内容:<input type="text" placeholder=<%=news_content%>
					class="input_css" name="news_content">
			</p>
			<p>
				发布人:<input type="text" placeholder=<%=news_pub%> class="input_css"
					name="news_pub">
			</p>
			<p>
				接收人:<input type="text" placeholder=<%=news_sub%> class="input_css"
					name="news_sub">
			</p>
			<input type="hidden" value=<%=old_news_head%> name="old_news_head">
			<input type="submit" value="确认修改" class="button_dealwithmessage"
				style='width:230px;height:40px;position:fixed;left:60%;bottom:15%;font-size:25px'>
		</form>
		<button name="button_return" onclick="window.close()"
			class="button_dealwithmessage"
			style='width:230px;height:40px;position:fixed;left:60%;bottom:5%;font-size:25px'>返回
		</button>
	</div>

</body>

</html>