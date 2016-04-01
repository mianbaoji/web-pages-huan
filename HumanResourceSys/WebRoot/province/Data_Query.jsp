<%@page import="com.bit.common.ProvinceDataQuery"%>
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
<title>省用户数据查询</title>
<jsp:include page="../isLogin.jsp"></jsp:include>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/Data_Query.css" />
<script src="JS/Data_Query.js"></script>
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

	<div id="info">
		<form action="" onsubmit="check(this)" method="get">
			<p>
				企业名称:<input type="text" name="com_name" placeholder="企业名称"
					class="formstyle">
			</p>
			<p>
				所属地区: <input type="text" name="area" class="formstyle"
					placeholder="所属地区">
			</p>
			<p>
				企业性质:<select name="com_property" class="formstyle">
					<option value="">hhhhh</option>
				</select>
			</p>
			<p>
				所属行业:<select name="com_industry" class="formstyle">
					<option value="">hhhhh</option>
				</select>
			</p>
			<p>
				统计月份:<select name="start_m" class="formstyle">
					<option value="1" selected="selected">1</option>
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
				</select>到<select name="end_m" class="formstyle">
					<option value="1" selected="selected">1</option>
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
				</select>月
			</p>
			<p>
				统计年份:<input type="text" name="start_y" class="formstyle">到<input
					type="text" name="end_y" class="formstyle">年<input
					type="submit" value="检索" class="formstyle"
					style="position:fixed;bottom:5%;right:3%;
					font-size:20px;width:365px;height:40px;color:white;
					background-color:#06c;border:1px solid #09F;margin:auto;">
			</p>
		</form>
	</div>

</body>

</html>