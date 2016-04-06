<%@page import="com.bit.common.PovinceDateQuery"%>
<%@page import="com.bit.servlet.*"%>
<%@page import="com.bit.service.serviceOfPrince2"%>
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
<title>省用户管理</title>
<link rel="stylesheet" type="text/css" href="CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/Data_Query.css" />
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
	<%
		String user_id = (String) session.getAttribute("user");
		Boolean admin = new serviceOfPrince2().adminOrNot(user_id);
	%>
	<div id="info_other">
		<form action="servlet/newUserServlet">
			<%
				if (admin == true) {
			%>
			<p>
				用户类型:<select name="user_type" class="formstyle">
					<option selected="selected" value="province">省用户</option>
					<option value="city">市用户</option>
					<option value="enterprise">企业用户</option>
				</select>
			</p>
			<%
				} else {
			%>
			<p>
				用户类型:<select name="user_type" class="formstyle">
					<option selected="selected" value="city">市用户</option>
					<option value="enterprise">企业用户</option>
				</select>
			</p>
			<%
				}
			%>
			<p>
				用户名：<input type="text" name="user_id" class="formstyle"
					placeholder="用户名">
			</p>
			<p>
				密码：<input type="password" name="password" class="formstyle"
					placeholder="用户名">
			</p>
			<p>
				所属地区: <input type="text" name="user_city" class="formstyle"
					placeholder="市用户必填">
			</p>
			<%
				if (admin == true) {
			%>
			<p>
				用户权限:<select name="administor" class="formstyle">
					<option value="0" selected="selected">0</option>
					<option value="1">1</option>
				</select>
			</p>
			<%
				} else {
			%>
			用户权限:<select name="power" class="formstyle" disabled="disabled">
				<option value="0" selected="selected">0</option>
				<option value="1">1</option>
			</select>
			<%
				}
			%>
			<br>
			<input type="submit" name="create" value="创建">
		</form>
	</div>

</body>

</html>