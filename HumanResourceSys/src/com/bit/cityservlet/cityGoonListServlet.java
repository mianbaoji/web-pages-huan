package com.bit.cityservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.service.serviceOfCity;

/**
 * Servlet implementation class cityGoonListServlet
 */
@WebServlet("/cityGoonListServlet")
public class cityGoonListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public cityGoonListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String table_id = request.getParameter("table_id");// 企业ID
		
		Boolean flag = new serviceOfCity().dataStatusGoonForCity(table_id, "已上报");
		HttpSession session = request.getSession();
		session.setAttribute("flag_ListProQueryEnt", "0");
		response.sendRedirect("../city/City_ListManage.jsp");
		
		// TODO Auto-generated method stub
	}

}
