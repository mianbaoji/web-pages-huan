package com.bit.cityservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.common.listManageTable;
import com.bit.service.serviceOfCity;
import com.bit.service.serviceOfPrince2;
import com.bit.servlet.loginServlet;

public class cityQueryReportServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public cityQueryReportServlet() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session0 = request.getSession();
		String user_id = (String) session0.getAttribute("user");

		String com_id = request.getParameter("com_id");// 企业ID
		String com_name = request.getParameter("com_name");// 企业名称
		String com_year = request.getParameter("com_year");// 年
		String com_month = request.getParameter("com_month");// 月

		// service
		// Javabean: EnterpriseDataTable
		// 从前端接收：企业名称、企业ID、申报时间（年、月）
		// 传给Service: 企业名称、企业ID、申报时间（年、月）
		// Service返回：EnterpriseDataTable
		// 返回给前端：EnterpriseDataTable

		List<listManageTable> listManageInfoList = new serviceOfCity()
				.queryFormForCity(com_name, com_id, com_year, user_id,
						com_month);
		// 上面的注释打开
		HttpSession session = request.getSession();
		session.setAttribute("listManageInfoList", listManageInfoList);
		session.setAttribute("flag_ListProQueryEnt", "1");
		response.sendRedirect("../city/City_ListManage.jsp");
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
