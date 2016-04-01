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
<title>数据填报</title>
<<<<<<< HEAD

=======
<jsp:include page="../isLogin.jsp"></jsp:include>
<script type="text/javascript" src="JS/Report.js"></script>
>>>>>>> refs/remotes/origin/省用户端
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
<<<<<<< HEAD
				<a href="exit.jsp">注销</a>
=======
				<a href="enterExit.jsp">注销</a>
>>>>>>> refs/remotes/origin/省用户端
			</div>
		</ul>
	</div>
	</nav>
<<<<<<< HEAD
	<form>
=======
	<form  onsubmit="return checkInput(this)" name="enterpriseData" >
>>>>>>> refs/remotes/origin/省用户端
		<div class="box">
			<table class="form" id="report">
				<tr>
					<th>数据项</th>
					<th>必填</th>
					<th class="cell">说明</th>
				</tr>
				<tr>

					<td>建档期就业人数</td>
					<td>是</td>
<<<<<<< HEAD
					<td class="cell"><input id="people_ago" />
=======
					<td class="cell"><input name="people_ago" />
>>>>>>> refs/remotes/origin/省用户端
					</td>
				</tr>
				<tr>

					<td>调查期就业人数</td>
					<td>是</td>
<<<<<<< HEAD
					<td class="cell"><input id="people_now" />
=======
					<td class="cell"><input name="people_now" />
>>>>>>> refs/remotes/origin/省用户端
					</td>
				</tr>
				<tr>

					<td>其他原因</td>
					<td>是</td>
<<<<<<< HEAD
					<td class="cell"><input id="other_reason" />
=======
					<td class="cell"><input name="other_reason" />
>>>>>>> refs/remotes/origin/省用户端
					</td>
				</tr>
				<tr>

					<td>就业人数减少类型</td>
					<td>否</td>
<<<<<<< HEAD
					<td class="cell"><select id="type">
							<option></option>
=======
					<td class="cell"><select name="type">
							<option value=" "></option>
>>>>>>> refs/remotes/origin/省用户端
							<option value="关闭破产">关闭破产</option>
							<option value="停业整顿">停业整顿</option>
							<option value="经济性裁员">经济性裁员</option>
							<option value="业务转移">业务转移</option>
							<option value="自然减员">自然减员</option>
							<option value="正常解除或终止劳动合同">正常解除或终止劳动合同</option>
							<option value="国际因素变化影响">国际因素变化影响</option>
							<option value="自然灾害">自然灾害</option>
							<option value="重大事件影响">重大事件影响</option>
							<option value="其他">其他</option>
					</select>
					</td>
				</tr>
				<tr>

					<td>主要原因</td>
					<td>否</td>
<<<<<<< HEAD
					<td class="cell"><select id="1_reason">
							<option value=""></option>
=======
					<td class="cell"><select name="reason_1">
							<option value=" "></option>
>>>>>>> refs/remotes/origin/省用户端
							<option value="产业结构调整">产业结构调整</option>
							<option value="重大技术改革">重大技术改革</option>
							<option value="节能减排">节能减排</option>
							<option value="淘汰落后产能">淘汰落后产能</option>
							<option value="订单不足">订单不足</option>
							<option value="原材料涨价">原材料涨价</option>
							<option value="工资、社保等用工成本上升">工资、社保等用工成本上升</option>
							<option value="自然减员">自然减员</option>
							<option value="经营资金困难">经营资金困难</option>
							<option value="税收政策变化">税收政策变化（包括税负增加或出口退税减少等）</option>
							<option value="季节性用工">季节性用工</option>
							<option value="自行离职">自行离职</option>
							<option value="工作调动、企业内部调剂">工作调动、企业内部调剂</option>
							<option value="劳动关系转移、劳务派遣">劳动关系转移、劳务派遣</option>
							<option value="其他">其他</option>
					</select>
					</td>
				</tr>
				<tr>

					<td>主要原因说明</td>
					<td>否</td>
