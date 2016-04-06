<%@page import="com.bit.common.userInfoTable"%>
<%@page import="com.bit.service.serviceOfPrince2"%>
<%@page import="com.bit.common.listManageTable"%>
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
<title>省用户用户管理</title>
<jsp:include page="../isLogin.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/System_Manage.css" />
<script src="JS/home_sheng.js"></script>
</head>

<body id="back">
	<%
		Iterator iter = null;
		List<userInfoTable> list_ent = new serviceOfPrince2()
				.queryAllCityUser();
		iter = list_ent.iterator();
	%>
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

	<div id="info2">
		<ul id="ultype_analysis">
			<li style="display:inline-block;width:320px;text-align:center"
				class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Sys_usermanage.jsp" class="indextype">用户管理</a></li>
			<li style="display:inline-block;width:320px;text-align:center"
				class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Sys_smanage.jsp" class="indextype">系统管理</a></li>
		</ul>
	</div>

	<div id="info3">
		<input type="submit" name="addNewCity" value="新建"> <br></br>
		<table border>
			<tr>
				<th width="250">市用户名</th>
				<th width="250">操作</th>
			</tr>
			<%
				int i = 0;
				while (iter.hasNext()) {
				
					userInfoTable user = (userInfoTable) iter.next();
					System.out.println("12313123123");
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