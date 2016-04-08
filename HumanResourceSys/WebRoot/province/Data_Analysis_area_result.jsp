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
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据分析折线图</title>
<link rel="stylesheet" type="text/css" href="CSS/All_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/Data_Analysis.css" />
<script src="JS/home_sheng.js"></script>
<script src="JS/Data_Analysis.js"></script>
<script src="JS/Chart.js"></script>
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

			com_area = new String(com_area.getBytes("ISO8859-1"), "utf-8");

			String com_property = request.getParameter("com_property");
			if (com_property == null) {
				com_property = "";
			}

			com_property = new String(com_property.getBytes("ISO8859-1"),
					"utf-8");

			String com_industry = request.getParameter("com_industry");
			if (com_industry == null) {
				com_industry = "";
			}

			com_industry = new String(com_industry.getBytes("ISO8859-1"),
					"utf-8");

			serviceOfProvince s = new serviceOfProvince();
			ResultSet rs = s.areaEnterpriseSelect(a_year, a_month, b_year,
					b_month, com_area, com_property, com_industry);
			String[][][] data = new String[100][2][100];
			int n = 0;
			int m=0;
			int amount_enter = 0;
			String com_id;
			boolean flag = false;//标记是否所有数据都导入数组了
			String[] flag1=new String[100];
			boolean flag2 = false;//标记是否为同一企业
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
			
				com_id = rs.getString("com_id");
				while (true) {
				System.out.println("0");
					if (flag1[m] != "false") {
						if (!flag2) {
						System.out.println("01");
							com_id = rs.getString("com_id");
							System.out.println(com_id);
							flag2 = true;
						}
						if (com_id.equals( rs.getString("com_id"))) {
						  
							data[amount_enter][0][n] = rs.getString("time_id");
							data[amount_enter][1][n] = rs.getString("people_now");
							System.out.println(data[amount_enter][1][n]);	
							flag1[m]="false";
							n++;
							flag = true;
						}
					}
					m++;
					if (!rs.next()) {
						
						data[amount_enter][0][n] = "-1";
						data[amount_enter][1][n] = "-1";
						m=0;

						System.out.println("1");	
						if (!flag) {	
						System.out.println("2");	
							break;
						}
						amount_enter++;
						n = 0;
						flag = false;
						flag2 = false;
						rs.first();
					}

				}
			}
		%>
	</div>
	<script>
		var lineChartData = {
			labels : [<%n = 0;
			while (data[0][0][n] != "-1") {
			System.out.println("data[0][0][n]");
				if (n == 0) {
					out.print("\""+data[0][0][n]+"\"");
				} else {
					out.print(",\""+data[0][0][n]+"\"");
				}
				
				n++;
				if(n==100)
				{break;}
			}%>
					," " ],
					
			datasets : [ 
			<%for (int i = 0; i < amount_enter; i++) {%>
			
			{
				label: "name1",
				fillColor : "rgba(151,187,205,0.5)",
				strokeColor : "rgba(151,187,205,1)",
				pointColor : "rgba(151,187,205,1)",
				pointStrokeColor : "#fff",
				data : [<%n = 0;
				while (data[i][1][n] != "-1") {
					if (n==0) {
						out.print(data[i][1][n]);
					} else {
						out.print(","+data[i][1][n]);
					}
					System.out.println(n==0);
					n++;
				}%>]
			}, 
			<%}%>
			]

		}

		var myLine = new Chart(document.getElementById("canvas").getContext(
				"2d")).Line(lineChartData, {
			 ///Boolean - Whether grid lines are shown across the chart
    scaleShowGridLines : true,

    //String - Colour of the grid lines
    scaleGridLineColor : "rgba(0,0,0,.05)",

    //Number - Width of the grid lines
    scaleGridLineWidth : 1,

    //Boolean - Whether to show horizontal lines (except X axis)
    scaleShowHorizontalLines: true,

    //Boolean - Whether to show vertical lines (except Y axis)
    scaleShowVerticalLines: true,

    //Boolean - Whether the line is curved between points
    bezierCurve : false,

    //Number - Tension of the bezier curve between points
    bezierCurveTension : 0.4,

    //Boolean - Whether to show a dot for each point
    pointDot : true,

    //Number - Radius of each point dot in pixels
    pointDotRadius : 4,

    //Number - Pixel width of point dot stroke
    pointDotStrokeWidth : 1,

    //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
    pointHitDetectionRadius : 20,

    //Boolean - Whether to show a stroke for datasets
    datasetStroke : true,

    //Number - Pixel width of dataset stroke
    datasetStrokeWidth : 2,

    //Boolean - Whether to fill the dataset with a colour
    datasetFill : true,

    //String - A legend template
   <%--  legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].strokeColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"
 --%>
		});
		
		
			canvas.onclick = function(evt){
    var activePoints = myLineChart.getPointsAtEvent(evt);
    // => activePoints is an array of points on the canvas that are at the same position as the click event.
};
	</script>


</body>
</html>