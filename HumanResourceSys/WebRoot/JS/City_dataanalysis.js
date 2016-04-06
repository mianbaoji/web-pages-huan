/**
 * 
 */
function area_show() {
	var form = document.getElementById("hhform");

	form.action = "city/City_DataAnalysis_area_result.jsp";
	window
			.open(
					"city/City_DataAnalysis_area_result.jsp",
					"test",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
	form.submit();
}

function one_show() {
	var form = document.getElementById("hhform");

	form.action = "city/City_DataAnalysis_one_result.jsp";
	window
			.open(
					"city/City_DataAnalysis_one_result.jsp",
					"test",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
	form.submit();
}