<%@page import="com.bit.common.PovinceDateQuery"%>
<%@page import="com.bit.service.*"%>
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
<title>市用户数据查询</title>
<link rel="stylesheet" type="text/css" href="CSS/All_city.css" />
<link rel="stylesheet" type="text/css" href="CSS/city_dataquery.css" />
<script src="JS/City_dataquery.js"></script>
<script src="JS/home_sheng.js"></script>
</head>

<body id="back">

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
	<%
		String user_id = (String) session.getAttribute("user");
		String cityString = new serviceOfCity().queryCityString(user_id);
	%>
	<div id="info">
		<form onsubmit="check(this)">
			<p>
				企业名称:<input type="text" name="com_name" placeholder="企业名称"
					class="formstyle">
			</p>
			<p>
				所属地区: <input type="text" name="area" readonly="readonly" class="formstyle" value="<%=cityString%>">
			</p>
			<p>
				企业性质:<select name="com_property" class="formstyle">
					<option value="1" selected="selected">国有企业</option>
					<option value="2">集体企业</option>
					<option value="3">联营企业</option>
					<option value="4">私营企业</option>
					<option value="5">个体户</option>

				</select>
			</p>
			<p>
				所属行业:<select name="com_industry" class="formstyle">
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
				统计年份:<input type="text" name="start_y" placeholder="2000"
					class="formstyle">到<input type="text" name="end_y"
					placeholder="2000" class="formstyle">年<input type="submit"
					value="检索" class="formstyle"
					style="position:fixed;bottom:10%;right:10%;
					font-size:20px;width:365px;height:40px;color:white;
					background-color:#06c;border:1px solid #09F;margin:auto;">
			</p>
		</form>
	</div>

</body>

</html>