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

<title>企业查询界面</title>
<jsp:include page="../isLogin.jsp"></jsp:include>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="CSS/home_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/enterprise_sheng.css" />
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
	<div id="enter_query">
		<br></br>地区:<select>
			<option selected="selected">请选择</option>
			<option>济南</option>
			<option>青岛</option>
			<option>淄博</option>
			<option>德州</option>
			<option>烟台</option>
			<option>潍坊</option>
			<option>济宁</option>
			<option>泰安</option>
			<option>临沂</option>
			<option>菏泽</option>
			<option>滨州</option>
			<option>东营</option>
			<option>威海</option>
			<option>枣庄</option>
			<option>日照</option>
			<option>莱芜</option>
			<option>聊城</option>
		</select> <input type="submit" name="searchEnter" value="检索"> <br></br>
		<table border>
			<tr class="table_size">
				<th width="150">企业名</th>
				<th width="150">地区</th>
				<th width="200">组织机构代码</th>
			</tr>
			<tr>
				<!-- 这里的数据从数据库中调取 -->
			</tr>
		</table>
	</div>
</body>
</html>
