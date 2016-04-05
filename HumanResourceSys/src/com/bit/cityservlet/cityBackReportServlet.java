package com.bit.cityservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.service.serviceOfCity;
import com.bit.service.serviceOfPrince2;

public class cityBackReportServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public cityBackReportServlet() {
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

		String table_id = request.getParameter("table_id");// 企业ID
		
		// service
		// 从前端接收：企业ID（企业名称）、时间（年、月）
		// 传给Service: 企业ID（企业名称）、时间（年、月）
		// Service返回：ture || false (boolean)
		// 返回前端：ture || false (boolean)

		Boolean flag = new serviceOfCity().datastatuschangForCity(table_id, "已退回");
		//上面一句，改路径，还有函数
		HttpSession session = request.getSession();
		session.setAttribute("flag_ListProQueryEnt", "0");
		response.sendRedirect("../city/City_ListManage.jsp");
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
