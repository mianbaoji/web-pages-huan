function checkInput(content)
{
	
	if(content.people_ago.value.length==0)
	{
		alert('建档期就业人数不能为空');
		contet.people_ago.focus();
		return false;
	}
	
	if(content.people_now.value.length==0)
	{
		alert('调查期就业人数不能为空');
		contet.people_now.focus();
		return false;
	}
	if(content.other_reason.value.length==0)
	{
		alert('其他原因不能为空');
		contet.other_reason.focus();
		return false;
	}
	
	document.enterpriseData.action="servlet/reportServlet";
	document.enterpriseData.submit();
}