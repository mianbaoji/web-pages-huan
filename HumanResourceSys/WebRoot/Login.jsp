<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>
<link rel="stylesheet" type="text/css" href="CSS/Login.css" />
<script src="JS/Login.js"></script>
</head>

<body id="back">
	<div>
		<div id="login">
			<div id="login_title">
				<ul>
					<li class="select"><a href="#">省用户登录</a></li>
					<li><a href="#">企业用户登录</a></li>
				</ul>
			</div>
			<form onsubmit="return checkInput(this)">
				<div id="login_body">
					<div id="login_content">
						<div name="login_box" style="display:block">
							<div>
								<div>
									<lable for="用户名">用户名</lable>
								</div>
								<div>
									<input id="input_box" type="text" name="userName"
										placeholder="用户名"
										onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" />
								</div>
							</div>
							<div>
								<div>密码</div>
								<div>
									<input id="input_box" type="password" name="passWord"
										placeholder="密码"
										onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" />
								</div>
							</div>
							<div>
								<input type="checkbox" name="密码" value="记住密码" checked="checked" />记住密码
							</div>
							<div>
								<br /> <a><input id="login_button" type="submit" value="登录" />
								</a>
							</div>
						</div>
			</form>
			<form onsubmit="return checkInput(this)">
				<div name="login_box" style="display:none">
					<div>
						<div>
							<lable for="用户名">用户名</lable>
						</div>
						<div>
							<input id="input_box" type="text" name="userName"
								placeholder="用户名"
								onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" />
						</div>
					</div>
					<div>
						<div>密码</div>
						<div>
							<input id="input_box" type="password" name="passWord"
								placeholder="密码" onkeyup="value=value.replace(/[^\w\.\/]/ig,'')" />
						</div>
					</div>
					<div>
						<input type="checkbox" name="密码" value="记住密码" checked="checked" />记住密码
					</div>
					<div>
						<br /> <a><input id="login_button" type="submit" value="登录" />
						</a>
					</div>
			</form>
		</div>
	</div>
	</div>
	</div>
</body>
</html>
