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

import com.bit.common.EnterpriseInfoTable;
import com.bit.common.listManageTable;
import com.bit.service.serviceOfCity;
import com.bit.service.serviceOfPrince2;
import com.bit.servlet.loginServlet;

;

public class cityQueryEnterpriseServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public cityQueryEnterpriseServlet() {
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

		String table_id = request.getParameter("table_id");// 企业table_ID

		// service
		// 从前端接收：地区
		// 传给Service: 地区
		// Service返回：企业名、地区、组织机构代码 （EnterpriseInfoTable封装）
		// 返回给前端：EnterpriseInfoTable

		listManageTable list = (listManageTable) new serviceOfCity()
				.queryOneListManageForCity(table_id, user_id);
		// 上面一行改路径
		HttpSession session = request.getSession();
		session.setAttribute("cityInfoList", list);
		session.setAttribute("flag_ProQueryEnt", "1");
		response.sendRedirect("../city/City_ListManageById.jsp");
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
