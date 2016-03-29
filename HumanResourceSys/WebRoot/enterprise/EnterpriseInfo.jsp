<%@page import="com.bit.service.serviceOfEnterprise"%>
<%@page import="com.bit.common.EnterpriseInfoTable"%>
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
<jsp:include page="../isLogin.jsp"></jsp:include>
<script src="JS/EnterpriseInfo.js"></script>
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
			<li><a href="enterprise/HomePage.jsp">首页</a>
			</li>
			<li><a href="enterprise/EnterpriseInfo.jsp">企业信息</a>
			</li>
			<li><a href="enterprise/Report.jsp">数据填报</a>
			</li>
			<li><a href="enterprise/Inquire.jsp">数据查询</a>
			</li>
			<div id="exit">
				<a href="enterExit.jsp">注销</a>
			</div>
		</ul>
	</div>


	<%
		String com_id = (String) session.getAttribute("user");
	
		EnterpriseInfoTable enterpriseInfoTable = new com.bit.service.serviceOfEnterprise()
				.queryEnterpriseInfo(com_id);
	%>
	<form onsubmit="return checkInput(this)" name="informationForm">
		<div class="box">

			<table class="form">
				<tr>
					<td>所属地区</td>
					<td class="cell"><input name="com_area"
						value="<%if (enterpriseInfoTable != null) {
				out.print(enterpriseInfoTable.getCom_area());
			}%>" />
					</td>
				</tr>
				<tr>
					<td>组织机构代码</td>
					<td class="cell">
						<%out.print(com_id);%> </td>
				</tr>
				<tr>
					<td>企业名称</td>
					<td class="cell"><input name="com_name"
						value="<%if (enterpriseInfoTable != null) {
				out.print(enterpriseInfoTable.getCom_name());
			}%>" />
					</td>
				</tr>
				<tr>
					<td>企业性质</td>
					<td class="cell"><select name="com_property">
							<option value="1"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_property().equals("1")) {
					out.print("selected=\"selected\"");
				}
			}%>>国有企业</option>
							<option value="2"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_property().equals("2")) {
					out.print("selected=\"selected\"");
				}
			}%>>集体企业</option>
							<option value="3"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_property().equals("3")) {
					out.print("selected=\"selected\"");
				}
			}%>>联营企业</option>
							<option value="4"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_property().equals("4")) {
					out.print("selected=\"selected\"");
				}
			}%>>私营企业</option>
							<option value="5"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_property().equals("5")) {
					out.print("selected=\"selected\"");
				}
			}%>>个体户</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>所属行业</td>
					<td class="cell"><select name="com_industry">
							<option value="1"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("1")) {
					out.print("selected=\"selected\"");
				}
			}%>>农、林、牧、渔业</option>
							<option value="2"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("2")) {
					out.print("selected=\"selected\"");
				}
			}%>>采矿业</option>
							<option value="3"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("3")) {
					out.print("selected=\"selected\"");
				}
			}%> >制造业</option>
							<option value="4"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("4")) {
					out.print("selected=\"selected\"");
				}
			}%> >电力、热力、燃气及水的生产和供应业
							</option>
							<option value="5
							"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("5")) {
					out.print("selected=\"selected\"");
				}
			}%> >环境和公共设施管理业</option>
							<option value="6"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("6")) {
					out.print("selected=\"selected\"");
				}
			}%> >建筑业</option>
							<option value="7"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("7")) {
					out.print("selected=\"selected\"");
				}
			}%> >交通运输、仓储业和邮政业</option>
							<option value="8"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("8")) {
					out.print("selected=\"selected\"");
				}
			}%> >信息传输、计算机服务和软件业</option>
							<option value="9
							"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("9")) {
					out.print("selected=\"selected\"");
				}
			}%> >批发和零售业</option>
							<option value="10"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("10")) {
					out.print("selected=\"selected\"");
				}
			}%> >住宿、餐饮业</option>
							<option value="11
							"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("11")) {
					out.print("selected=\"selected\"");
				}
			}%> >金融、保险业</option>
							<option value="12"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("12")) {
					out.print("selected=\"selected\"");
				}
			}%> >房地产业</option>
							<option value="13"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("13")) {
					out.print("selected=\"selected\"");
				}
			}%> >租赁和商务服务业</option>
							<option value="14"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("14")) {
					out.print("selected=\"selected\"");
				}
			}%> >科学研究、技术服务和地质勘查业</option>
							<option value="15"
								<%if (enterpriseInfoTable != null) {
				if (enterpriseInfoTable.getCom_industry().equals("15")) {
					out.print("selected=\"selected\"");
				}
			}%> >水利、环境和公共设施管理业</option>
							<option value="16
							"<%if (enterpriseInfoTable != null) { 
				if(enterpriseInfoTable.getCom_industry().equals("16")){ out.print("selected=\"selected\"");}
			}%> >居民服务和其他服务业</option>
							<option value="17"<%if (enterpriseInfoTable != null) { 
				if(enterpriseInfoTable.getCom_industry().equals("17")){ out.print("selected=\"selected\"");}
			}%> >教育</option>
							<option value="18
							"<%if (enterpriseInfoTable != null) { 
				if(enterpriseInfoTable.getCom_industry().equals("18")){ out.print("selected=\"selected\"");}
			}%> >卫生、社会保障和社会服务业</option>
							<option value="19
							"<%if (enterpriseInfoTable != null) { 
				if(enterpriseInfoTable.getCom_industry().equals("19")){ out.print("selected=\"selected\"");}
			}%> >文化、体育、娱乐业</option>
							<option value="20" <%if (enterpriseInfoTable != null) { 
				if(enterpriseInfoTable.getCom_industry().equals("20")){ out.print("selected=\"selected\"");}
			}%> >综合（含投资类、主业不明显）</option>
							<option value="21" <%if (enterpriseInfoTable != null) { 
				if(enterpriseInfoTable.getCom_industry().equals("21")){ out.print("selected=\"selected\"");}
			}%>>其它</option>
					</select></td>
				</tr>
				<tr>
					<td>主要经营业务</td>
					<td class="cell"><input name="com_business"
						value="<%if (enterpriseInfoTable != null) {
				out.print(enterpriseInfoTable.getCom_business());
			}%>" />
					</td>
				</tr>
				<tr>
					<td>联系人</td>
					<td class="cell"><input name="com_people"
						value="<%if (enterpriseInfoTable != null) {
				out.print(enterpriseInfoTable.getCom_people());
			}%>" />
					</td>
				</tr>
				<tr>
					<td>地址</td>
					<td class="cell"><input name="com_address"
						value="<%if (enterpriseInfoTable != null) {
				out.print(enterpriseInfoTable.getCom_address());
			}%>" />
					</td>
				</tr>
				<tr>
					<td>邮政编码</td>
					<td class="cell"><input name="com_postalcode"
						value="<%if (enterpriseInfoTable != null) {
				out.print(enterpriseInfoTable.getCom_postalcode());
			}%>" />
					</td>
				</tr>
				<tr>
					<td>电话</td>
					<td class="cell"><input name="com_tel"
						value="<%if (enterpriseInfoTable != null) {
				out.print(enterpriseInfoTable.getCom_tel());
			}%>" />
					</td>
				</tr>
				<tr>
					<td>传真</td>
					<td class="cell"><input name="com_fax"
						value="<%if (enterpriseInfoTable != null) {
				out.print(enterpriseInfoTable.getCom_fax());
			}%>" />
					</td>
				</tr>
				<tr>
					<td>邮箱</td>
					<td class="cell"><input name="com_email"
						value="<%if (enterpriseInfoTable != null) {
				out.print(enterpriseInfoTable.getCom_email());
			}%>" />
					</td>
				</tr>
			</table>


			<br>
			<div>
				<input class="button" type="submit" value="修改" />
			</div>
		</div>
	</form>
	<%
		if (session.getAttribute("message") == "success") {
	%> <script type="text/javascript">
		alert('修改成功！');
	</script> <%
 	} else if (session.getAttribute("message") == "failed") {
 %> <script type="text/javascript">
		alert('修改失败！');
	</script> <%
 	}
 	session.removeAttribute("message");
 %>
	
</body>
</html>
