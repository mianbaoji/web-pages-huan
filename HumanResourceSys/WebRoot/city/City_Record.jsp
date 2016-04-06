<%@page import="java.sql.ResultSet"%>
<%@page import="com.bit.common.EnterpriseInfoTable"%>
<%@page import="com.bit.servlet.loginServlet"%>
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
		String user_id = (String) session.getAttribute("user");
		Iterator iter = null;
		//		  if (session.getAttribute("flag_ProQueryEnt") == "1") {
		//			List<EnterpriseInfoTable> enter_List = (List) session
		//					.getAttribute("enterpriseInfoList");
		//			iter = enter_List.iterator();
		//		} else {
		List<EnterpriseInfoTable> enter_List = new serviceOfCity()
				.queryRecordForCity(user_id);
		iter = enter_List.iterator();
		//		}
		//Iterator iter = enter_List.iterator();
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
	<!-- 
	<form action="servlet/ProQueryEnterpriseServlet">
		<div id="enter_query">
			<br></br> 地区: <select name="area">
				<option selected="selected">请选择</option>
				<option value="济南">济南</option>
				<option value="青岛">青岛</option>
				<option value="淄博">淄博</option>
				<option value="德州">德州</option>
				<option value="烟台">烟台</option>
				<option value="潍坊">潍坊</option>
				<option value="济宁">济宁</option>
				<option value="泰安">泰安</option>
				<option value="临沂">临沂</option>
				<option value="菏泽">菏泽</option>
				<option value="滨州">滨州</option>
				<option value="东营">东营</option>
				<option value="威海">威海</option>
				<option value="枣庄">枣庄</option>
				<option value="日照">日照</option>
				<option value="莱芜">莱芜</option>
				<option value="聊城">聊城</option>
				<input type="submit" name="search" value="检索">
	</form>
	<input type="button" name="output" value="导出">
	 -->
	<br></br>
	<table border>
		<tr class="table_size">
			<th width="250">企业名</th>
			<th width="250">地区</th>
			<th width="250">操作</th>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				EnterpriseInfoTable ent = (EnterpriseInfoTable) iter.next();
				//System.out.println("##########"+ent.getCom_area()+"-----------"+ent.getCom_id());
		%>
		<tr>
			<td width="250"><%=ent.getCom_name()%></td>
			<td width="250"><%=ent.getCom_area()%></td>
			<td width="250"><a
				href="servlet/cityQueryEnterpriseServletById?Com_id=<%=ent.getCom_id()%>">查看详情</a></td>
		</tr>
		<%
			i++;
			}
		%>
	</table>
	</div>

</body>
</html>
