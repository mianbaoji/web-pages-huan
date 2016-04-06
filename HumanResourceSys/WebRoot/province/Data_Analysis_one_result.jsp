<%@page import="com.bit.common.news_table"%>
<%@page import="java.sql.ResultSet"%>
<%@ page import="com.bit.service.serviceOfProvince"%>
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
<canvas id="canvas" height="900" width="1200" style="width: 600px; height: 450px;"></canvas>
	<div id="analysis_son">
		<%
			String time_start = request.getParameter("time_start");
			if (time_start == null) {
				time_start = "";
			}
			byte b[] = time_start.getBytes("utf-8");
			time_start = new String(b);

			String time_end = request.getParameter("time_end");
			if (time_end == null) {
				time_end = "";
			}
			b = time_end.getBytes("utf-8");
			time_end = new String(b);

			String com_area = request.getParameter("com_area");
			if (com_area == null) {
				com_area = "";
			}
			b = com_area.getBytes("utf-8");
			com_area = new String(b);

			String com_property = request.getParameter("com_property");
			if (com_property == null) {
				com_property = "";
			}
			b = com_property.getBytes("utf-8");
			com_property = new String(b);

			String name = request.getParameter("name");
			if (name == null) {
				name = "";
			}
			b = name.getBytes("utf-8");
			name = new String(b);

			serviceOfProvince s = new serviceOfProvince();
		%>
	</div>
<script>

		var lineChartData = {
			labels : ["January","February","March","April","May","June","July"],
			datasets : [
				{
					fillColor : "rgba(220,220,220,0.5)",
					strokeColor : "rgba(220,220,220,1)",
					pointColor : "rgba(220,220,220,1)",
					pointStrokeColor : "#fff",
					data : [65,59,90,81,56,55,40]
				},
				{
					fillColor : "rgba(151,187,205,0.5)",
					strokeColor : "rgba(151,187,205,1)",
					pointColor : "rgba(151,187,205,1)",
					pointStrokeColor : "#fff",
					data : [28,48,40,19,96,27,100]
				}
			]
			
		}

	var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Line(lineChartData,{
	bezierCurve : false
	}
	
	);
	
	</script>
</body>

</html>