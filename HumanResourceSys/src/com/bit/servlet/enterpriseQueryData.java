package com.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.common.EnterpriseDataTable;
import com.bit.common.userInfoTable;
import com.bit.service.serviceOfEnterprise;


public class enterpriseQueryData extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public enterpriseQueryData() {
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
		request.setCharacterEncoding("UTF-8"); 
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String com_id = (String) session.getAttribute("user");//鑾峰彇浼佷笟id,浣滀负缁勭粐鏈烘瀯鐨刢om_id
		String time_year = request.getParameter("selYear");//姝ゅ搴旇 request.getParameter("time_year"); 浣嗘槸鍓嶉潰娌℃湁
		String time_month = null;//鍚屼笂
		int month= Integer.valueOf( request.getParameter("selMonth"));
		if(month <10)
		{
			time_month="0";
		}
		time_month=time_month+request.getParameter("selMonth");
		session.setAttribute("year", Integer.valueOf(time_year));
		session.setAttribute("month", Integer.valueOf(time_month));
		System.out.println(time_year+"骞�+time_month");
		//service
		try {
			EnterpriseDataTable enterpriseDataTable = new serviceOfEnterprise().queryEnterpriseData(com_id, time_year, time_month);

			if(enterpriseDataTable==null)
			{
				session.setAttribute("message", "failed");
				System.out.println("failed");
			}
			else if(enterpriseDataTable!=null)
			{
				System.out.println("success");
				session.setAttribute("message", "success");
			session.setAttribute("enterpriseDataTable", enterpriseDataTable);
			}
			
			response.sendRedirect("../enterprise/Inquire.jsp");//璺宠浆鍥炲師鐣岄潰
		} catch (Exception e) {
			// TODO Auto-generated catch block
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
