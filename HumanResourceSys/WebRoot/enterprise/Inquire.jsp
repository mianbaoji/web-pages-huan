<<<<<<< HEAD
=======
<%@ page import="com.bit.common.EnterpriseDataTable"%>
>>>>>>> refs/remotes/origin/省用户端
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
<link rel="stylesheet" type="text/css" href="CSS/Nav.css" />
<link rel="stylesheet" type="text/css" href="CSS/All.css" />
<link rel="stylesheet" type="text/css" href="CSS/Enterprise.css" />
<title>数据查询</title>
<<<<<<< HEAD
=======
<jsp:include page="../isLogin.jsp"></jsp:include>
>>>>>>> refs/remotes/origin/省用户端
<script type="text/javascript" src="JS/enterprise_inquire.js"></script>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body class="background">
	<nav>
	<div id="nav">
		<ul>
<<<<<<< HEAD
			<li><a href="enterprise/HomePage.jsp">首页</a>
			</li>
			<li><a href="enterprise/EnterpriseInfo.jsp">企业信息</a>
			</li>
			<li><a href="enterprise/Report.jsp">数据填报</a>
			</li>
			<li><a href="enterprise/Inquire.jsp">数据查询</a>
			</li>
			<div id="exit">
				<a href="exit.jsp">注销</a>
=======
			<li><a href="enterprise/HomePage.jsp">首页</a></li>
			<li><a href="enterprise/EnterpriseInfo.jsp">企业信息</a></li>
			<li><a href="enterprise/Report.jsp">数据填报</a></li>
			<li><a href="enterprise/Inquire.jsp">数据查询</a></li>
			<div id="exit">
				<a href="enterExit.jsp">注销</a>
>>>>>>> refs/remotes/origin/省用户端
			</div>
		</ul>
	</div>
	</nav>
<<<<<<< HEAD
	<form>
		<div id="inquire">
			<!-- <input type="text" /> -->
			<select id="selYear"></select>年 <select id="selMonth"></select>月 <select
				id="selDay"></select>日
=======
	<form action="servlet/enterpriseQueryData">
		<div id="inquire">
			<!-- <input type="text" /> -->
			调查期日期 &nbsp &nbsp<select id="selYear" name="selYear"></select>年 <select
				id="selMonth" name="selMonth"></select>月 <select id="selDay"
				name="selDay" style="display:none"></select>
>>>>>>> refs/remotes/origin/省用户端
			<script type="text/javascript">
				var selYear = window.document.getElementById("selYear");
				var selMonth = window.document.getElementById("selMonth");
				var selDay = window.document.getElementById("selDay");
<<<<<<< HEAD

				// 新建一个DateSelector类的实例，将三个select对象传进去
				new DateSelector(selYear, selMonth, selDay, 2016, 3, 25);
				// 也可以试试下边的代码
=======
				// 新建一个DateSelector类的实例，将三个select对象传进去
				var month =
			<%=session.getAttribute("month")%>
				;
				var year =
			<%=session.getAttribute("year")%>
				;
				new DateSelector(selYear, selMonth, selDay, year, month, 1);

>>>>>>> refs/remotes/origin/省用户端
				// var dt = new Date(2004, 1, 29);
				// new DateSelector(selYear, selMonth ,selDay, dt);
			</script>
			<div id="inquire_button">
				<input type="submit" />
			</div>
		</div>
	</form>
<<<<<<< HEAD
	<div class="box" id="inquire_box"></div>
=======

	<%
		if (session.getAttribute("message") != null) {

			if (session.getAttribute("message") == "failed") {
	%>
	<script type="text/javascript">
		alert('无查询结果');
	</script>
	<%
		} else if (session.getAttribute("message") == "success") {
				EnterpriseDataTable enterDataTable = (EnterpriseDataTable) session
						.getAttribute("enterpriseDataTable");
	%>
	<div class="box" id="inquire_form">
		<table class="form" id="report">
			<tr>
				<th>数据项</th>
				<th>必填</th>
				<th class="cell">说明</th>
			</tr>
			<tr>

				<td>建档期就业人数</td>
				<td>是</td>
				<td class="cell">
					<%
						out.print(enterDataTable.getPeople_ago());
					%>
				</td>
			</tr>
			<tr>

				<td>调查期就业人数</td>
				<td>是</td>
				<td class="cell">
					<%
						out.print(enterDataTable.getPeople_now());
					%>
				</td>
			</tr>
			<tr>

				<td>其他原因</td>
				<td>是</td>
				<td class="cell">
					<%
						out.print(enterDataTable.getOther_reason());
					%>
				</td>
			</tr>
			<tr>

				<td>就业人数减少类型</td>
				<td>否</td>
				<td class="cell">
					<%
						out.print(enterDataTable.getType());
					%>
				</td>
			</tr>
			<tr>

				<td>主要原因</td>
				<td>否</td>
				<td class="cell">
					<%
						out.print(enterDataTable.getReason_1());
					%>
				</td>
			</tr>
			<tr>

				<td>主要原因说明</td>
				<td>否</td>
				<td class="cell">
					<%
						out.print(enterDataTable.getExplain_1());
					%>
				</td>
			</tr>
			<tr>

				<td>次要原因</td>
				<td>否</td>
				<td class="cell">
					<%
						out.print(enterDataTable.getReason_2());
					%>
				</td>
			</tr>
			<tr>

				<td>次要原因说明</td>
				<td>否</td>
				<td class="cell">
					<%
						out.print(enterDataTable.getExplain_2());
					%>
				</td>
			</tr>
			<tr>

				<td>第三原因</td>
				<td>否</td>
				<td class="cell">
					<%
						out.print(enterDataTable.getReason_3());
					%>
				</td>
			</tr>
			<tr>

				<td>第三原因说明</td>
				<td>否</td>
				<td class="cell">
					<%
						out.print(enterDataTable.getExplain_3());
					%>
				</td>
			</tr>

		</table>

	</div>

	<%
		}
		}
		session.removeAttribute("enterpriseDataTable");
		session.removeAttribute("message");
	%>
>>>>>>> refs/remotes/origin/省用户端
</body>
</html>
