<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'List_Manage_Back.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="CSS/enterprise_sheng.css">
<link rel="stylesheet" type="text/css" href="CSS/home_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/list_sheng.css" />
<script src="JS/home_sheng.js"></script>

  </head>
  
  <body id="back">
    <div id="first_navigation">
		<ul id="ultype">
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">首页</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="Enterprise_Record.jsp"
				class="indextype">企业备案</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="Enterprise_Query.jsp"
				class="indextype">企业查询</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="List_Manage.jsp"
				class="indextype">报表管理</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">数据查询</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">数据分析</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">发布通知</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">系统管理</a></li>
		</ul>
	</div>
	<div id="second_navigation1">
		<ul id="ultype0">
			<li class="liheight0" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="List_Manage_Query.jsp"
				class="indextype0">信息查询</a></li>
		</ul>
	</div>
	<div id="forth_navigation1">
		<ul id="ultype0">
			<li class="liheight0" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="List_Manage_Change.jsp"
				class="indextype0">数据修改</a></li>
		</ul>
	</div>
	<div id="third_navigation1">
		<ul id="ultype0">
			<li class="liheight0" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="List_Manage_Delete.jsp"
				class="indextype0">数据删除</a></li>
		</ul>
	</div>
	<div id="fifth_navigation1">
		<ul id="ultype0">
			<li class="liheight0" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="List_Manage_Back.jsp"
				class="indextype0">数据返回</a></li>
		</ul>
	</div>
  </body>
</html>
