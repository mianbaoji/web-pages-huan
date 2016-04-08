<%@page import="com.bit.common.EnterpriseInfoTable"%>
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

<title>企业备案</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="CSS/All_city.css" />
<link rel="stylesheet" type="text/css" href="CSS/city_record.css" />
<script src="JS/home_sheng.js"></script>

</head>

<body id="back">
	<%
		EnterpriseInfoTable ent = (EnterpriseInfoTable) session
				.getAttribute("entReturnProQuery");
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
			<%
				//EnterpriseInfoTable ent = (EnterpriseInfoTable) iter.next();
			%>
			<tr class="table_size">
				<th width="250">企业ID</th>
				<td width="250"><%=ent.getCom_id()%></td>
			</tr>

			<tr class="table_size">
				<th width="250">企业名</th>
				<td width="250"><%=ent.getCom_name()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">企业地区</th>
				<td width="250"><%=ent.getCom_area()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">企业性质</th>
				<td width="250"><%
				if(ent.getCom_property().equals("1"))
				{
					out.print("国有企业");	
				}
				if(ent.getCom_property().equals("2"))
				{
					out.print("集体企业");	
				}
				if(ent.getCom_property().equals("3"))
				{
					out.print("联营企业");	
				}
				if(ent.getCom_property().equals("4"))
				{
					out.print("私营企业");	
				}
				if(ent.getCom_property().equals("5"))
				{
					out.print("个体户");	
				}
				
				
				%></td>
			</tr>
			<tr class="table_size">
				<th width="250">所属行业</th>
				<td width="250"><%
				if(ent.getCom_industry().equals("1"))
				{
					out.print("农、林、牧、渔业");
				}
				else if(ent.getCom_industry().equals("2"))
				{
					out.print("采矿业");
				}
				else if(ent.getCom_industry().equals("3"))
				{
					out.print("制造业");
				}
				else if(ent.getCom_industry().equals("4"))
				{
					out.print("电力、热力、燃气及水的生产和供应业");
				}
				else if(ent.getCom_industry().equals("5"))
				{
					out.print("环境和公共设施管理业");
				}
				else if(ent.getCom_industry().equals("6"))
				{
					out.print("建筑业");
				}
				else if(ent.getCom_industry().equals("7"))
				{
					out.print("交通运输、仓储业和邮政业");
				}
				else if(ent.getCom_industry().equals("8"))
				{
					out.print("信息传输、计算机服务和软件业");
				}
				else 
				{
					out.print("其他");	
				}
				%></td>
			</tr>
			<tr class="table_size">
				<th width="250">主要经营业务</th>
				<td width="250"><%=ent.getCom_business()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">联系人</th>
				<td width="250"><%=ent.getCom_people()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">地址</th>
				<td width="250"><%=ent.getCom_address()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">邮政编码</th>
				<td width="250"><%=ent.getCom_postalcode()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">电话</th>
				<td width="250"><%=ent.getCom_tel()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">传真</th>
				<td width="250"><%=ent.getCom_fax()%></td>
			</tr>
			<tr class="table_size">
				<th width="250">邮箱</th>
				<td width="250"><%=ent.getCom_email()%></td>
			</tr>

		</table>
	</div>
	<%
		session.removeAttribute("entReturnProQuery");
	%>
</body>
</html>
