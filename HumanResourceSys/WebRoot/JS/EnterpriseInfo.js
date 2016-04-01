




function checkInput(content) {
	for ( var i = 0; i < content.length; i++) {
		if (content.elements[i].value.length == 0) {
			alert('信息不能为空');
			contet.people_ago.focus();
			return false;
		}
	}

	document.informationForm.action = "servlet/modifyEnterpriseInfoServlet";
	document.informationForm.submit();
}