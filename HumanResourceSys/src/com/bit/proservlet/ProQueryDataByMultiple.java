package com.bit.proservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bit.common.EnterpriseInfoTable;

public class ProQueryDataByMultiple extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ProQueryDataByMultiple() {
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
		String com_id = null;//ÁôªÈôÜË¥¶Âè∑
		String com_area = null;//ÊâÄÂ±ûÂú∞Â∏Ç
		String com_name = null;//Âçï‰ΩçÂêçÁß∞
		String com_property = null;//‰ºÅ‰∏öÊÄßË¥®(Âçï‰ΩçÊÄßË¥®)
		String com_industry = null;//ÊâÄÂ±ûË°å‰∏ö
		//Áî®Êà∑Á±ªÂûãÔºü‚Ä¶‚Ä¶
		Integer com_year = null;//ÁªüËÆ°Âπ¥
		Integer com_month_begin = null;//ÁªüËÆ°ÊúàÂºÄÂßã
		Integer com_month_end = null;//ÁªüËÆ°ÊúàÊà™Ê≠¢
=======
		String com_id = null;//µ«¬Ω’À∫≈
		String com_area = null;//À˘ Ùµÿ –
		String com_name = null;//µ•Œª√˚≥∆
		String com_property = null;//∆Û“µ–‘÷ (µ•Œª–‘÷ )
		String com_industry = null;//À˘ Ù––“µ
		//”√ªß¿‡–Õ£ø°≠°≠
		Integer com_year = null;//Õ≥º∆ƒÍ
		Integer com_month_begin = null;//Õ≥º∆‘¬ø™ º
		Integer com_month_end = null;//Õ≥º∆‘¬Ωÿ÷π
>>>>>>> refs/remotes/origin/ÁúÅÁî®Êà∑Á´Ø
		
		if(request.getParameter("com_id") != ""){
			com_id = request.getParameter("com_id");
		}
		if(request.getParameter("com_area") != ""){
			com_area = request.getParameter("com_area");
		}
		if(request.getParameter("com_name") != ""){
			com_name = request.getParameter("com_name");
		}
		if(request.getParameter("com_property") != ""){
			com_property = request.getParameter("com_property");
		}
		if(request.getParameter("com_industry") != ""){
			com_industry = request.getParameter("com_industry");
		}
		
		if(request.getParameter("com_year") != ""){
			com_year = Integer.valueOf(request.getParameter("com_year"));
		}
		if(request.getParameter("com_month_begin") != ""){
			com_month_begin = Integer.valueOf(request.getParameter("com_month_begin"));
		}
		if(request.getParameter("com_month_end") != ""){
			com_month_end = Integer.valueOf(request.getParameter("com_month_end"));
		}
		
		EnterpriseInfoTable enterpriseInfoTable = new EnterpriseInfoTable();
		enterpriseInfoTable.setCom_id(com_id);
		enterpriseInfoTable.setCom_area(com_area);
		enterpriseInfoTable.setCom_name(com_name);
		enterpriseInfoTable.setCom_property(com_property);
		enterpriseInfoTable.setCom_industry(com_industry);

//		service
//		enterpriseInfoTable
//		com_year
//		com_month_begin
//		com_month_end
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
