package com.bit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.common.EnterpriseInfoTable;
import com.bit.common.userInfoTable;
import com.bit.service.serviceOfEnterprise;

public class modifyEnterpriseInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public modifyEnterpriseInfoServlet() {
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
<<<<<<< HEAD
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
=======
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
>>>>>>> refs/remotes/origin/鐪佺敤鎴风
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
<<<<<<< HEAD
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
=======
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
>>>>>>> refs/remotes/origin/鐪佺敤鎴风
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
<<<<<<< HEAD
		
		String com_id = ((userInfoTable) request.getAttribute("user")).getUser_id();//鑾峰彇浼佷笟id,浣滀负缁勭粐鏈烘瀯鐨刢om_id
		String com_area = request.getParameter("com_area");
		String com_name = request.getParameter("com_name");
		String com_property = request.getParameter("com_property");
		String com_industry = request.getParameter("com_industry");
		String com_business = request.getParameter("com_business");
		String com_people = request.getParameter("com_people");
		String com_address = request.getParameter("com_address");
		String com_postalcode = request.getParameter("com_postalcode");
		String com_tel = request.getParameter("com_tel");
		String com_fax = request.getParameter("com_fax");
		String com_email = request.getParameter("com_email");
		
=======

		HttpSession se = request.getSession();
		String com_id = (String) se.getAttribute("user");// 获取企业id,作为组织机构的com_id
		System.out.print("企业" + com_id);
		String com_area = request.getParameter("com_area");
		com_area= new String(com_area.getBytes("ISO8859-1"), "utf-8");
		String com_name = request.getParameter("com_name");
		com_name= new String(com_name.getBytes("ISO8859-1"), "utf-8");
		String com_property = request.getParameter("com_property");
		com_property= new String(com_property.getBytes("ISO8859-1"), "utf-8");
		String com_industry = request.getParameter("com_industry");
		com_industry= new String(com_industry.getBytes("ISO8859-1"), "utf-8");
		String com_business = request.getParameter("com_business");
		com_business= new String(com_business.getBytes("ISO8859-1"), "utf-8");
		String com_people = request.getParameter("com_people");
		com_people= new String(com_people.getBytes("ISO8859-1"), "utf-8");
		String com_address = request.getParameter("com_address");
		com_address= new String(com_address.getBytes("ISO8859-1"), "utf-8");
		String com_postalcode = request.getParameter("com_postalcode");
		com_postalcode= new String(com_postalcode.getBytes("ISO8859-1"), "utf-8");
		String com_tel = request.getParameter("com_tel");
		com_tel= new String(com_tel.getBytes("ISO8859-1"), "utf-8");
		String com_fax = request.getParameter("com_fax");
		com_fax= new String(com_fax.getBytes("ISO8859-1"), "utf-8");
		String com_email = request.getParameter("com_email");
		com_email= new String(com_email.getBytes("ISO8859-1"), "utf-8");
>>>>>>> refs/remotes/origin/鐪佺敤鎴风
		EnterpriseInfoTable enterpriseInfoTable = new EnterpriseInfoTable();
		enterpriseInfoTable.setCom_id(com_id);
		enterpriseInfoTable.setCom_area(com_area);
		enterpriseInfoTable.setCom_name(com_name);
		enterpriseInfoTable.setCom_property(com_property);
		enterpriseInfoTable.setCom_industry(com_industry);
		enterpriseInfoTable.setCom_business(com_business);
		enterpriseInfoTable.setCom_people(com_people);
		enterpriseInfoTable.setCom_address(com_address);
		enterpriseInfoTable.setCom_postalcode(com_postalcode);
		enterpriseInfoTable.setCom_tel(com_tel);
		enterpriseInfoTable.setCom_fax(com_fax);
		enterpriseInfoTable.setCom_email(com_email);
<<<<<<< HEAD
		
		//service
		try {
			HttpSession session = request.getSession();
			if(new serviceOfEnterprise().modifyEnterpriseInfo(enterpriseInfoTable)){
				session.setAttribute("message", "success");//濡傛灉鏂板鏁版嵁鎴愬姛锛屽垯灏佽涓�涓垚鍔熺殑Session淇″彿
			}
			else{
				session.setAttribute("message", "failed");//濡傛灉鏂板鏁版嵁澶辫触锛屽垯灏佽涓�涓け璐ョ殑Session淇″彿
			}
			response.sendRedirect("../EnterpriseInfo.jsp");//璺宠浆鍥炲師鐣岄潰
=======

		// service
		try {
			HttpSession session = request.getSession();
			if (session.getAttribute("flag") == "true") {
				if (new serviceOfEnterprise()
						.modifyEnterpriseInfo(enterpriseInfoTable)) {
					session.setAttribute("message", "success");// 如果新增数据成功，则封装一个成功的Session信号
				} else {
					session.setAttribute("message", "failed");// 如果新增数据失败，则封装一个失败的Session信号
				}
			}
			else if(session.getAttribute("flag") == "false") 
			{
				if (new serviceOfEnterprise()
				.insertEnterpriseInfo(enterpriseInfoTable)) {
			session.setAttribute("message", "success");// 如果新增数据成功，则封装一个成功的Session信号
		} else {
			session.setAttribute("message", "failed");// 如果新增数据失败，则封装一个失败的Session信号
		}
				
			}
			response.sendRedirect("../enterprise/EnterpriseInfo.jsp");// 跳转回原界面
>>>>>>> refs/remotes/origin/鐪佺敤鎴风
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * Initialization of the servlet. <br>
<<<<<<< HEAD
	 *
	 * @throws ServletException if an error occurs
=======
	 * 
	 * @throws ServletException
	 *             if an error occurs
>>>>>>> refs/remotes/origin/鐪佺敤鎴风
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