<<<<<<< HEAD
					<td class="cell"><input id="1_explain" />
=======
					<td class="cell"><input name="explain_1" />
>>>>>>> refs/remotes/origin/省用户端
					</td>
				</tr>
				<tr>

					<td>次要原因</td>
					<td>否</td>
<<<<<<< HEAD
					<td class="cell"><select id="2_reason">
							<option value=""></option>
=======
					<td class="cell"><select name="reason_2">
							<option value=" "></option>
>>>>>>> refs/remotes/origin/省用户端
							<option value="产业结构调整">产业结构调整</option>
							<option value="重大技术改革">重大技术改革</option>
							<option value="节能减排">节能减排</option>
							<option value="淘汰落后产能">淘汰落后产能</option>
							<option value="订单不足">订单不足</option>
							<option value="原材料涨价">原材料涨价</option>
							<option value="工资、社保等用工成本上升">工资、社保等用工成本上升</option>
							<option value="自然减员">自然减员</option>
							<option value="经营资金困难">经营资金困难</option>
							<option value="税收政策变化">税收政策变化（包括税负增加或出口退税减少等）</option>
							<option value="季节性用工">季节性用工</option>
							<option value="自行离职">自行离职</option>
							<option value="工作调动、企业内部调剂">工作调动、企业内部调剂</option>
							<option value="劳动关系转移、劳务派遣">劳动关系转移、劳务派遣</option>
							<option value="其他">其他</option>
					</select>
					</td>
				</tr>
				<tr>

					<td>次要原因说明</td>
					<td>否</td>
<<<<<<< HEAD
					<td class="cell"><input id="" />
=======
					<td class="cell"><input name="explain_2" />
>>>>>>> refs/remotes/origin/省用户端
					</td>
				</tr>
				<tr>

					<td>第三原因</td>
					<td>否</td>
<<<<<<< HEAD
					<td class="cell"><select>
							<option value=""></option>
=======
					<td class="cell"><select name="reason_3">
							<option value=" "></option>
>>>>>>> refs/remotes/origin/省用户端
							<option value="产业结构调整">产业结构调整</option>
							<option value="重大技术改革">重大技术改革</option>
							<option value="节能减排">节能减排</option>
							<option value="淘汰落后产能">淘汰落后产能</option>
							<option value="订单不足">订单不足</option>
							<option value="原材料涨价">原材料涨价</option>
							<option value="工资、社保等用工成本上升">工资、社保等用工成本上升</option>
							<option value="自然减员">自然减员</option>
							<option value="经营资金困难">经营资金困难</option>
							<option value="税收政策变化">税收政策变化（包括税负增加或出口退税减少等）</option>
							<option value="季节性用工">季节性用工</option>
							<option value="自行离职">自行离职</option>
							<option value="工作调动、企业内部调剂">工作调动、企业内部调剂</option>
							<option value="劳动关系转移、劳务派遣">劳动关系转移、劳务派遣</option>
							<option value="其他">其他</option>
					</select>
					</td>
				</tr>
				<tr>

					<td>第三原因说明</td>
					<td>否</td>
<<<<<<< HEAD
					<td class="cell"><input id="3_explain" />
=======
					<td class="cell"><input name="explain_3" />
>>>>>>> refs/remotes/origin/省用户端
					</td>
				</tr>

			</table>
			<br>
			<div>
				<input class="button" type="submit" value="保存" />
			</div>
		</div>
<<<<<<< HEAD
=======
		<%
		if (session.getAttribute("message") == "success") {
	%> <script type="text/javascript">
		alert('上传成功！');
	</script> <%
 	} else if (session.getAttribute("message") == "failed") {
 %> <script type="text/javascript">
		alert('上传失败！');
	</script> <%
 	}
 	session.removeAttribute("message");
 %>
>>>>>>> refs/remotes/origin/省用户端
</body>
</html>
