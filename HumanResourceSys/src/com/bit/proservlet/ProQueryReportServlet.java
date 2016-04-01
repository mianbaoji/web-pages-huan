package com.bit.proservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.common.EnterpriseInfoTable;

public class ProQueryReportServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ProQueryReportServlet() {
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
		String com_id = request.getParameter("com_id");//‰ºÅ‰∏öID
		String com_name = request.getParameter("com_name");//‰ºÅ‰∏öÂêçÁß∞
		String com_year = request.getParameter("com_year");//Âπ¥
		String com_month = request.getParameter("com_month");//Êúà
		
		//service
//		Javabean: EnterpriseDataTable
//			‰ªéÂâçÁ´ØÊé•Êî∂Ôºö‰ºÅ‰∏öÂêçÁß∞„ÄÅ‰ºÅ‰∏öID„ÄÅÁî≥Êä•Êó∂Èó¥ÔºàÂπ¥„ÄÅÊúàÔºâ
//			‰º†ÁªôService: ‰ºÅ‰∏öÂêçÁß∞„ÄÅ‰ºÅ‰∏öID„ÄÅÁî≥Êä•Êó∂Èó¥ÔºàÂπ¥„ÄÅÊúàÔºâ
//			ServiceËøîÂõûÔºöEnterpriseDataTable
//			ËøîÂõûÁªôÂâçÁ´ØÔºöEnterpriseDataTable
=======
		String com_id = request.getParameter("com_id");//∆Û“µID
		String com_name = request.getParameter("com_name");//∆Û“µ√˚≥∆
		String com_year = request.getParameter("com_year");//ƒÍ
		String com_month = request.getParameter("com_month");//‘¬
		
		//service
//		Javabean: EnterpriseDataTable
//			¥”«∞∂ÀΩ” ’£∫∆Û“µ√˚≥∆°¢∆Û“µID°¢…Í±® ±º‰£®ƒÍ°¢‘¬£©
//			¥´∏¯Service: ∆Û“µ√˚≥∆°¢∆Û“µID°¢…Í±® ±º‰£®ƒÍ°¢‘¬£©
//			Service∑µªÿ£∫EnterpriseDataTable
//			∑µªÿ∏¯«∞∂À£∫EnterpriseDataTable
>>>>>>> refs/remotes/origin/ÁúÅÁî®Êà∑Á´Ø
		
		
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
