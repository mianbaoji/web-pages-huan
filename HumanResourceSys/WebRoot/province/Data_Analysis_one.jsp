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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>省用户首页</title>
<link rel="stylesheet" type="text/css" href="../CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Data_Analysis.css" />
<script src="../JS/home_sheng.js"></script>
<script src="../JS/Data_Analysis.js"></script>
</head>

<body id="back">

	<div id="first_navigation">
		<ul id="ultype">
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">首页</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">企业备案</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">企业查询</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="home_sheng.jsp"
				class="indextype">报表管理</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="Data_Query.jsp"
				class="indextype">数据查询</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="Data_Analysis.jsp"
				class="indextype">数据分析</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="Publish_Inform.jsp"
				class="indextype">发布通知</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="System_Manage.jsp"
				class="indextype">系统管理</a></li>
		</ul>
	</div>

	<div id="info">
		<ul id="ultype_analysis">
			<li style="display:inline-block;width:320px;text-align:center"
				class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="Data_Analysis_area.jsp" class="indextype">地区企业</a></li>
			<li style="display:inline-block;width:320px;text-align:center"
				class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="Data_Analysis_one.jsp"
				class="indextype">单独企业</a></li>
		</ul>
	</div>

	<div id="analysis_son">
		<form id="hhform" target="test">
			<p>
				调查期A:<input type="text" name="time_start" class="formcss"
					style="width:250px">
			</p>
			<p>
				调查期B:<input type="text" name="time_end" class="formcss"
					style="width:250px">
			</p>
			<p>
				企业名称:<input type="text" name="name" class="formcss"
					style="width:240px">
			</p>
			<p>
				企业性质:<select name="com_property" class="selectcss"
					style="width:240px">
					<option value="国有企业" selected="selected">国有企业</option>
					<option value="集体企业">集体企业</option>
					<option value="联营企业">联营企业</option>
					<option value="股份合作制企业">股份合作制企业</option>
					<option value="私营企业">私营企业</option>
					<option value="个体户">个体户</option>
					<option value="合伙企业">合伙企业</option>
					<option value="有限责任公司">有限责任公司</option>
				</select>
			</p>
			<p>
				企业所属地区: <select name="com_area" class="selectcss"
					style="width:170px">
					<option value=""></option>
				</select>
			</p>
			<button id="submitcss" onclick="one_show()">显示</button>
		</form>
	</div>

</body>

</html>