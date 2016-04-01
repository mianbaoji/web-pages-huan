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
<title>企业信息</title>

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
			<li><a href="enterprise/HomePage.jsp">首页</a></li>
			<li><a href="enterprise/EnterpriseInfo.jsp">企业信息</a></li>
			<li><a href="enterprise/Report.jsp">数据填报</a></li>
			<li><a href="enterprise/Inquire.jsp">数据查询</a></li>
			<div id="exit">
				<a href="exit.jsp">注销</a>
			</div>
		</ul>
	</div>
	<form>
		<div class="box">

			<table class="form">
				<tr>
					<td>所属地区</td>
					<td class="cell"><input id="com_area" />
					</td>
				</tr>
				<tr>
					<td>组织机构代码</td>
					<td class="cell"><input id="com_id" />
					</td>
				</tr>
				<tr>
					<td>企业名称</td>
					<td class="cell"><input id="com_name" />
					</td>
				</tr>
				<tr>
					<td>企业性质</td>
					<td class="cell"><select id="com_property">
							<option value="国有企业">国有企业</option>
							<option value="集体企业">集体企业</option>
							<option value="联营企业">联营企业</option>
							<option value="私营企业">私营企业</option>
							<option value="个体户">个体户</option>
					</select></td>
				</tr>
				<tr>
					<td>所属行业</td>
					<td class="cell"><select id="com_industry">
							<option value="农、林、牧、渔业">农、林、牧、渔业</option>
							<option value="采矿业">采矿业</option>
							<option value="制造业">制造业</option>
							<option value="电力、热力、燃气及水的生产和供应业
							">电力、热力、燃气及水的生产和供应业
							</option>
							<option value="环境和公共设施管理业
							">环境和公共设施管理业</option>
							<option value="建筑业">建筑业</option>
							<option value="交通运输、仓储业和邮政业">交通运输、仓储业和邮政业</option>
							<option value="信息传输、计算机服务和软件业">信息传输、计算机服务和软件业</option>
							<option value="批发和零售业
							">批发和零售业</option>
							<option value="住宿、餐饮业">住宿、餐饮业</option>
							<option value="金融、保险业
							">金融、保险业</option>
							<option value="房地产业">房地产业</option>
							<option value="租赁和商务服务业">租赁和商务服务业</option>
							<option value="科学研究、技术服务和地质勘查业">科学研究、技术服务和地质勘查业</option>
							<option value="水利、环境和公共设施管理业
							">水利、环境和公共设施管理业</option>
							<option value="居民服务和其他服务业
							">居民服务和其他服务业</option>
							<option value="教育
							">教育</option>
							<option value="卫生、社会保障和社会服务业
							">卫生、社会保障和社会服务业</option>
							<option value="文化、体育、娱乐业
							">文化、体育、娱乐业</option>
							<option value="综合（含投资类、主业不明显）">综合（含投资类、主业不明显）</option>
							<option value="其它">其它</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>主要经营业务</td>
					<td class="cell"><input id="com_business" />
					</td>
				</tr>
				<tr>
					<td>联系人</td>
					<td class="cell"><input id="com_people" />
					</td>
				</tr>
				<tr>
					<td>地址</td>
					<td class="cell"><input id="com_address" />
					</td>
				</tr>
				<tr>
					<td>邮政编码</td>
					<td class="cell"><input id="com_postalco" />
					</td>
				</tr>
				<tr>
					<td>电话</td>
					<td class="cell"><input id="com_tel" />
					</td>
				</tr>
				<tr>
					<td>传真</td>
					<td class="cell"><input id="com_fax" />
					</td>
				</tr>
				<tr>
					<td>邮箱</td>
					<td class="cell"><input id="com_email" />
					</td>
				</tr>
			</table>


			<br>
			<div>
				<input class="button" type="submit" value="修改" />
			</div>
		</div>
	</form>
</body>
</html>
