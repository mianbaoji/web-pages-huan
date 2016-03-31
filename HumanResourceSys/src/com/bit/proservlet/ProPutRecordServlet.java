package com.bit.proservlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.common.EnterpriseInfoTable;

public class ProPutRecordServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ProPutRecordServlet() {
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

		String com_area = request.getParameter("com_area");//����
		String com_year = request.getParameter("com_year");//��
		String com_month = request.getParameter("com_month");//��
		
		//service
//		��ǰ�˽��գ�������������(�ꡢ��)
//		����Service: ������������(�ꡢ��)
//		Service���أ���ҵ������������֯�������� ��EnterpriseInfoTable��װ��
//		���ظ�ǰ�ˣ�List<EnterpriseInfoTable>

		List<EnterpriseInfoTable> enterpriseInfoList = null;
		HttpSession session = request.getSession();
		session.setAttribute("enterpriseInfoList", enterpriseInfoList);
		response.sendRedirect("../-----.jsp");
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
