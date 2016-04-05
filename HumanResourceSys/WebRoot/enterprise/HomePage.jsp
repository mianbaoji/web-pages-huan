<%@page import="com.bit.service.serviceOfEnterprise"%>
<%@page import="com.bit.common.news_table"%>

<%@page import=" java.sql.ResultSet"%>
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
<link rel="stylesheet" type="text/css" href="CSS/Nav.css" />
<link rel="stylesheet" type="text/css" href="CSS/All.css" />
<link rel="stylesheet" type="text/css" href="CSS/Enterprise.css" />
<title>首页</title>
<!-- <script type="text/javascript" src="JS/information.js"></script> -->
<jsp:include page="../isLogin.jsp"></jsp:include>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body  class="background">
	<nav>
	<div id="nav">
		<ul>
			<li><a href="enterprise/HomePage.jsp">首页</a></li>
			<li><a href="enterprise/EnterpriseInfo.jsp">企业信息</a></li>
			<li><a href="enterprise/Report.jsp">数据填报</a></li>
			<li><a href="enterprise/Inquire.jsp">数据查询</a></li>
			<div id="exit">
				<a href="enterExit.jsp">注销</a>
			</div>
		</ul>
	</div>
	<%
		String com_id = (String) session.getAttribute("user");
		ResultSet rs = new com.bit.service.serviceOfEnterprise()
				.queryNotice(com_id);
		news_table News[];
		
				%>

				<script>
				var message_data="hello";
			function info() {
				/* if (document.getElementById("information")) {
				 */
						document.getElementById("information").innerHTML = information_data;

					
				
			}

			
			function infoDisplay(content) {
				document.getElementById("information").innerHTML = content.name+"124";
			}
			
		</script> <%
 	
 %>

	<div class="box" id="home_page">
		<a>通知公告:</a>
		<div  id="information">
		<%
		if (rs != null) {

				while (true) {
					String news_head = rs.getString("news_head");
					String news_time = rs.getString("news_time");
					String news_content = rs.getString("news_content");
					String news_pub = rs.getString("news_pub");
					String news_status = rs.getString("news_status");
					out.print("<a  name=\""+news_content+"\" id=\"1\" onclick=\"infoDisplay(this)\"  >" + news_time
							+ "  " + news_head + "</a>");
					if (!rs.next()) {
						break;
					}
				}
				}
				 %>
		<script>
		
		</script>
		</div>
		
	</div>
</body>
</html>
