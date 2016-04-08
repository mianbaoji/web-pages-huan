package com.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.common.userInfoTable;
import com.bit.service.serviceOfAll;
import com.bit.service.serviceOfPrince2;

public class newUserServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public newUserServlet() {
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
		
		String user_id = request.getParameter("user_id");
		String password = request.getParameter("password");
		String user_type = request.getParameter("user_type");
		String user_row = "1";
		String user_city = request.getParameter("user_city");
		String administor = request.getParameter("administor");
		user_city= new String(user_city .getBytes("ISO8859-1"), "utf-8");
		userInfoTable userInfo = new userInfoTable();
		userInfo.setUser_id(user_id);
		userInfo.setPassword(password);
		userInfo.setUser_type(user_type);
		userInfo.setUser_row(user_row);
		userInfo.setUser_city(user_city);
		userInfo.setAdministor(administor);
		
		try {
			String flagOfNewUser = null;//用于判断用户是否存在；用户存在flagOfNewUser = "1", 新建成功flagOfNewUser = "2";
			if(new serviceOfPrince2().RenameOrNot(user_id)){
				flagOfNewUser="1";//用户已存在
			}
			else if(new serviceOfPrince2().addUser(userInfo)){
				flagOfNewUser="2";//新建成功
			}
			HttpSession session = request.getSession();
			session.setAttribute("flagOfNewUser", flagOfNewUser);
			response.sendRedirect("../province/Sys_usermanage.jsp");

		} catch (Exception e) {
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
