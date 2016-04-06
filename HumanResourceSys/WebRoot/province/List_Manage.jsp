<%@page import="com.bit.common.listManageTable"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.bit.common.EnterpriseInfoTable"%>
<%@page import="com.bit.service.serviceOfPrince2"%>
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

<title>报表管理</title>
<jsp:include page="../isLogin.jsp"></jsp:include>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="CSS/enterprise_sheng.css">
<link rel="stylesheet" type="text/css" href="CSS/home_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/list_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/All.css" />
<script src="JS/home_sheng.js"></script>

</head>

<body id="back">
	<%
		Iterator iter = null;
		if (session.getAttribute("flag_ListProQueryEnt") == "1") {
			List<listManageTable> enter_List = (List) session
					.getAttribute("listManageInfoList");
			iter = enter_List.iterator();
		} else {
			List<listManageTable> enter_List = new serviceOfPrince2()
					.queryAllEnterpriseListManage();
			iter = enter_List.iterator();
		}
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
	<form action="servlet/ProQueryReportServlet">
		<div id="list_query">
			企业名称：<input type="text" name="com_name"></input> 企业ID：<input
				type="text" name="com_id"></input> 申报时间：<select name="com_year"
				class="checkbox">
				<option value="1975">1975</option>
				<option value="1976">1976</option>
				<option value="1977">1977</option>
				<option value="1978">1978</option>
				<option value="1979">1979</option>
				<option value="1980">1980</option>
				<option value="1981">1981</option>
				<option value="1982">1982</option>
				<option value="1983">1983</option>
				<option value="1984">1984</option>
				<option value="1985">1985</option>
				<option value="1986">1986</option>
				<option value="1987">1987</option>
				<option value="1988">1988</option>
				<option value="1989">1989</option>
				<option value="1990">1990</option>
				<option value="1991">1991</option>
				<option value="1992">1992</option>
				<option value="1993">1993</option>
				<option value="1994">1994</option>
				<option value="1995">1995</option>
				<option value="1996">1996</option>
				<option value="1997">1997</option>
				<option value="1998">1998</option>
				<option value="1999">1999</option>
				<option value="2000">2000</option>
				<option value="2001">2001</option>
				<option value="2002">2002</option>
				<option value="2003">2003</option>
				<option value="2004">2004</option>
				<option value="2005">2005</option>
				<option value="2006">2006</option>
				<option value="2007">2007</option>
				<option value="2008">2008</option>
				<option value="2009">2009</option>
				<option value="2010">2010</option>
				<option value="2011">2011</option>
				<option value="2012">2012</option>
				<option value="2013">2013</option>
				<option value="2014">2014</option>
				<option value="2015">2015</option>
				<option selected="selected">2016</option>
			</select>年 <select name="com_month" class="checkbox">
				<option selected="selected" value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
			</select>月 <input type="submit" name="search" value="检索"> <br></br>
			<table border>
				<tr class="table_size">
					<th width="200">企业名</th>
					<th width="200">地区</th>
					<th width="200">调查期</th>
					<th width="200">操作</th>
				</tr>
				<%
					int i = 0;
					while (iter.hasNext()) {
						listManageTable ent = (listManageTable) iter.next();
				%>
				<tr>
					<!-- 这里的数据从数据库中调取 -->
					<td width="200"><%=ent.getCom_name()%></td>
					<td width="200"><%=ent.getCom_area()%></td>
					<td width="200"><%=ent.getTime_year()%>年<%=ent.getTime_month()%>月</td>
					<td width="200"><a href="servlet/ProPutRecordServlet?table_id=<%=ent.getTable_id()%>">查看详情</a><a> </a><a
						href="servlet/ProBackReportServlet?table_id=<%=ent.getTable_id()%>">退回</a></td>
				</tr>
				<%
					i++;
					}
					session.removeAttribute("flag_ListProQueryEnt");
					session.removeAttribute("enterpriseInfoList");
				%>
			</table>
		</div>
	</form>
</body>
</html>
