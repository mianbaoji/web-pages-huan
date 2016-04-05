/**
 * 
 */

function addmessage() {
	window
			.open(
					"city/City_PublishInform_Add.jsp",
					"发布通知",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
}

function select(i) {
	var form = document.getElementById(i);
	//var news_head = form.news_head.value;
	//var news_time = form.news_time.value;

	form.action = "city/City_PublishInform_Select.jsp";
	window
			.open(
					"city/City_PublishInform_Select.jsp",
					"test",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
	form.submit();
}

function update(i) {
	var form = document.getElementById(i);
	//var news_head = form.news_head.value;
	//var news_time = form.news_time.value;
	
	form.action = "city/City_PublishInform_Update.jsp";
	window
			.open(
					"city/City_PublishInform_Update.jsp",
					"test",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
	form.submit();
}

function deletem(i) {
	var form = document.getElementById(i);
	//var news_head = form.news_head.value;
	//var news_time = form.news_time.value;
	
	form.action = "city/City_PublishInform_Delete.jsp";
	window
			.open(
					"city/City_PublishInform_Delete.jsp",
					"test",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
	form.submit();
}

function submit_update()
{
	var form = document.getElementById(update);
	
	form.action = "city/City_PublishInform_Update_Result.jsp";
	form.submit();
}
