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

<title>My JSP 'Main_Left.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="CSS/All.css">


</head>

<body  class="background">
	<a href="" target="Main_Right">首页</a>
	<br>
	<a href="Province/Enterprise_Record.jsp" target="Main_Right">企业备案</a>
	<br>
	<a href="Province/Enterprise_Query.jsp" target="Main_Right">企业查询</a>
	<br>
	<a href="Province/List_Manage.jsp" target="Main_Right">报表管理</a>
	<br>
	<a href="Province/Data_Query.jsp" target="Main_Right">数据查询</a>
	<br>
	<a href="Province/Data_Analysis.jsp" target="Main_Right">数据分析</a>
	<br>
	<a href="Province/Publish_Inform.jsp" target="Main_Right">发布通知</a>
	<br>
	<a href="Province/System_Manage.jsp" target="Main_Right">系统管理</a>
	<br>
</body>
</html>
