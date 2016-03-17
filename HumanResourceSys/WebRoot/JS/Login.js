function $(id) {
	return typeof id == "string" ? document.getElementById(id) : id;
}
window.onload = function() {
	var titleName = $("login_title").getElementsByTagName("li");
	var loginContent = $("login_content").getElementsByTagName("div");
	
	for ( var i = 0; i < titleName.length; i++) {
		titleName[i].id = i;

		titleName[i].onmouseover = function() {
			for ( var j = 0; j < titleName.length; j++) {
				titleName[j].className = "";
				loginContent[j*9].style.display = "none";
			}
			this.className = "select";
			loginContent[this.id*9].style.display = "block";
		}
	}
}

function checkInput(content)
{
	if(content.username.value.length==0)
	{
		alert('用户名不能为空');
		contet.username.focus();
		return false;
	}
	if(content.password.value.length==0)
	{
		alert('密码不能为空');
		contet.password.focus();
		return false;
	}
	//else{//todo ask
		document.loginForm.action="servlet/loginServlet";
		document.loginForm.submit();
	//}
		
}