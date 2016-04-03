/**
 * 
 */

function check(obj)
{
	if(obj.start_y.value.length==0)
	{
		obj.start_y.value = 2000;
	}
	if(obj.end_y.value.length==0)
	{
		obj.end_y.value = 2000;
	}
	
	obj.action="Data_Query_Result.jsp";
	obj.submit();
}