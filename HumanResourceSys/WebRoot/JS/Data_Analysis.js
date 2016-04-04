/**
 * 
 */
function area_show() {
	var form = document.getElementById("hhform");

	form.action = "province/Data_Analysis_area_result.jsp";
	window
			.open(
					"province/Data_Analysis_area_result.jsp",
					"test",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
	form.submit();
}

function one_show() {
	var form = document.getElementById("hhform");

	form.action = "province/Data_Analysis_one_result.jsp";
	window
			.open(
					"province/Data_Analysis_one_result.jsp",
					"test",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
	form.submit();
}