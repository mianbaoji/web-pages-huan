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
	
		old_news_head = new String(old_news_head.getBytes("ISO8859-1"), "utf-8");
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

		serviceOfProvince s = new serviceOfProvince();
		news_table n = new news_table();
		n.setNews_head(news_head);
		n.setNews_time(news_time);
		n.setNews_content(news_content);
		n.setNews_pub(news_pub);
		n.setNews_sub(news_sub);
		n.setNews_status("status");
	%>
	<div class="add">
		<%
			if (n.getNews_head().equals("")) {
				out.print("<p>请输入通知标题</p>");
			}
			if (n.getNews_time().equals("")) {
				out.print("<p>请输入通知发布时间</p>");
			}
			if (n.getNews_content().equals("")) {
				out.print("<p>请输入通知通知内容</p>");
			}
			if (n.getNews_pub().equals("")) {
				out.print("<p>请输入通知发布人</p>");
			}
			if (n.getNews_sub().equals("")) {
				out.print("<p>请输入通知接收人</p>");
			}
			if ((!n.getNews_head().equals(""))
					&& (!n.getNews_time().equals(""))
					&& (!n.getNews_content().equals(""))
					&& (!n.getNews_pub().equals(""))
					&& (!n.getNews_sub().equals(""))) {
				s.updatenews(n, old_news_head);
				out.print("<p>修改成功</p>");
			}
		%>
	</div>

	<div>
		<button name="button_return" onclick="window.close()"
			class="button_dealwithmessage"
			style='width:230px;height:40px;position:fixed;left:60%;bottom:12%;font-size:25px'>确定
		</button>
	</div>

</body>

</html>