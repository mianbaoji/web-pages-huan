/**
 * 
 */

function addmessage() {
	document.getElementById("div_add").innerHTML = "<p>"
			+ "通知标题:"
			+ "<input type='text' name='news_head' style='font-size:20px;width:230px;height:30px'>"
			+ "</p>"
			+ "<p>"
			+ "发布时间:"
			+ "<input type='text' name='news_time' style='font-size:20px;width:230px;height:30px'>"
			+ "</p>"
			+ "<p>"
			+ "通知内容:"
			+ "<input type='text' name='news_content' style='font-size:20px;width:370px;height:100px;'>"
			+ "</p>"
			+ "<p>"
			+ "发布人:"
			+ "<input type='text' style='font-size:20px;width:230px;height:30px'>"
			+ "</p>"
			+ "<p>"
			+ "接收人:"
			+ "<select name='news_sub' style='font-size:20px;width:230px;height:30px'>"
			+ "<option value='0'>所有人</option>" +
					"<option value=''>ID</option>" + "</p>";
}