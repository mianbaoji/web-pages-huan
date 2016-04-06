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
					<option value=""></option>
				</select>
			</p>
			<p>
				企业性质: <select name="com_property" class="selectcss"
					style="width:200px">
					<option value="1" selected="selected">国有企业</option>
					<option value="2">集体企业</option>
					<option value="3">联营企业</option>
					<option value="4">私营企业</option>
					<option value="5">个体户</option>
				</select>
			</p>
			<p>
				行业: <select name="com_industry" class="selectcss"
					style="width:330px">
					<option value="1" selected="selected">农、林、牧、渔业</option>
					<option value="2">采矿业</option>
					<option value="3">制造业</option>
					<option value="4">电力、热力、燃气及水的生产和供应业</option>
					<option value="5">环境和公共设施管理业</option>
					<option value="6">建筑业</option>
					<option value="7">交通运输、仓储业和邮政业</option>
					<option value="8">信息传输、计算机服务和软件业</option>
					<option value="9">批发和零售业</option>
					<option value="10">住宿、餐饮业</option>
					<option value="11">金融、保险业</option>
					<option value="12">房地产业</option>
					<option value="13">租赁和商务服务业</option>
					<option value="14">科学研究、技术服务和地质勘查业</option>
					<option value="15">水利、环境和公共设施管理业</option>
					<option value="16">居民服务和其他服务业</option>
					<option value="17">教育</option>
					<option value="18">卫生、社会保障和社会服务业</option>
					<option value="19">文化、体育、娱乐业</option>
					<option value="20">综合（含投资类、主业不明显）</option>
					<option value="21">其它</option>
				</select>
			</p>
			<button id="submitcss" onclick="area_show()">显示</button>
		</form>
	</div>

</body>

</html>