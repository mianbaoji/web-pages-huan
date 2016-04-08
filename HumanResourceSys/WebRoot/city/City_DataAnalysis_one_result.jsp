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
<title>数据分析折线图</title>
<link rel="stylesheet" type="text/css" href="../CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="../CSS/Data_Analysis.css" />
<script src="../JS/home_sheng.js"></script>
<script src="../JS/Data_Analysis.js"></script>
<script src="../JS/Chart.js"></script>
</head>

<body>
<legend>在岗人员数</legend>
	<canvas id="canvas" height="400" width="400"
		style="width: 600px; height: 450px;">在岗人员数折线图</canvas>
		<br> 
	<div id="analysis_son">
		<%
			String a_year = request.getParameter("a_year");
			if (a_year == null) {
				a_year = "";
			}

			String a_month = request.getParameter("a_month");
			System.out.print(a_month);
			if (a_month == null) {
				a_month = "";
			}
			if (Integer.valueOf(a_month) < 10) {
				a_month = "0" + a_month;
			}

			String b_year = request.getParameter("b_year");
			if (b_year == null) {
				b_year = "";
			}

			String b_month = request.getParameter("b_month");
			if (b_month == null) {
				b_month = "";
			}
			if (Integer.valueOf(b_month) < 10) {
				b_month = "0" + b_month;
			}

			String com_area = request.getParameter("com_area");
			if (com_area == null) {
				com_area = "";
			}
			byte b[] = com_area.getBytes("utf-8");
			com_area = new String(com_area.getBytes("ISO8859-1"), "utf-8");

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
			name =  new String(name.getBytes("ISO8859-1"), "utf-8");

			serviceOfProvince s = new serviceOfProvince();
			ResultSet rs = s.onepeople_nowselect(a_year, a_month, b_year,
					b_month, name);
			String[] amount = new String[100];
			String[] date = new String[100];
			int n = 0;
			if (rs == null) {
		%>
		<script type="text/javascript">
			document.write("服务器错误！");
		</script>
		<%
			} else if (!rs.next()) {
		%>
		<script type="text/javascript">
			document.write("查询无结果！");
		</script>
		<%
			} else {

				while (true) {
					amount[n] = rs.getString("people_now");
					date[n] = rs.getString("time_id");
					n++;
					if (!rs.next()) {
						break;
					}

				}
			}
		%>
	</div>
	<script>
		var lineChartData = {
			labels:[<%for (int i = 0; i < n; i++) {				
				if (i == n - 1) {
					out.print("\"" + date[i] + "\"");
				} else {
					out.print("\"" + date[i] + "\",");
				}
			}%>,"" ],
			datasets : [ {
				fillColor : "rgba(151,187,205,0.5)",
					strokeColor : "rgba(151,187,205,1)",
					pointColor : "rgba(151,187,205,1)",
					pointStrokeColor : "#fff",
				data:[<%for (int i = 0; i < n; i++) {
				
				
				if (i == n - 1) {
					out.print( amount[i] );
					
				} else {
					out.print( amount[i] + ",");
				}
			}%> ]
			}]

		}

		var myLine = new Chart(document.getElementById("canvas").getContext(
				"2d")).Line(lineChartData, {
			bezierCurve : false,
			 scaleShowLabels : true,
			 	scaleOverride : true,
				 scaleSteps : 20,        //y轴刻度的个数
                scaleStepWidth : 20,   //y轴每个刻度的宽度
                scaleStartValue : 0,    //y轴的起始值
			     pointDot : true,
		
		}

		);
	</script>

</body>

</html>