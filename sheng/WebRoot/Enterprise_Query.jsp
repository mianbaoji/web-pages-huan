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

<title>My JSP 'Enterprise_Query.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- 
	<link rel="stylesheet" type="text/css" href="CSS/Enterprise_Query_CSS.css">
	 -->

</head>

<body>
	This is Query JSP page.
	<br></br> 地区:
	<select>
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
	</select>
	<br></br>
	<select name="">
		<option selected="selected">请选择</option>
	</select>
	<select name="">
		<option selected>请选择</option>
	</select>
	<input type="submit" name="submit" value="检索">
	<br></br>
	<table border>
		<tr>
			<th width="100">企业名</th>
			<th width="100">地区</th>
			<th width="120">组织机构代码</th>
		</tr>
		<tr>
			<!-- 这里的数据从数据库中调取 -->
		</tr>
	</table>
</body>
</html>
