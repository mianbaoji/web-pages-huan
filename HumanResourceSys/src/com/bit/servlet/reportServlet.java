package com.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
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
		
		//todo 组织机构代码，在哪预置？
		//前端代码也没有
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
		
		EnterpriseDataTable enterpriseDataTable = new EnterpriseDataTable();
		
		//enterpriseDataTable.setCom_id(com_id);

		enterpriseDataTable.setPeople_ago(people_ago);
		enterpriseDataTable.setPeople_now(people_now);
		enterpriseDataTable.setOther_reason(other_reason);
	
		enterpriseDataTable.setType(type);
		enterpriseDataTable.setReason_1(reason_1);
		enterpriseDataTable.setReason_2(reason_2);
		enterpriseDataTable.setReason_3(reason_3);
		enterpriseDataTable.setExplain_1(explain_1);
		enterpriseDataTable.setExplain_2(explain_2);
		enterpriseDataTable.setExplain_3(explain_3);
		enterpriseDataTable.setStatus(status);

		//service
		try {
			System.out.println("0");
			HttpSession session = request.getSession();
			String com_id=(String) session.getAttribute("user");
			System.out.println("1");
			if(new serviceOfEnterprise().addEnterpriseData(enterpriseDataTable, com_id)){
				
				session.setAttribute("message", "success");//如果新增数据成功，则封装一个成功的Session信号
			}
			else{
				session.setAttribute("message", "failed");//如果新增数据失败，则封装一个失败的Session信号
			}
			response.sendRedirect("../enterprise/Report.jsp");//跳转回原界面
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("error");
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
