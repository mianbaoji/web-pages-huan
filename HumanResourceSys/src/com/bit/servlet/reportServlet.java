package com.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;
<<<<<<< HEAD
=======
import java.util.Calendar;
>>>>>>> refs/remotes/origin/çœç”¨æˆ·ç«¯
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.common.EnterpriseDataTable;
import com.bit.common.userInfoTable;
import com.bit.service.serviceOfAll;
import com.bit.service.serviceOfEnterprise;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Template;

public class reportServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public reportServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
<<<<<<< HEAD
		//todo ç»„ç»‡æœºæ„ä»£ç ï¼Œåœ¨å“ªé¢„ç½®ï¼Ÿ
		//å‰ç«¯ä»£ç ä¹Ÿæ²¡æœ‰
		//String com_id = request.getParameter("com_id");
		//Integer table_id = Integer.valueOf(request.getParameter("table_id"));
		//request
		Integer people_ago = Integer.valueOf(request.getParameter("people_ago"));
		Integer people_now = Integer.valueOf(request.getParameter("people_now"));
		String other_reason = request.getParameter("other_reason");
		String type = request.getParameter("type");
		String reason_1 = request.getParameter("reason_1");
		String reason_2 = request.getParameter("reason_2");
		String reason_3 = request.getParameter("reason_3");
		String explain_1 = request.getParameter("explain_1");
		String explain_2 = request.getParameter("explain_2");
		String explain_3 = request.getParameter("explain_3");
		String status = request.getParameter("status");
		Integer time_id = Integer.valueOf(request.getParameter("time_id"));
=======
		//todo ×éÖ¯»ú¹¹´úÂë£¬ÔÚÄÄÔ¤ÖÃ£¿
		//Ç°¶Ë´úÂëÒ²Ã»ÓĞ
		//String com_id = request.getParameter("com_id");
		//Integer table_id = Integer.valueOf(request.getParameter("table_id"));
		
		Integer people_ago = Integer.valueOf(request.getParameter("people_ago"));
		Integer people_now = Integer.valueOf(request.getParameter("people_now"));
		String other_reason = request.getParameter("other_reason");
		other_reason= new String(other_reason.getBytes("ISO8859-1"), "utf-8");
		String type = request.getParameter("type");
		type= new String(type.getBytes("ISO8859-1"), "utf-8");
		String reason_1 = request.getParameter("reason_1");
		reason_1= new String(reason_1.getBytes("ISO8859-1"), "utf-8");
		String reason_2 = request.getParameter("reason_2");
		reason_1= new String(reason_1.getBytes("ISO8859-1"), "utf-8");
		String reason_3 = request.getParameter("reason_3");
		reason_1= new String(reason_1.getBytes("ISO8859-1"), "utf-8");
		String explain_1 = request.getParameter("explain_1");
		explain_1= new String(explain_1.getBytes("ISO8859-1"), "utf-8");
		String explain_2 = request.getParameter("explain_2");
		explain_2= new String(explain_2.getBytes("ISO8859-1"), "utf-8");
		String explain_3 = request.getParameter("explain_3");
		explain_2= new String(explain_2.getBytes("ISO8859-1"), "utf-8");
		String status ="checking";
>>>>>>> refs/remotes/origin/çœç”¨æˆ·ç«¯
		
		EnterpriseDataTable enterpriseDataTable = new EnterpriseDataTable();
		
		//enterpriseDataTable.setCom_id(com_id);
<<<<<<< HEAD
		//enterpriseDataTable.setTable_id(table_id);
		enterpriseDataTable.setPeople_ago(people_ago);
		enterpriseDataTable.setPeople_now(people_now);
		enterpriseDataTable.setOther_reason(other_reason);
		enterpriseDataTable.setOther_reason(other_reason);
=======

		enterpriseDataTable.setPeople_ago(people_ago);
		enterpriseDataTable.setPeople_now(people_now);
		enterpriseDataTable.setOther_reason(other_reason);
	
>>>>>>> refs/remotes/origin/çœç”¨æˆ·ç«¯
		enterpriseDataTable.setType(type);
		enterpriseDataTable.setReason_1(reason_1);
		enterpriseDataTable.setReason_2(reason_2);
		enterpriseDataTable.setReason_3(reason_3);
		enterpriseDataTable.setExplain_1(explain_1);
		enterpriseDataTable.setExplain_2(explain_2);
		enterpriseDataTable.setExplain_3(explain_3);
		enterpriseDataTable.setStatus(status);
<<<<<<< HEAD
		enterpriseDataTable.setTime_id(time_id);

		//service
		try {
			HttpSession session = request.getSession();
			if(new serviceOfEnterprise().addEnterpriseData(enterpriseDataTable, ((userInfoTable) request.getAttribute("user")).getUser_id())){
				session.setAttribute("message", "success");//å¦‚æœæ–°å¢æ•°æ®æˆåŠŸï¼Œåˆ™å°è£…ä¸€ä¸ªæˆåŠŸçš„Sessionä¿¡å·
			}
			else{
				session.setAttribute("message", "failed");//å¦‚æœæ–°å¢æ•°æ®å¤±è´¥ï¼Œåˆ™å°è£…ä¸€ä¸ªå¤±è´¥çš„Sessionä¿¡å·
			}
			response.sendRedirect("../Report.jsp");//è·³è½¬å›åŸç•Œé¢
		} catch (Exception e) {
			// TODO Auto-generated catch block
=======

		//service
		try {
			System.out.println("0");
			HttpSession session = request.getSession();
			String com_id=(String) session.getAttribute("user");
			System.out.println("1");
			if(new serviceOfEnterprise().addEnterpriseData(enterpriseDataTable, com_id)){
				
				session.setAttribute("message", "success");//Èç¹ûĞÂÔöÊı¾İ³É¹¦£¬Ôò·â×°Ò»¸ö³É¹¦µÄSessionĞÅºÅ
			}
			else{
				session.setAttribute("message", "failed");//Èç¹ûĞÂÔöÊı¾İÊ§°Ü£¬Ôò·â×°Ò»¸öÊ§°ÜµÄSessionĞÅºÅ
			}
			response.sendRedirect("../enterprise/Report.jsp");//Ìø×ª»ØÔ­½çÃæ
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("error");
>>>>>>> refs/remotes/origin/çœç”¨æˆ·ç«¯
			e.printStackTrace();
		}
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
