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

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
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
	<br></br> 调查期:
	<select name="Begin_Year">
		<option selected="selected">请选择年份</option>
		<option>1975</option>
		<option>1976</option>
		<option>1977</option>
		<option>1978</option>
		<option>1979</option>
		<option>1980</option>
		<option>1981</option>
		<option>1982</option>
		<option>1983</option>
		<option>1984</option>
		<option>1985</option>
		<option>1986</option>
		<option>1987</option>
		<option>1988</option>
		<option>1989</option>
		<option>1990</option>
		<option>1991</option>
		<option>1992</option>
		<option>1993</option>
		<option>1994</option>
		<option>1995</option>
		<option>1996</option>
		<option>1997</option>
		<option>1998</option>
		<option>1999</option>
		<option>2000</option>
		<option>2001</option>
		<option>2002</option>
		<option>2003</option>
		<option>2004</option>
		<option>2005</option>
		<option>2006</option>
		<option>2007</option>
		<option>2008</option>
		<option>2009</option>
		<option>2010</option>
		<option>2011</option>
		<option>2012</option>
		<option>2013</option>
		<option>2014</option>
		<option>2015</option>
	</select>年
	<select name="Begin_Month">
		<option selected>请选择月份</option>
		<option>1</option>
		<option>2</option>
		<option>3</option>
		<option>4</option>
		<option>5</option>
		<option>6</option>
		<option>7</option>
		<option>8</option>
		<option>9</option>
		<option>10</option>
		<option>11</option>
		<option>12</option>
	</select>月
	<input type="submit" name="submit" value="检索">
	<br></br>
	<table border>
		<tr>
			<th width="100">企业名</th>
			<th width="100">地区</th>
			<th width="100">调查区</th>
		</tr>
		<tr>
			<!-- 这里的数据从数据库中调取 -->
		</tr>
	</table>
</body>
</html>
