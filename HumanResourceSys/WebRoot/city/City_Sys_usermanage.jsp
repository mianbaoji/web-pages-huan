<%@page import="com.bit.service.serviceOfCity"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.bit.common.userInfoTable"%>
<%@page import="com.bit.common.listManageTable"%>
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
<link rel="stylesheet" type="text/css" href="CSS/city_systemmanage.css" />
<script src="JS/home_sheng.js"></script>
</head>

<body id="back">
	<%
		Iterator iter = null;
		String com_id = (String) session.getAttribute("user");
		List<userInfoTable> list_ent = new serviceOfCity()
				.queryAllEntUser(com_id);
		iter = list_ent.iterator();
	%>
	<div id="first_navigation">
		<ul id="ultype">
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="city/home_city.jsp"
				class="indextype">首页</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="city/City_Record.jsp"
				class="indextype">企业备案</a></li>
			<!-- <li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/#" class="indextype">企业查询</a></li> -->
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/City_ListManage.jsp" class="indextype">报表管理</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/City_DataQuery.jsp" class="indextype">数据查询</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/City_DataAnalysis.jsp" class="indextype">数据分析</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/City_PublishInform.jsp" class="indextype">发布通知</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/City_SystemManage.jsp" class="indextype">系统管理</a></li>
		</ul>
	</div>

	<div id="info2">
		<ul id="ultype_analysis">
			<li style="display:inline-block;width:320px;text-align:center"
				class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/City_Sys_usermanage.jsp" class="indextype">用户管理</a></li>
			<li style="display:inline-block;width:320px;text-align:center"
				class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/City_Sys_smanage.jsp" class="indextype">系统管理</a></li>
		</ul>
	</div>
	<div id="info3">
		<input type="submit" name="addNewEnt" value="新建"> <br></br>
		<table border>
			<tr>
				<th width="250">企业用户名</th>
				<th width="250">操作</th>
			</tr>
			<%
				int i = 0;
				while (iter.hasNext()) {

					userInfoTable user = (userInfoTable) iter.next();
			%>
			<tr>
				<td width="250"><%=user.getUser_id()%></td>
				<td><a
					href="servlet/ProDeleteCityUser?user_id=<%=user.getUser_id()%>">删除</a></td>
			</tr>
			<%
				i++;
				}
			%>
		</table>
	</div>
</body>

</html>