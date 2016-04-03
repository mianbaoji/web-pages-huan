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

<title>报表管理</title>

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
				onmouseout="removeBorder(this)"><a
				href="province/home_sheng.jsp" class="indextype">首页</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Enterprise_Record.jsp" class="indextype">企业备案</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Enterprise_Query.jsp" class="indextype">企业查询</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/List_Manage.jsp" class="indextype">报表管理</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/home_sheng.jsp" class="indextype">数据查询</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/home_sheng.jsp" class="indextype">数据分析</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/home_sheng.jsp" class="indextype">发布通知</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/home_sheng.jsp" class="indextype">系统管理</a></li>
		</ul>
	</div>
	<!-- 
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
	 -->
	<div id="list_query">
		企业名称：<input type="text" name="enterP_name"></input> 企业ID：<input
			type="text" name="enterP_id"></input> 申报时间：<select name="Begin_Year"
			class="checkbox">
			<option>1975</option>
			<option>1976</option>
			<option>1977</option>
			<option>1978</option>
			<option>1979</option>
			<option>1980</option>
			<option>1981</option>
			<option>1982</option>
			<option>1983</option>
			<option>1984</option>
			<option>1985</option>
			<option>1986</option>
			<option>1987</option>
			<option>1988</option>
			<option>1989</option>
			<option>1990</option>
			<option>1991</option>
			<option>1992</option>
			<option>1993</option>
			<option>1994</option>
			<option>1995</option>
			<option>1996</option>
			<option>1997</option>
			<option>1998</option>
			<option>1999</option>
			<option>2000</option>
			<option>2001</option>
			<option>2002</option>
			<option>2003</option>
			<option>2004</option>
			<option>2005</option>
			<option>2006</option>
			<option>2007</option>
			<option>2008</option>
			<option>2009</option>
			<option>2010</option>
			<option>2011</option>
			<option>2012</option>
			<option>2013</option>
			<option>2014</option>
			<option>2015</option>
			<option selected="selected">2016</option>
		</select>年 <select name="Begin_Month" class="checkbox">
			<option selected="selected">1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9</option>
			<option>10</option>
			<option>11</option>
			<option>12</option>
		</select>月 <input type="submit" name="search" value="检索"> <br></br>
		<table border>
			<tr class="table_size">
				<th width="150">企业名</th>
				<th width="150">地区</th>
				<th width="200">调查区</th>
				<th width="200">操作</th>
			</tr>
			<tr>

				<!-- 这里的数据从数据库中调取 -->
			</tr>
		</table>
	</div>
</body>
</html>
