<%@page import="java.sql.ResultSet"%>
<%@page import="com.bit.servlet.enterpriseQueryData"%>
<%@page import="com.bit.common.EnterpriseInfoTable"%>
<%@page import="com.bit.service.serviceOfProvince"%>
<%@page import="com.bit.service.serviceOfPrince2"%>
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

<title>企业备案</title>
<jsp:include page="../isLogin.jsp"></jsp:include>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="CSS/home_sheng.css" />
<link rel="stylesheet" type="text/css" href="CSS/enterprise_sheng.css" />
<script src="JS/home_sheng.js"></script>
<script type="text/javascript" language="javascript">
	function ExportToExcel(tableId) //读取表格中每个单元到EXCEL中  
	{
		try {
			var curTbl = document.getElementById(tableId);
			var oXL = new ActiveXObject("Excel.Application");
			//创建AX对象excel  
			var oWB = oXL.Workbooks.Add();
			//获取workbook对象  
			var oSheet = oWB.ActiveSheet;

			var lenRow = curTbl.rows.length;
			//取得表格行数  
			for (i = 0; i < lenRow; i++) {
				var lenCol = curTbl.rows(i).cells.length;
				//取得每行的列数  
				for (j = 0; j < lenCol; j++) {
					oSheet.Cells(i + 1, j + 1).value = curTbl.rows(i).cells(j).innerText;

				}
			}
			oXL.Visible = true;
			//设置excel可见属性  
		} catch (e) {
			if ((!+'/v1')) { //ie浏览器  
				alert("无法启动Excel，请确保电脑中已经安装了Excel!如果已经安装了Excel，"
						+ "请调整IE的安全级别。具体操作："
						+ "工具 → Internet选项 → 安全 → 自定义级别 → ActiveX 控件和插件 → 对未标记为可安全执行脚本的ActiveX 控件初始化并执行脚本 → 启用 → 确定");
			} else {
				alert("请使用IE浏览器进行“导入到EXCEL”操作！"); //方便设置安全等级，限制为ie浏览器  
			}
		}
	}
</script>
</head>

<body id="back">
	<%
		Iterator iter = null;
		if (session.getAttribute("flag_ProQueryEnt") == "1") {
			List<EnterpriseInfoTable> enter_List = (List) session
					.getAttribute("enterpriseInfoList");
			iter = enter_List.iterator();
		} else {
			List<EnterpriseInfoTable> enter_List = new serviceOfPrince2()
					.queryAllEnterpriseRecord();
			iter = enter_List.iterator();
		}
		//Iterator iter = enter_List.iterator();
	%>
	<div id="first_navigation">
		<ul id="ultype">
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/home_sheng.jsp" class="indextype">首页</a></li>
			<li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Enterprise_Record.jsp" class="indextype">企业备案</a></li>
			<!-- <li class="liheight" onmouseover="addBorder(this)"
				onmouseout="removeBorder(this)"><a
				href="province/Enterprise_Query.jsp" class="indextype">企业查询</a></li> -->
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
	<form action="servlet/ProQueryEnterpriseServlet">
		<div id="enter_query">
			<br></br> 地区: <select name="area">
				<option selected="selected">请选择</option>
				<option value="济南">济南</option>
				<option value="青岛">青岛</option>
				<option value="淄博">淄博</option>
				<option value="德州">德州</option>
				<option value="烟台">烟台</option>
				<option value="潍坊">潍坊</option>
				<option value="济宁">济宁</option>
				<option value="泰安">泰安</option>
				<option value="临沂">临沂</option>
				<option value="菏泽">菏泽</option>
				<option value="滨州">滨州</option>
				<option value="东营">东营</option>
				<option value="威海">威海</option>
				<option value="枣庄">枣庄</option>
				<option value="日照">日照</option>
				<option value="莱芜">莱芜</option>
				<option value="聊城">聊城</option>
				<input type="submit" name="search" value="检索">
	</form>
	<input type="button" name="output" onclick="javascript:ExportToExcel('outListFile')"  value="导出">
	<br></br>
	<table border="1" style="border-collapse:collapse">
		<tr class="table_size">
			<th width="250">企业名</th>
			<th width="250">地区</th>
			<th width="250">操作</th>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				EnterpriseInfoTable ent = (EnterpriseInfoTable) iter.next();
				//System.out.println("##########"+ent.getCom_area()+"-----------"+ent.getCom_id());
		%>
		<tr>
			<td width="250"><%=ent.getCom_name()%></td>
			<td width="250"><%=ent.getCom_area()%></td>
			<td width="250"><a
				href="servlet/ProQueryEnterpriseServletById?Com_id=<%=ent.getCom_id()%>">查看详情</a></td>
		</tr>
		<%
			i++;
			}
			session.removeAttribute("flag_ProQueryEnt");
			session.removeAttribute("enterpriseInfoList");
		%>
	</table>
	</div>

</body>
</html>
