<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.bit.service.*"%>
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
				地区: <input class="formcss" type="text" readonly="readonly"
					name="com_area" value="<%=cityString%>">
			</p>
			<p>
				企业性质: <select name="com_property" class="selectcss"
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
				行业: <select name="com_industry" class="selectcss"
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
			<button id="submitcss" onclick="area_show()">显示</button>
		</form>
	</div>

</body>

</html>