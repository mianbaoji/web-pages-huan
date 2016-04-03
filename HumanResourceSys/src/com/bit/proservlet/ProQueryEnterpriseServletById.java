package com.bit.proservlet;

import java.io.IOException;
import java.nio.channels.SeekableByteChannel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bit.common.EnterpriseInfoTable;
import com.bit.service.serviceOfPrince2;

/**
 * Servlet implementation class ProQueryEnterpriseServletById
 */
@WebServlet("/ProQueryEnterpriseServletById")
public class ProQueryEnterpriseServletById extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProQueryEnterpriseServletById() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String Com_id = request.getParameter("Com_id");
		
		//EnterpriseInfoTable ent = new EnterpriseInfoTable();
		//if(!Com_id.equals("")){
		//	ent.setCom_id(Com_id);
		//}
		EnterpriseInfoTable entReturn = new serviceOfPrince2().queryEnterpriseRecordById(Com_id);
		HttpSession session = request.getSession();
		session.setAttribute("entReturnProQuery", entReturn);
		response.sendRedirect("../province/Enterprise_Record_ById.jsp");

		
	}

}
