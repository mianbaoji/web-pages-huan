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
<title>登录</title>
<link rel="stylesheet" type="text/css" href="CSS/Login.css" />
<link rel="stylesheet" type="text/css" href="CSS/All.css" />
<script src="JS/Login.js"></script>
</head>

<body class="background">

	<div>
		<div id="login">
			<div id="login_title">
				<ul>
					<li class="select"><a href="#">省用户登录</a></li>
					<li><a href="#">企业用户登录</a></li>
				</ul>
			</div>
			<form onsubmit="return checkInput(this)" name="s_loginForm">
				<div id="login_body">
					<div id="login_content">
						<div name="login_box" style="display:block">
							<div>
								<div>
									<lable for="用户名">用户名</lable>
								</div>
								<div>
									<input id="input_box" type="text" name="username"
										placeholder="用户名"
										onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" />
								</div>
							</div>
							<div>
								<div>密码</div>
								<div>
									<input id="input_box" type="password" name="password"
										placeholder="密码"
										onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" />
								</div>
							</div>
							<div>
								<input type="checkbox" name="密码" value="记住密码" checked="checked" />记住密码
							</div>
							<div>
								<br /> <a ><input
									id="login_button" type="submit" value="登录" /> </a>
									<input name="userType" value="province" style="display:none"/>
							</div>
						</div>
						
			</form>
			<form   onsubmit="return checkInput(this)" name="q_loginForm" >
				<div name="login_box" style="display:none">
					<div>
						<div>
							<lable for="用户名">用户名</lable>
						</div>
						<div>
							<input id="input_box" type="text" name="username"
								placeholder="用户名"
								onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" />
						</div>
					</div>
					<div>
						<div>密码</div>
						<div>
							<input id="input_box" type="password" name="password"
								placeholder="密码" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" />
						</div>
					</div>
					<div>
						<input type="checkbox" name="密码" value="记住密码" checked="checked" />记住密码
					</div>
					<div>
						<br /> <input
							id="login_button" type="submit" value="登录" />
					</div>
					
					<input name="userType" value="enterprise" style="display:none"/>
			</form>
		</div>
	</div>
	</div>
	</div>
	<%
		if (session.getAttribute("loginFailed") == "true") {
	%>
	<script type="text/javascript">
		alert('用户名或密码错误！');
	</script>
	<%
		session.removeAttribute("loginFailed");
		}
	%>
</body>
</html>
