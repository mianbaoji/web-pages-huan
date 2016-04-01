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
		request.setCharacterEncoding("GBK"); 
		response.setCharacterEncoding("GBK");
		Integer id = Integer.parseInt(request.getParameter("id"));
		String com_id = ((userInfoTable) request.getAttribute("user")).getUser_id();//获取企业id,作为组织机构的com_id
		String time_year = null;//此处应该 request.getParameter("time_year"); 但是前面没有
		String time_month = null;//同上
		
		
		//service
		try {
			EnterpriseDataTable enterpriseInfoTable = new serviceOfEnterprise().queryEnterpriseData(com_id, time_year, time_month);
			HttpSession session = request.getSession();
			session.setAttribute("enterpriseInfoTable", enterpriseInfoTable);
			response.sendRedirect("../Inquire.jsp");//跳转回原界面
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
