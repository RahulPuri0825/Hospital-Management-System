package com.Admin.sevlet;

import java.io.IOException;

import javax.print.Doc;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DbConnect;
import com.dao.DoctorDao;
import com.entity.Doctor;
@WebServlet("/adddoctor")
public class AddDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
		String fullname = req.getParameter("fullname");
		String dob = req.getParameter("dob");
		String qualification = req.getParameter("qualification");
		String specialist = req.getParameter("spec");
		String email = req.getParameter("email");
		String mobNo = req.getParameter("mob");
		String password = req.getParameter("password");
		
		Doctor d = new Doctor(fullname, dob, qualification, specialist, email, mobNo, password);
		DoctorDao dao = new DoctorDao(DbConnect.getConn());
		HttpSession session = req.getSession();
		if(dao.registerDoctor(d)) {
			session.setAttribute("sucMsg", "Doctor added Successfully.");
		resp.sendRedirect("admin/doctor.jsp");
		}else {
			session.setAttribute("errorMsg", "Somethig wrong on server.");
			resp.sendRedirect("admin/doctor.jsp");
		}
		
		} catch (Exception e) {
		e.printStackTrace();
		}
	}

}
