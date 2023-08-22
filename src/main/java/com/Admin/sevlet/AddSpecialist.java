package com.Admin.sevlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DbConnect;
import com.dao.SpacalistDao;
import com.entity.User;

@WebServlet("/addspecialist")
public class AddSpecialist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String  specName = req.getParameter("specName");
	SpacalistDao dao = new SpacalistDao(DbConnect.getConn());
	boolean f = dao.addSpacilist(specName);
	HttpSession session = req.getSession();
	
	if(f) {
		session.setAttribute("sucMsg","Speacilist Added Successfully.");
		resp.sendRedirect("admin/index.jsp");
	}else {
		session.setAttribute("errorMsg","Something Wrong on server.");
		resp.sendRedirect("admin_login.jsp");
	}
	}

}

