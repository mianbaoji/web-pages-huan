<%@page import="com.bit.common.listManageTable"%>
<%@page import="com.bit.service.serviceOfPrince2"%>
<%@page import="com.bit.service.serviceOfCity"%>
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

<title>市用户报表管理</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="CSS/All_city.css" />
<link rel="stylesheet" type="text/css" href="CSS/list_city.css" />
<link rel="stylesheet" type="text/css" href="CSS/enterprise_sheng.css" />
<script src="JS/home_sheng.js"></script>

</head>

<body id="back">
	<%
		listManageTable list_ent = (listManageTable) session
				.getAttribute("cityInfoList");
				System.out.print(list_ent);
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
	<div id="enter_query">
		<br></br>
		<table border>
			<tr class="table_size">
				<th width="250">企业ID</th>
				<td width="250"><%out.print(list_ent.getCom_id());%></td>
			</tr>
			<tr class="table_size">
				<th width="250">企业名</th>
				<td width="250"><%=list_ent.getCom_name()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">企业地区</th>
				<td width="250"><%=list_ent.getCom_area()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">建档期就业人数</th>
				<td width="250"><%=list_ent.getPeople_ago()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">调查期就业人数</th>
				<td width="250"><%=list_ent.getPeople_now()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">其他原因</th>
				<td width="250"><%=list_ent.getOther_reason()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">就业人数减少类型</th>
				<td width="250"><%=list_ent.getType()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">主要原因</th>
				<td width="250"><%=list_ent.getReason_1()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">主要原因说明</th>
				<td width="250"><%=list_ent.getExplain_1()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">次要原因</th>
				<td width="250"><%=list_ent.getReason_2()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">次要原因说明</th>
				<td width="250"><%=list_ent.getExplain_2()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">第三原因</th>
				<td width="250"><%=list_ent.getReason_3()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">第三原因说明</th>
				<td width="250"><%=list_ent.getExplain_3()%></td>
			</tr>

		</table>
	</div>
	<%
		/* session.removeAttribute("cityInfoList");
 */	%>
</body>
</html>
