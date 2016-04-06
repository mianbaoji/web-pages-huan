<%@page import="com.bit.common.PovinceDateQuery"%>
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
<title>省用户数据查询</title>
<link rel="stylesheet" type="text/css" href="../CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Data_Query.css" />
<script src="../JS/Data_Query.js"></script>
<script src="../JS/home_sheng.js"></script>
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
		<form onsubmit="check(this)">
			<p>
				企业名称:<input type="text" name="com_name" placeholder="企业名称"
					class="formstyle">
			</p>
			<p>
				所属地区: <input type="text" name="area" class="formstyle"
					placeholder="所属地区">
			</p>
			<p>
				企业性质:<select name="com_property" class="formstyle"
					style="width:200px">
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
				所属行业:<select name="com_industry" class="formstyle"
					style="width:330px">
					<option value="农、林、牧、渔业" selected="selected">农、林、牧、渔业</option>
					<option value="采矿业">采矿业</option>
					<option value="制造业">制造业</option>
					<option value="电力、热力、燃气及水的生产和供应业">电力、热力、燃气及水的生产和供应业</option>
					<option value="环境和公共设施管理业">环境和公共设施管理业</option>
					<option value="建筑业">建筑业</option>
					<option value="交通运输、仓储业和邮政业">交通运输、仓储业和邮政业</option>
					<option value="信息传输、计算机服务和软件业">信息传输、计算机服务和软件业</option>
					<option value="批发和零售业">批发和零售业</option>
					<option value="住宿、餐饮业">住宿、餐饮业</option>
					<option value="金融、保险业">金融、保险业</option>
					<option value="房地产业">房地产业</option>
					<option value="租赁和商务服务业">租赁和商务服务业</option>
					<option value="科学研究、技术服务和地质勘查业">科学研究、技术服务和地质勘查业</option>
					<option value="水利、环境和公共设施管理业">水利、环境和公共设施管理业</option>
					<option value="居民服务和其他服务业">居民服务和其他服务业</option>
					<option value="教育">教育</option>
					<option value="卫生、社会保障和社会服务业">卫生、社会保障和社会服务业</option>
					<option value="文化、体育、娱乐业">文化、体育、娱乐业</option>
					<option value="综合（含投资类、主业不明显）">综合（含投资类、主业不明显）</option>
					<option value="其它">其它</option>
				</select>
			</p>
			<p>
				统计月份:<select name="start_m" class="formstyle" style="width:50px">
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
				</select>到<select name="end_m" class="formstyle" style="width:50px">
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
				统计年份:<input type="text" name="start_y" placeholder="2000"
					class="formstyle" style="width:50px">到<input type="text"
					name="end_y" placeholder="2000" class="formstyle"
					style="width:50px">年<input type="submit" value="检索"
					class="formstyle"
					style="position:fixed;bottom:10%;right:10%;
					font-size:20px;width:365px;height:40px;color:white;
					background-color:#06c;border:1px solid #09F;margin:auto;">
			</p>
		</form>
	</div>

</body>

</html>