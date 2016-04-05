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
<title>市用户</title>
<link rel="stylesheet" type="text/css" href="CSS/All_city.css" />
<link rel="stylesheet" type="text/css" href="CSS/city_dataanalysis.css" />
<script src="JS/home_sheng.js"></script>
<script src="JS/City_dataanalysis.js"></script>
</head>

<body id="back">

	<div id="first_navigation">
		<ul id="ultype">
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/home_city.jsp" class="indextype">首页</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/City_Record.jsp" class="indextype">企业备案</a></li>
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

	<div id="info">
		<ul id="ultype_analysis">
			<li style="display:inline-block;width:320px;text-align:center"
				class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/City_DataAnalysis_area.jsp" class="indextype">地区企业</a></li>
			<li style="display:inline-block;width:320px;text-align:center"
				class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="city/City_DataAnalysis_one.jsp" class="indextype">单独企业</a></li>
		</ul>
	</div>

	<div id="analysis_son">
		<form id="hhform" target="test">
			<p>
				调查期A:<input type="text" name="time_start" class="formcss">
			</p>
			<p>
				调查期B:<input type="text" name="time_end" class="formcss">
			</p>
			<p>
				地区: <select name="com_area" class="selectcss">
					<option value="" selected="selected"></option>
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
					<option value="聊城">聊城</option>s
				</select>
			</p>
			<p>
				企业性质: <select name="com_property" class="selectcss">
					<option value=""></option>
				</select>
			</p>
			<p>
				行业: <select name="com_industry" class="selectcss">
					<option value=""></option>
				</select>
			</p>
			<button id="submitcss" onclick="area_show()">显示</button>
		</form>
	</div>

</body>

</html>