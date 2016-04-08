/**
 * 
 */

function check(obj)
{
	if(obj.start_y.value.length==0)
	{
		alert("起始年份不能为空");
	}
	if(obj.end_y.value.length==0)
	{
		alert("结束年份不能为空");
		
	}
	
	obj.action="province/Data_Query_Result.jsp";
	obj.submit();
}