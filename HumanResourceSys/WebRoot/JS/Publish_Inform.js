/**
 * 
 */

function addmessage() {
	window
			.open(
					"Publish_Inform_Add.jsp",
					"发布通知",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
}

function select(i) {
	var form = document.getElementById(i);
	//var news_head = form.news_head.value;
	//var news_time = form.news_time.value;

	form.action = "Publish_Inform_Select.jsp";
	window
			.open(
					"Publish_Inform_Select.jsp",
					"test",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
	form.submit();
}

function update(i) {
	var form = document.getElementById(i);
	//var news_head = form.news_head.value;
	//var news_time = form.news_time.value;
	
	form.action = "Publish_Inform_Update.jsp";
	window
			.open(
					"Publish_Inform_Update.jsp",
					"test",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
	form.submit();
}

function deletem(i) {
	var form = document.getElementById(i);
	//var news_head = form.news_head.value;
	//var news_time = form.news_time.value;
	
	form.action = "Publish_Inform_Delete.jsp";
	window
			.open(
					"Publish_Inform_Delete.jsp",
					"test",
					"toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800, height=600");
	form.submit();
}

function submit_update()
{
	var form = document.getElementById(update);
	
	form.action = "Publish_Inform_Update_Result.jsp";
	form.submit();
}
