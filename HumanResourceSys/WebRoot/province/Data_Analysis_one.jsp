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
<title>省用户首页</title>
<link rel="stylesheet" type="text/css" href="CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/Data_Analysis.css" />
<script src="JS/home_sheng.js"></script>
<script src="JS/Data_Analysis.js"></script>
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
		<ul id="ultype_analysis">
			<li style="display:inline-block;width:320px;text-align:center"
				class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Data_Analysis_area.jsp" class="indextype">地区企业</a></li>
			<li style="display:inline-block;width:320px;text-align:center"
				class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a href="province/Data_Analysis_one.jsp"
				class="indextype">单独企业</a></li>
		</ul>
	</div>

	<div id="analysis_son">
		<form id="hhform" target="test">
			<p>
				调查期A:<select id="a_year" name="a_year"></select>年 <select
				id="a_month" name="a_month" ></select>月 
			<script type="text/javascript">
				var selYear = window.document.getElementById("a_year");
				var selMonth = window.document.getElementById("a_month");
				var selDay = window.document.getElementById("a_day");
				// 新建一个DateSelector类的实例，将三个select对象传进去
				new DateSelector(selYear, selMonth, selDay);
				
				// var dt = new Date(2004, 1, 29);
				// new DateSelector(selYear, selMonth ,selDay, dt);
			</script>
			</p>
			<p>
				调查期B:<!-- <input type="text" name="time_end" class="formcss"
					style="width:250px"> -->
					<select id="b_year" name="b_year"></select>年 <select
				id="b_month" name="b_month" ></select>月 
			<script type="text/javascript">
				var selYear = window.document.getElementById("b_year");
				var selMonth = window.document.getElementById("b_month");
		 		var selDay = window.document.getElementById("b_day"); 
				// 新建一个DateSelector类的实例，将三个select对象传进去
				new DateSelector(selYear, selMonth, selDay);
				
				// var dt = new Date(2004, 1, 29);
				// new DateSelector(selYear, selMonth ,selDay, dt);
			</script>
			</p>
			<p>
				企业名称:<input type="text" name="name" class="formcss"
					style="width:240px">
			</p>
			<p>
				企业性质:<select name="com_property" class="selectcss"
					style="width:240px">
					<option value="1" selected="selected">国有企业</option>
					<option value="2">集体企业</option>
					<option value="3">联营企业</option>
					<option value="4">私营企业</option>
					<option value="5">个体户</option>
			
				</select>
			</p>
			<p>
				企业所属地区: <select name="com_area" class="selectcss">
					<option value=" " selected="selected"></option>
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
				</select>
			</p>
			<button id="submitcss" onclick="one_show()">显示</button>
		</form>
	</div>

</body>

</html>