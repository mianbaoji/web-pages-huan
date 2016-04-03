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
<link rel="stylesheet" type="text/css" href="../CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Publish_Inform.css" />
<script src="../JS/Publish_Inform.js"></script>
<script src="../JS/home_sheng.js"></script>
</head>

<body id="back">

	<%
		String old_news_head = request.getParameter("news_head");
		if (old_news_head == null) {
			old_news_head = "";
		}
		byte b[] = old_news_head.getBytes("ISO-8859-1");
		old_news_head = new String(b);

		String news_time = request.getParameter("news_time");
		if (news_time == null) {
			news_time = "";
		}
		b = news_time.getBytes("ISO-8859-1");
		news_time = new String(b);

		String news_content = request.getParameter("news_content");
		if (news_content == null) {
			news_content = "";
		}
		b = news_content.getBytes("ISO-8859-1");
		news_content = new String(b);

		String news_pub = request.getParameter("news_pub");
		if (news_pub == null) {
			news_pub = "";
		}
		b = news_pub.getBytes("ISO-8859-1");
		news_pub = new String(b);

		String news_sub = request.getParameter("news_sub");
		if (news_sub == null) {
			news_sub = "";
		}
		b = news_sub.getBytes("ISO-8859-1");
		news_sub = new String(b);
	%>

	<div class="add">
		<form action="Publish_Inform_Update_Result.jsp">
			<p>
				通知标题:<input type="text" placeholder=<%=old_news_head%>
					class="input_css" input_css name="news_head">
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